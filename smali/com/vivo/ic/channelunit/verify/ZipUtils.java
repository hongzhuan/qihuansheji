package com.vivo.ic.channelunit.verify;

import com.vivo.ic.channelunit.Pair;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class ZipUtils
{
  private static final int UINT16_MAX_VALUE = 65535;
  private static final int ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER = 1347094023;
  private static final int ZIP64_EOCD_LOCATOR_SIZE = 20;
  private static final int ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET = 16;
  private static final int ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET = 12;
  private static final int ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET = 20;
  public static final int ZIP_EOCD_REC_MIN_SIZE = 22;
  private static final int ZIP_EOCD_REC_SIG = 101010256;
  
  public static void assertByteOrderLittleEndian(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
  }
  
  private static int findZipEndOfCentralDirectoryRecord(ByteBuffer paramByteBuffer)
  {
    assertByteOrderLittleEndian(paramByteBuffer);
    int j = paramByteBuffer.capacity();
    if (j < 22) {}
    for (;;)
    {
      return -1;
      int k = Math.min(j - 22, 65535);
      int i = 0;
      while (i < k)
      {
        int m = j - 22 - i;
        if ((paramByteBuffer.getInt(m) == 101010256) && (getUnsignedInt16(paramByteBuffer, m + 20) == i)) {
          return m;
        }
        i += 1;
      }
    }
  }
  
  static Pair findZipEndOfCentralDirectoryRecord(RandomAccessFile paramRandomAccessFile)
  {
    Object localObject;
    if (paramRandomAccessFile.length() < 22L) {
      localObject = null;
    }
    Pair localPair;
    do
    {
      return localObject;
      localPair = findZipEndOfCentralDirectoryRecord(paramRandomAccessFile, 0);
      localObject = localPair;
    } while (localPair != null);
    return findZipEndOfCentralDirectoryRecord(paramRandomAccessFile, 65535);
  }
  
  private static Pair findZipEndOfCentralDirectoryRecord(RandomAccessFile paramRandomAccessFile, int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 65535)) {
      throw new IllegalArgumentException("maxCommentSize: " + paramInt);
    }
    long l = paramRandomAccessFile.length();
    if (l < 22L) {}
    ByteBuffer localByteBuffer;
    do
    {
      return null;
      localByteBuffer = ByteBuffer.allocate((int)Math.min(paramInt, l - 22L) + 22);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      l -= localByteBuffer.capacity();
      paramRandomAccessFile.seek(l);
      paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
      paramInt = findZipEndOfCentralDirectoryRecord(localByteBuffer);
    } while (paramInt == -1);
    localByteBuffer.position(paramInt);
    paramRandomAccessFile = localByteBuffer.slice();
    paramRandomAccessFile.order(ByteOrder.LITTLE_ENDIAN);
    return Pair.create(paramRandomAccessFile, Long.valueOf(l + paramInt));
  }
  
  public static int getUnsignedInt16(ByteBuffer paramByteBuffer, int paramInt)
  {
    return paramByteBuffer.getShort(paramInt) & 0xFFFF;
  }
  
  public static long getUnsignedInt32(ByteBuffer paramByteBuffer, int paramInt)
  {
    return paramByteBuffer.getInt(paramInt) & 0xFFFFFFFF;
  }
  
  public static long getZipEocdCentralDirectoryOffset(ByteBuffer paramByteBuffer)
  {
    assertByteOrderLittleEndian(paramByteBuffer);
    return getUnsignedInt32(paramByteBuffer, paramByteBuffer.position() + 16);
  }
  
  public static long getZipEocdCentralDirectorySizeBytes(ByteBuffer paramByteBuffer)
  {
    assertByteOrderLittleEndian(paramByteBuffer);
    return getUnsignedInt32(paramByteBuffer, paramByteBuffer.position() + 12);
  }
  
  public static final boolean isZip64EndOfCentralDirectoryLocatorPresent(RandomAccessFile paramRandomAccessFile, long paramLong)
  {
    paramLong -= 20L;
    if (paramLong < 0L) {}
    do
    {
      return false;
      paramRandomAccessFile.seek(paramLong);
    } while (paramRandomAccessFile.readInt() != 1347094023);
    return true;
  }
  
  private static void setUnsignedInt32(ByteBuffer paramByteBuffer, int paramInt, long paramLong)
  {
    if ((paramLong < 0L) || (paramLong > 4294967295L)) {
      throw new IllegalArgumentException("uint32 value of out range: " + paramLong);
    }
    paramByteBuffer.putInt(paramByteBuffer.position() + paramInt, (int)paramLong);
  }
  
  public static void setZipEocdCentralDirectoryOffset(ByteBuffer paramByteBuffer, long paramLong)
  {
    assertByteOrderLittleEndian(paramByteBuffer);
    setUnsignedInt32(paramByteBuffer, paramByteBuffer.position() + 16, paramLong);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.verify.ZipUtils
 * JD-Core Version:    0.7.0.1
 */