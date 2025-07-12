package com.vivo.ic.channelunit.verify;

import com.vivo.ic.channelunit.Pair;
import com.vivo.ic.channelunit.item.V2ChannelBlock;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;

public class ApkSignatureSchemeV2Verifier
{
  public static final int APK_SIGNATURE_SCHEME_V2_BLOCK_ID = 1896449818;
  public static final long APK_SIG_BLOCK_MAGIC_HI = 3617552046287187010L;
  public static final long APK_SIG_BLOCK_MAGIC_LO = 2334950737559900225L;
  private static final int APK_SIG_BLOCK_MIN_SIZE = 32;
  private static final int CHUNK_SIZE_BYTES = 1048576;
  private static final int CONTENT_DIGEST_CHUNKED_SHA256 = 1;
  private static final int CONTENT_DIGEST_CHUNKED_SHA512 = 2;
  public static final int SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID = 2;
  public static final String SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME = "X-Android-APK-Signed";
  private static final int SIGNATURE_DSA_WITH_SHA256 = 769;
  private static final int SIGNATURE_ECDSA_WITH_SHA256 = 513;
  private static final int SIGNATURE_ECDSA_WITH_SHA512 = 514;
  private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256 = 259;
  private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512 = 260;
  private static final int SIGNATURE_RSA_PSS_WITH_SHA256 = 257;
  private static final int SIGNATURE_RSA_PSS_WITH_SHA512 = 258;
  
  public static void checkByteOrderLittleEndian(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
  }
  
  private static int compareContentDigestAlgorithm(int paramInt1, int paramInt2)
  {
    int i = 0;
    switch (paramInt1)
    {
    default: 
      throw new IllegalArgumentException("Unknown digestAlgorithm1: " + paramInt1);
    case 1: 
      paramInt1 = i;
      switch (paramInt2)
      {
      default: 
        throw new IllegalArgumentException("Unknown digestAlgorithm2: " + paramInt2);
      case 2: 
        paramInt1 = -1;
      }
      return paramInt1;
    }
    paramInt1 = i;
    switch (paramInt2)
    {
    case 2: 
    default: 
      throw new IllegalArgumentException("Unknown digestAlgorithm2: " + paramInt2);
    }
    return 1;
  }
  
  private static int compareSignatureAlgorithm(int paramInt1, int paramInt2)
  {
    return compareContentDigestAlgorithm(getSignatureAlgorithmContentDigestAlgorithm(paramInt1), getSignatureAlgorithmContentDigestAlgorithm(paramInt2));
  }
  
  private static ByteBuffer findApkSignatureSchemeV2Block(ByteBuffer paramByteBuffer)
  {
    checkByteOrderLittleEndian(paramByteBuffer);
    paramByteBuffer = sliceFromTo(paramByteBuffer, 8, paramByteBuffer.capacity() - 24);
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      i += 1;
      if (paramByteBuffer.remaining() < 8) {
        throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i);
      }
      long l = paramByteBuffer.getLong();
      if ((l < 4L) || (l > 2147483647L)) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + l);
      }
      int j = (int)l;
      int k = paramByteBuffer.position();
      if (j > paramByteBuffer.remaining()) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + j + ", available: " + paramByteBuffer.remaining());
      }
      if (paramByteBuffer.getInt() == 1896449818) {
        return getByteBuffer(paramByteBuffer, j - 4);
      }
      paramByteBuffer.position(k + j);
    }
    throw new SignatureNotFoundException("No APK Signature Scheme v2 block in APK Signing Block");
  }
  
  public static Pair findApkSigningBlock(RandomAccessFile paramRandomAccessFile, long paramLong)
  {
    if (paramLong < 32L) {
      throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + paramLong);
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocate(24);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong - localByteBuffer.capacity());
    paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
    if ((localByteBuffer.getLong(8) != 2334950737559900225L) || (localByteBuffer.getLong(16) != 3617552046287187010L)) {
      throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
    }
    long l1 = localByteBuffer.getLong(0);
    if ((l1 < localByteBuffer.capacity()) || (l1 > 2147483639L)) {
      throw new SignatureNotFoundException("APK Signing Block size out of range: " + l1);
    }
    int i = (int)(8L + l1);
    paramLong -= i;
    if (paramLong < 0L) {
      throw new SignatureNotFoundException("APK Signing Block offset out of range: " + paramLong);
    }
    localByteBuffer = ByteBuffer.allocate(i);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong);
    paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
    long l2 = localByteBuffer.getLong(0);
    if (l2 != l1) {
      throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + l2 + " vs " + l1);
    }
    return Pair.create(localByteBuffer, Long.valueOf(paramLong));
  }
  
  public static V2ChannelBlock findApkValueBlock(RandomAccessFile paramRandomAccessFile, long paramLong, int paramInt)
  {
    V2ChannelBlock localV2ChannelBlock = new V2ChannelBlock();
    if (paramLong < 32L) {
      throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + paramLong);
    }
    ByteBuffer localByteBuffer1 = ByteBuffer.allocate(24);
    localByteBuffer1.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong - localByteBuffer1.capacity());
    paramRandomAccessFile.readFully(localByteBuffer1.array(), localByteBuffer1.arrayOffset(), localByteBuffer1.capacity());
    if ((localByteBuffer1.getLong(8) != 2334950737559900225L) || (localByteBuffer1.getLong(16) != 3617552046287187010L)) {
      throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
    }
    long l2 = localByteBuffer1.getLong(0);
    if ((l2 < localByteBuffer1.capacity()) || (l2 > 2147483639L)) {
      throw new SignatureNotFoundException("APK Signing Block size out of range: " + l2);
    }
    long l1 = paramLong - (int)(8L + l2);
    if (l1 < 0L) {
      throw new SignatureNotFoundException("APK Signing Block offset out of range: " + l1);
    }
    localV2ChannelBlock.mV2SchemeOffset = l1;
    localByteBuffer1 = ByteBuffer.allocate(12);
    localByteBuffer1.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(l1);
    paramRandomAccessFile.readFully(localByteBuffer1.array(), localByteBuffer1.arrayOffset(), localByteBuffer1.capacity());
    long l3 = localByteBuffer1.getLong(0);
    if (l3 != l2) {
      throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + l3 + " vs " + l2);
    }
    for (l1 += 8L;; l1 += l3 + 8L)
    {
      if (l1 <= paramLong)
      {
        localByteBuffer1.clear();
        paramRandomAccessFile.seek(l1);
        paramRandomAccessFile.readFully(localByteBuffer1.array(), localByteBuffer1.arrayOffset(), localByteBuffer1.capacity());
        l3 = localByteBuffer1.getLong();
        if (localByteBuffer1.getInt() != paramInt) {
          continue;
        }
        localV2ChannelBlock.mChannelBlockOffset = l1;
        if (1896449818 != paramInt) {}
      }
      else
      {
        return localV2ChannelBlock;
      }
      ByteBuffer localByteBuffer2 = ByteBuffer.allocate((int)(l3 - 4L));
      localByteBuffer1.order(ByteOrder.LITTLE_ENDIAN);
      paramRandomAccessFile.seek(l1 + 12L);
      paramRandomAccessFile.readFully(localByteBuffer2.array(), localByteBuffer2.arrayOffset(), localByteBuffer2.capacity());
      localV2ChannelBlock.mChannelinfo = new String(localByteBuffer2.array());
      localV2ChannelBlock.mChannelBlockLen = (8L + l3);
      localV2ChannelBlock.mV2BlockLen = (l2 - localV2ChannelBlock.mChannelBlockLen);
      localV2ChannelBlock.mCentralDirOffsetFix = ((int)(paramLong - localV2ChannelBlock.mChannelBlockLen));
      return localV2ChannelBlock;
    }
  }
  
  private static SignatureInfo findSignature(RandomAccessFile paramRandomAccessFile)
  {
    Object localObject = getEocd(paramRandomAccessFile);
    ByteBuffer localByteBuffer = (ByteBuffer)((Pair)localObject).getFirst();
    long l1 = ((Long)((Pair)localObject).getSecond()).longValue();
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramRandomAccessFile, l1)) {
      throw new SignatureNotFoundException("ZIP64 APK not supported");
    }
    long l2 = getCentralDirOffset(localByteBuffer, l1);
    paramRandomAccessFile = findApkSigningBlock(paramRandomAccessFile, l2);
    localObject = (ByteBuffer)paramRandomAccessFile.getFirst();
    long l3 = ((Long)paramRandomAccessFile.getSecond()).longValue();
    return new SignatureInfo(findApkSignatureSchemeV2Block((ByteBuffer)localObject), l3, l2, l1, localByteBuffer, null);
  }
  
  public static ByteBuffer getByteBuffer(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("size: " + paramInt);
    }
    int i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    paramInt = j + paramInt;
    if ((paramInt < j) || (paramInt > i)) {
      throw new BufferUnderflowException();
    }
    paramByteBuffer.limit(paramInt);
    try
    {
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      paramByteBuffer.position(paramInt);
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.limit(i);
    }
  }
  
  public static long getCentralDirOffset(ByteBuffer paramByteBuffer, long paramLong)
  {
    long l = ZipUtils.getZipEocdCentralDirectoryOffset(paramByteBuffer);
    if (l >= paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory offset out of range: " + l + ". ZIP End of Central Directory offset: " + paramLong);
    }
    if (ZipUtils.getZipEocdCentralDirectorySizeBytes(paramByteBuffer) + l != paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory is not immediately followed by End of Central Directory");
    }
    return l;
  }
  
  private static final long getChunkCount(long paramLong)
  {
    return (paramLong + 1048576L - 1L) / 1048576L;
  }
  
  private static String getContentDigestAlgorithmJcaDigestAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown content digest algorthm: " + paramInt);
    case 1: 
      return "SHA-256";
    }
    return "SHA-512";
  }
  
  private static int getContentDigestAlgorithmOutputSizeBytes(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown content digest algorthm: " + paramInt);
    case 1: 
      return 32;
    }
    return 64;
  }
  
  public static Pair getEocd(RandomAccessFile paramRandomAccessFile)
  {
    paramRandomAccessFile = ZipUtils.findZipEndOfCentralDirectoryRecord(paramRandomAccessFile);
    if (paramRandomAccessFile == null) {
      throw new SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }
    return paramRandomAccessFile;
  }
  
  private static ByteBuffer getLengthPrefixedSlice(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.remaining() < 4) {
      throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + paramByteBuffer.remaining());
    }
    int i = paramByteBuffer.getInt();
    if (i < 0) {
      throw new IllegalArgumentException("Negative length");
    }
    if (i > paramByteBuffer.remaining()) {
      throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i + ", remaining: " + paramByteBuffer.remaining());
    }
    return getByteBuffer(paramByteBuffer, i);
  }
  
  private static int getSignatureAlgorithmContentDigestAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
    case 259: 
    case 513: 
    case 769: 
      return 1;
    }
    return 2;
  }
  
  private static String getSignatureAlgorithmJcaKeyAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
    case 258: 
    case 259: 
    case 260: 
      return "RSA";
    case 513: 
    case 514: 
      return "EC";
    }
    return "DSA";
  }
  
  private static Pair getSignatureAlgorithmJcaSignatureAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
      return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
    case 258: 
      return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
    case 259: 
      return Pair.create("SHA256withRSA", null);
    case 260: 
      return Pair.create("SHA512withRSA", null);
    case 513: 
      return Pair.create("SHA256withECDSA", null);
    case 514: 
      return Pair.create("SHA512withECDSA", null);
    }
    return Pair.create("SHA256withDSA", null);
  }
  
  public static boolean hasSignature(String paramString)
  {
    try
    {
      findSignature(new RandomAccessFile(paramString, "r"));
      return true;
    }
    catch (SignatureNotFoundException paramString) {}
    return false;
  }
  
  private static boolean isSupportedSignatureAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private static byte[] readLengthPrefixedByteArray(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.getInt();
    if (i < 0) {
      throw new IOException("Negative length");
    }
    if (i > paramByteBuffer.remaining()) {
      throw new IOException("Underflow while reading length-prefixed value. Length: " + i + ", available: " + paramByteBuffer.remaining());
    }
    byte[] arrayOfByte = new byte[i];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  private static void setUnsignedInt32LittleEndian(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16 & 0xFF));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24 & 0xFF));
  }
  
  public static ByteBuffer sliceFromTo(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("start: " + paramInt1);
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("end < start: " + paramInt2 + " < " + paramInt1);
    }
    int i = paramByteBuffer.capacity();
    if (paramInt2 > paramByteBuffer.capacity()) {
      throw new IllegalArgumentException("end > capacity: " + paramInt2 + " > " + i);
    }
    i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    try
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(paramInt2);
      paramByteBuffer.position(paramInt1);
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(i);
      paramByteBuffer.position(j);
    }
  }
  
  private static class SignatureInfo
  {
    private final long apkSigningBlockOffset;
    private final long centralDirOffset;
    private final ByteBuffer eocd;
    private final long eocdOffset;
    private final ByteBuffer signatureBlock;
    
    private SignatureInfo(ByteBuffer paramByteBuffer1, long paramLong1, long paramLong2, long paramLong3, ByteBuffer paramByteBuffer2)
    {
      this.signatureBlock = paramByteBuffer1;
      this.apkSigningBlockOffset = paramLong1;
      this.centralDirOffset = paramLong2;
      this.eocdOffset = paramLong3;
      this.eocd = paramByteBuffer2;
    }
  }
  
  public static class SignatureNotFoundException
    extends Exception
  {
    private static final long serialVersionUID = 1L;
    
    public SignatureNotFoundException(String paramString)
    {
      super();
    }
    
    public SignatureNotFoundException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier
 * JD-Core Version:    0.7.0.1
 */