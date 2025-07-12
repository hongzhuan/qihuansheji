package com.vivo.ic.channelreader;

import com.vivo.ic.channelunit.ChannelConstants;
import com.vivo.ic.channelunit.Pair;
import com.vivo.ic.channelunit.item.ChannalInfo;
import com.vivo.ic.channelunit.item.V1ChannelComment;
import com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier;
import com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.vivo.ic.channelunit.verify.ZipUtils;
import java.io.DataInput;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public class V1ChannelReader
{
  public static boolean containV1Signature(File paramFile)
  {
    for (;;)
    {
      try
      {
        paramFile = new JarFile(paramFile);
        JarEntry localJarEntry1 = paramFile.getJarEntry("META-INF/MANIFEST.MF");
        Enumeration localEnumeration = paramFile.entries();
        if (!localEnumeration.hasMoreElements()) {
          break label78;
        }
        JarEntry localJarEntry2 = (JarEntry)localEnumeration.nextElement();
        if (!localJarEntry2.getName().matches("META-INF/\\w+\\.SF")) {
          continue;
        }
        paramFile = paramFile.getJarEntry(localJarEntry2.getName());
        if ((localJarEntry1 != null) && (paramFile != null)) {
          return true;
        }
      }
      catch (IOException paramFile)
      {
        paramFile.printStackTrace();
      }
      return false;
      label78:
      paramFile = null;
    }
  }
  
  public static Long getChannelFileMD5Hash(File paramFile, ChannalInfo paramChannalInfo)
  {
    if (!(paramChannalInfo instanceof V1ChannelComment)) {
      return null;
    }
    V1ChannelComment localV1ChannelComment = (V1ChannelComment)paramChannalInfo;
    paramChannalInfo = null;
    long l2;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      paramChannalInfo = localMessageDigest;
      paramFile = new RandomAccessFile(paramFile, "r");
      paramChannalInfo = localMessageDigest;
      readPart(paramFile, 0L, localV1ChannelComment.mCommentAreaOffset, localMessageDigest);
      paramChannalInfo = localMessageDigest;
      ByteBuffer localByteBuffer = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN);
      paramChannalInfo = localMessageDigest;
      localByteBuffer.putShort(localV1ChannelComment.mOriginCommentLen);
      paramChannalInfo = localMessageDigest;
      localMessageDigest.update(localByteBuffer.array(), 0, 2);
      paramChannalInfo = localMessageDigest;
      readPart(paramFile, localV1ChannelComment.mCommentAreaOffset + 2L, paramFile.length() - localV1ChannelComment.mChannel.length() - 2L - ChannelConstants.V1_MAGIC.length, localMessageDigest);
      paramChannalInfo = localMessageDigest;
      paramFile.close();
      paramChannalInfo = localMessageDigest;
    }
    catch (Exception paramFile)
    {
      for (;;)
      {
        paramFile.printStackTrace();
      }
      int i = 8;
      l2 = 0L;
      while (i < paramFile.length())
      {
        l2 = l2 * 16L + Integer.parseInt(paramFile.substring(i, i + 1), 16);
        i += 1;
      }
    }
    paramFile = new BigInteger(1, paramChannalInfo.digest()).toString(16).substring(8, 24);
    i = 0;
    for (long l1 = 0L; i < 8; l1 = 16L * l1 + l2)
    {
      l2 = Integer.parseInt(paramFile.substring(i, i + 1), 16);
      i += 1;
    }
    return new Long(l2 + l1 & 0xFFFFFFFF);
  }
  
  public static Pair getEocd(File paramFile)
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    paramFile = new RandomAccessFile(paramFile, "r");
    Pair localPair = ApkSignatureSchemeV2Verifier.getEocd(paramFile);
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramFile, ((Long)localPair.getSecond()).longValue())) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    return localPair;
  }
  
  public static boolean isV1MagicMatch(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != ChannelConstants.V1_MAGIC.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= ChannelConstants.V1_MAGIC.length) {
        break label39;
      }
      if (paramArrayOfByte[i] != ChannelConstants.V1_MAGIC[i]) {
        break;
      }
      i += 1;
    }
    label39:
    return true;
  }
  
  /* Error */
  public static V1ChannelComment readChannel(File paramFile, String paramString)
  {
    // Byte code:
    //   0: new 61	com/vivo/ic/channelunit/item/V1ChannelComment
    //   3: dup
    //   4: invokespecial 211	com/vivo/ic/channelunit/item/V1ChannelComment:<init>	()V
    //   7: astore 7
    //   9: aload 7
    //   11: aload_1
    //   12: putfield 214	com/vivo/ic/channelunit/item/V1ChannelComment:mPkg	Ljava/lang/String;
    //   15: aload_0
    //   16: invokestatic 216	com/vivo/ic/channelreader/V1ChannelReader:getEocd	(Ljava/io/File;)Lcom/vivo/ic/channelunit/Pair;
    //   19: astore_1
    //   20: aload_1
    //   21: ifnull +348 -> 369
    //   24: aload 7
    //   26: aload_1
    //   27: invokevirtual 190	com/vivo/ic/channelunit/Pair:getSecond	()Ljava/lang/Object;
    //   30: checkcast 165	java/lang/Long
    //   33: invokevirtual 193	java/lang/Long:longValue	()J
    //   36: ldc2_w 217
    //   39: ladd
    //   40: putfield 80	com/vivo/ic/channelunit/item/V1ChannelComment:mCommentAreaOffset	J
    //   43: aload_1
    //   44: invokevirtual 221	com/vivo/ic/channelunit/Pair:getFirst	()Ljava/lang/Object;
    //   47: checkcast 86	java/nio/ByteBuffer
    //   50: astore_1
    //   51: aload_1
    //   52: bipush 20
    //   54: invokevirtual 225	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   57: pop
    //   58: aload_1
    //   59: invokevirtual 229	java/nio/ByteBuffer:getShort	()S
    //   62: istore_2
    //   63: new 71	java/io/RandomAccessFile
    //   66: dup
    //   67: aload_0
    //   68: ldc 73
    //   70: invokespecial 76	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   73: astore_1
    //   74: aload_1
    //   75: astore_0
    //   76: aload_1
    //   77: invokevirtual 122	java/io/RandomAccessFile:length	()J
    //   80: lstore 4
    //   82: aload_1
    //   83: astore_0
    //   84: getstatic 135	com/vivo/ic/channelunit/ChannelConstants:V1_MAGIC	[B
    //   87: arraylength
    //   88: newarray byte
    //   90: astore 8
    //   92: aload_1
    //   93: astore_0
    //   94: lload 4
    //   96: getstatic 135	com/vivo/ic/channelunit/ChannelConstants:V1_MAGIC	[B
    //   99: arraylength
    //   100: i2l
    //   101: lsub
    //   102: lstore 4
    //   104: aload_1
    //   105: astore_0
    //   106: aload_1
    //   107: lload 4
    //   109: invokevirtual 232	java/io/RandomAccessFile:seek	(J)V
    //   112: aload_1
    //   113: astore_0
    //   114: aload_1
    //   115: aload 8
    //   117: invokevirtual 236	java/io/RandomAccessFile:readFully	([B)V
    //   120: aload_1
    //   121: astore 6
    //   123: aload_1
    //   124: astore_0
    //   125: aload 8
    //   127: invokestatic 238	com/vivo/ic/channelreader/V1ChannelReader:isV1MagicMatch	([B)Z
    //   130: ifeq +105 -> 235
    //   133: lload 4
    //   135: ldc2_w 117
    //   138: lsub
    //   139: lstore 4
    //   141: aload_1
    //   142: astore_0
    //   143: aload_1
    //   144: lload 4
    //   146: invokevirtual 232	java/io/RandomAccessFile:seek	(J)V
    //   149: aload_1
    //   150: astore_0
    //   151: aload_1
    //   152: invokestatic 242	com/vivo/ic/channelreader/V1ChannelReader:readShort	(Ljava/io/DataInput;)S
    //   155: istore_3
    //   156: aload_1
    //   157: astore 6
    //   159: iload_3
    //   160: ifle +75 -> 235
    //   163: aload_1
    //   164: astore_0
    //   165: aload_1
    //   166: lload 4
    //   168: iload_3
    //   169: i2l
    //   170: lsub
    //   171: invokevirtual 232	java/io/RandomAccessFile:seek	(J)V
    //   174: aload_1
    //   175: astore_0
    //   176: iload_3
    //   177: newarray byte
    //   179: astore 6
    //   181: aload_1
    //   182: astore_0
    //   183: aload_1
    //   184: aload 6
    //   186: invokevirtual 236	java/io/RandomAccessFile:readFully	([B)V
    //   189: aload_1
    //   190: astore_0
    //   191: aload 7
    //   193: new 48	java/lang/String
    //   196: dup
    //   197: aload 6
    //   199: ldc 244
    //   201: invokespecial 247	java/lang/String:<init>	([BLjava/lang/String;)V
    //   204: putfield 126	com/vivo/ic/channelunit/item/V1ChannelComment:mChannel	Ljava/lang/String;
    //   207: aload_1
    //   208: astore_0
    //   209: aload 7
    //   211: iload_2
    //   212: aload 7
    //   214: getfield 126	com/vivo/ic/channelunit/item/V1ChannelComment:mChannel	Ljava/lang/String;
    //   217: invokevirtual 129	java/lang/String:length	()I
    //   220: isub
    //   221: iconst_2
    //   222: isub
    //   223: getstatic 135	com/vivo/ic/channelunit/ChannelConstants:V1_MAGIC	[B
    //   226: arraylength
    //   227: isub
    //   228: i2s
    //   229: putfield 104	com/vivo/ic/channelunit/item/V1ChannelComment:mOriginCommentLen	S
    //   232: aload_1
    //   233: astore 6
    //   235: aload 6
    //   237: ifnull +8 -> 245
    //   240: aload 6
    //   242: invokevirtual 138	java/io/RandomAccessFile:close	()V
    //   245: aload 7
    //   247: areturn
    //   248: astore_0
    //   249: aload_0
    //   250: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   253: aload 7
    //   255: areturn
    //   256: astore 6
    //   258: aconst_null
    //   259: astore_1
    //   260: aload_1
    //   261: astore_0
    //   262: aload 6
    //   264: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   267: aload_1
    //   268: astore_0
    //   269: aload 7
    //   271: aload 6
    //   273: putfield 251	com/vivo/ic/channelunit/item/V1ChannelComment:mException	Ljava/lang/Exception;
    //   276: aload_1
    //   277: ifnull -32 -> 245
    //   280: aload_1
    //   281: invokevirtual 138	java/io/RandomAccessFile:close	()V
    //   284: aload 7
    //   286: areturn
    //   287: astore_0
    //   288: aload_0
    //   289: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   292: aload 7
    //   294: areturn
    //   295: astore 6
    //   297: aconst_null
    //   298: astore_1
    //   299: aload_1
    //   300: astore_0
    //   301: aload 6
    //   303: invokevirtual 252	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException:printStackTrace	()V
    //   306: aload_1
    //   307: astore_0
    //   308: aload 7
    //   310: aload 6
    //   312: putfield 251	com/vivo/ic/channelunit/item/V1ChannelComment:mException	Ljava/lang/Exception;
    //   315: aload_1
    //   316: ifnull -71 -> 245
    //   319: aload_1
    //   320: invokevirtual 138	java/io/RandomAccessFile:close	()V
    //   323: aload 7
    //   325: areturn
    //   326: astore_0
    //   327: aload_0
    //   328: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   331: aload 7
    //   333: areturn
    //   334: astore_1
    //   335: aconst_null
    //   336: astore_0
    //   337: aload_0
    //   338: ifnull +7 -> 345
    //   341: aload_0
    //   342: invokevirtual 138	java/io/RandomAccessFile:close	()V
    //   345: aload_1
    //   346: athrow
    //   347: astore_0
    //   348: aload_0
    //   349: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   352: goto -7 -> 345
    //   355: astore_1
    //   356: goto -19 -> 337
    //   359: astore 6
    //   361: goto -62 -> 299
    //   364: astore 6
    //   366: goto -106 -> 260
    //   369: aconst_null
    //   370: astore 6
    //   372: goto -137 -> 235
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	375	0	paramFile	File
    //   0	375	1	paramString	String
    //   62	159	2	i	int
    //   155	22	3	j	int
    //   80	87	4	l	long
    //   121	120	6	localObject1	Object
    //   256	16	6	localIOException1	IOException
    //   295	16	6	localSignatureNotFoundException1	ApkSignatureSchemeV2Verifier.SignatureNotFoundException
    //   359	1	6	localSignatureNotFoundException2	ApkSignatureSchemeV2Verifier.SignatureNotFoundException
    //   364	1	6	localIOException2	IOException
    //   370	1	6	localObject2	Object
    //   7	325	7	localV1ChannelComment	V1ChannelComment
    //   90	36	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   240	245	248	java/io/IOException
    //   15	20	256	java/io/IOException
    //   24	74	256	java/io/IOException
    //   280	284	287	java/io/IOException
    //   15	20	295	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   24	74	295	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   319	323	326	java/io/IOException
    //   15	20	334	finally
    //   24	74	334	finally
    //   341	345	347	java/io/IOException
    //   76	82	355	finally
    //   84	92	355	finally
    //   94	104	355	finally
    //   106	112	355	finally
    //   114	120	355	finally
    //   125	133	355	finally
    //   143	149	355	finally
    //   151	156	355	finally
    //   165	174	355	finally
    //   176	181	355	finally
    //   183	189	355	finally
    //   191	207	355	finally
    //   209	232	355	finally
    //   262	267	355	finally
    //   269	276	355	finally
    //   301	306	355	finally
    //   308	315	355	finally
    //   76	82	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   84	92	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   94	104	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   106	112	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   114	120	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   125	133	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   143	149	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   151	156	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   165	174	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   176	181	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   183	189	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   191	207	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   209	232	359	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   76	82	364	java/io/IOException
    //   84	92	364	java/io/IOException
    //   94	104	364	java/io/IOException
    //   106	112	364	java/io/IOException
    //   114	120	364	java/io/IOException
    //   125	133	364	java/io/IOException
    //   143	149	364	java/io/IOException
    //   151	156	364	java/io/IOException
    //   165	174	364	java/io/IOException
    //   176	181	364	java/io/IOException
    //   183	189	364	java/io/IOException
    //   191	207	364	java/io/IOException
    //   209	232	364	java/io/IOException
  }
  
  private static long readPart(RandomAccessFile paramRandomAccessFile, long paramLong1, long paramLong2, MessageDigest paramMessageDigest)
  {
    long l2 = 0L;
    paramRandomAccessFile.seek(paramLong1);
    int i;
    if (paramLong2 - paramLong1 <= 1024L)
    {
      arrayOfByte = new byte[(int)(paramLong2 - paramLong1)];
      i = paramRandomAccessFile.read(arrayOfByte, 0, (int)(paramLong2 - paramLong1));
      paramMessageDigest.update(arrayOfByte, 0, i);
      l2 = i;
      return l2;
    }
    byte[] arrayOfByte = new byte[1024];
    long l1 = paramLong1;
    paramLong1 = l2;
    long l3;
    do
    {
      do
      {
        i = paramRandomAccessFile.read(arrayOfByte, 0, 1024);
        l2 = paramLong1;
        if (i == -1) {
          break;
        }
        paramMessageDigest.update(arrayOfByte, 0, i);
        l2 = l1 + i;
        l3 = paramLong1 + i;
        paramLong1 = l3;
        l1 = l2;
      } while (1024L + l2 <= paramLong2);
      i = paramRandomAccessFile.read(arrayOfByte, 0, (int)(paramLong2 - l2));
      paramLong1 = l3;
      l1 = l2;
    } while (i == -1);
    paramMessageDigest.update(arrayOfByte, 0, i);
    return l3 + i;
  }
  
  private static short readShort(DataInput paramDataInput)
  {
    byte[] arrayOfByte = new byte[2];
    paramDataInput.readFully(arrayOfByte);
    return ByteBuffer.wrap(arrayOfByte).order(ByteOrder.LITTLE_ENDIAN).getShort(0);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelreader.V1ChannelReader
 * JD-Core Version:    0.7.0.1
 */