package com.vivo.ic.channelreader;

import com.vivo.ic.channelunit.item.V2ChannelBlock;
import java.io.File;
import java.io.RandomAccessFile;
import java.security.MessageDigest;

public class V2ChannelReader
{
  /* Error */
  static java.lang.Long getChannelFileMD5Hash(File paramFile, com.vivo.ic.channelunit.item.ChannalInfo paramChannalInfo)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_1
    //   4: instanceof 17
    //   7: ifne +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_1
    //   13: checkcast 17	com/vivo/ic/channelunit/item/V2ChannelBlock
    //   16: astore 8
    //   18: aload_0
    //   19: invokevirtual 23	java/io/File:isFile	()Z
    //   22: ifeq +11 -> 33
    //   25: aload 8
    //   27: invokevirtual 26	com/vivo/ic/channelunit/item/V2ChannelBlock:isRight	()Z
    //   30: ifne +13 -> 43
    //   33: ldc 28
    //   35: ldc 30
    //   37: invokestatic 36	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: aconst_null
    //   42: areturn
    //   43: ldc 38
    //   45: invokestatic 44	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   48: astore_1
    //   49: new 46	java/io/RandomAccessFile
    //   52: dup
    //   53: aload_0
    //   54: ldc 48
    //   56: invokespecial 51	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   59: astore_0
    //   60: ldc 28
    //   62: new 53	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   69: ldc 56
    //   71: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload 8
    //   76: getfield 64	com/vivo/ic/channelunit/item/V2ChannelBlock:mChannelinfo	Ljava/lang/String;
    //   79: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: ldc 66
    //   84: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_0
    //   88: invokevirtual 70	java/io/RandomAccessFile:length	()J
    //   91: invokevirtual 73	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   94: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   100: pop
    //   101: aload_0
    //   102: lconst_0
    //   103: aload 8
    //   105: getfield 84	com/vivo/ic/channelunit/item/V2ChannelBlock:mV2SchemeOffset	J
    //   108: aload_1
    //   109: invokestatic 88	com/vivo/ic/channelreader/V2ChannelReader:readPart	(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    //   112: pop2
    //   113: bipush 8
    //   115: invokestatic 94	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   118: astore 7
    //   120: aload 7
    //   122: getstatic 100	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   125: invokevirtual 104	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   128: pop
    //   129: aload 7
    //   131: aload 8
    //   133: getfield 107	com/vivo/ic/channelunit/item/V2ChannelBlock:mV2BlockLen	J
    //   136: invokevirtual 111	java/nio/ByteBuffer:putLong	(J)Ljava/nio/ByteBuffer;
    //   139: pop
    //   140: aload_1
    //   141: aload 7
    //   143: invokevirtual 115	java/nio/ByteBuffer:array	()[B
    //   146: iconst_0
    //   147: bipush 8
    //   149: invokevirtual 119	java/security/MessageDigest:update	([BII)V
    //   152: aload_0
    //   153: aload 8
    //   155: getfield 84	com/vivo/ic/channelunit/item/V2ChannelBlock:mV2SchemeOffset	J
    //   158: ldc2_w 120
    //   161: ladd
    //   162: aload 8
    //   164: getfield 124	com/vivo/ic/channelunit/item/V2ChannelBlock:mChannelBlockOffset	J
    //   167: aload_1
    //   168: invokestatic 88	com/vivo/ic/channelreader/V2ChannelReader:readPart	(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    //   171: pop2
    //   172: aload_1
    //   173: aload 7
    //   175: invokevirtual 115	java/nio/ByteBuffer:array	()[B
    //   178: iconst_0
    //   179: bipush 8
    //   181: invokevirtual 119	java/security/MessageDigest:update	([BII)V
    //   184: aload_0
    //   185: aload 8
    //   187: getfield 124	com/vivo/ic/channelunit/item/V2ChannelBlock:mChannelBlockOffset	J
    //   190: aload 8
    //   192: getfield 127	com/vivo/ic/channelunit/item/V2ChannelBlock:mChannelBlockLen	J
    //   195: ladd
    //   196: ldc2_w 120
    //   199: ladd
    //   200: aload 8
    //   202: getfield 130	com/vivo/ic/channelunit/item/V2ChannelBlock:mEocdCentralOffset	J
    //   205: aload_1
    //   206: invokestatic 88	com/vivo/ic/channelreader/V2ChannelReader:readPart	(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    //   209: pop2
    //   210: iconst_4
    //   211: invokestatic 94	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   214: astore 7
    //   216: aload 7
    //   218: getstatic 100	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   221: invokevirtual 104	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   224: pop
    //   225: aload 7
    //   227: aload 8
    //   229: getfield 134	com/vivo/ic/channelunit/item/V2ChannelBlock:mCentralDirOffsetFix	I
    //   232: invokevirtual 137	java/nio/ByteBuffer:putInt	(I)Ljava/nio/ByteBuffer;
    //   235: pop
    //   236: aload_1
    //   237: aload 7
    //   239: invokevirtual 115	java/nio/ByteBuffer:array	()[B
    //   242: iconst_0
    //   243: iconst_4
    //   244: invokevirtual 119	java/security/MessageDigest:update	([BII)V
    //   247: aload_0
    //   248: aload 8
    //   250: getfield 130	com/vivo/ic/channelunit/item/V2ChannelBlock:mEocdCentralOffset	J
    //   253: ldc2_w 138
    //   256: ladd
    //   257: aload_0
    //   258: invokevirtual 70	java/io/RandomAccessFile:length	()J
    //   261: aload_1
    //   262: invokestatic 88	com/vivo/ic/channelreader/V2ChannelReader:readPart	(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    //   265: pop2
    //   266: aload_0
    //   267: ifnull +7 -> 274
    //   270: aload_0
    //   271: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   274: new 144	java/math/BigInteger
    //   277: dup
    //   278: iconst_1
    //   279: aload_1
    //   280: invokevirtual 147	java/security/MessageDigest:digest	()[B
    //   283: invokespecial 150	java/math/BigInteger:<init>	(I[B)V
    //   286: bipush 16
    //   288: invokevirtual 153	java/math/BigInteger:toString	(I)Ljava/lang/String;
    //   291: bipush 8
    //   293: bipush 24
    //   295: invokevirtual 159	java/lang/String:substring	(II)Ljava/lang/String;
    //   298: astore_0
    //   299: iconst_0
    //   300: istore_2
    //   301: lconst_0
    //   302: lstore_3
    //   303: iload_2
    //   304: bipush 8
    //   306: if_icmpge +90 -> 396
    //   309: aload_0
    //   310: iload_2
    //   311: iload_2
    //   312: iconst_1
    //   313: iadd
    //   314: invokevirtual 159	java/lang/String:substring	(II)Ljava/lang/String;
    //   317: bipush 16
    //   319: invokestatic 165	java/lang/Integer:parseInt	(Ljava/lang/String;I)I
    //   322: i2l
    //   323: lstore 5
    //   325: iload_2
    //   326: iconst_1
    //   327: iadd
    //   328: istore_2
    //   329: ldc2_w 166
    //   332: lload_3
    //   333: lmul
    //   334: lload 5
    //   336: ladd
    //   337: lstore_3
    //   338: goto -35 -> 303
    //   341: astore_0
    //   342: aload_0
    //   343: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   346: goto -72 -> 274
    //   349: astore_1
    //   350: aconst_null
    //   351: astore_0
    //   352: aload_1
    //   353: invokevirtual 171	java/lang/Exception:printStackTrace	()V
    //   356: aload_0
    //   357: ifnull +7 -> 364
    //   360: aload_0
    //   361: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   364: aconst_null
    //   365: areturn
    //   366: astore_0
    //   367: aload_0
    //   368: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   371: goto -7 -> 364
    //   374: astore_0
    //   375: aload 7
    //   377: astore_1
    //   378: aload_1
    //   379: ifnull +7 -> 386
    //   382: aload_1
    //   383: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   386: aload_0
    //   387: athrow
    //   388: astore_1
    //   389: aload_1
    //   390: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   393: goto -7 -> 386
    //   396: bipush 8
    //   398: istore_2
    //   399: lconst_0
    //   400: lstore 5
    //   402: iload_2
    //   403: aload_0
    //   404: invokevirtual 174	java/lang/String:length	()I
    //   407: if_icmpge +33 -> 440
    //   410: lload 5
    //   412: ldc2_w 166
    //   415: lmul
    //   416: aload_0
    //   417: iload_2
    //   418: iload_2
    //   419: iconst_1
    //   420: iadd
    //   421: invokevirtual 159	java/lang/String:substring	(II)Ljava/lang/String;
    //   424: bipush 16
    //   426: invokestatic 165	java/lang/Integer:parseInt	(Ljava/lang/String;I)I
    //   429: i2l
    //   430: ladd
    //   431: lstore 5
    //   433: iload_2
    //   434: iconst_1
    //   435: iadd
    //   436: istore_2
    //   437: goto -35 -> 402
    //   440: new 176	java/lang/Long
    //   443: dup
    //   444: lload 5
    //   446: lload_3
    //   447: ladd
    //   448: ldc2_w 177
    //   451: land
    //   452: invokespecial 181	java/lang/Long:<init>	(J)V
    //   455: areturn
    //   456: astore 7
    //   458: aload_0
    //   459: astore_1
    //   460: aload 7
    //   462: astore_0
    //   463: goto -85 -> 378
    //   466: astore 7
    //   468: aload_0
    //   469: astore_1
    //   470: aload 7
    //   472: astore_0
    //   473: goto -95 -> 378
    //   476: astore_1
    //   477: goto -125 -> 352
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	480	0	paramFile	File
    //   0	480	1	paramChannalInfo	com.vivo.ic.channelunit.item.ChannalInfo
    //   300	137	2	i	int
    //   302	145	3	l1	long
    //   323	122	5	l2	long
    //   1	375	7	localByteBuffer	java.nio.ByteBuffer
    //   456	5	7	localObject1	Object
    //   466	5	7	localObject2	Object
    //   16	233	8	localV2ChannelBlock	V2ChannelBlock
    // Exception table:
    //   from	to	target	type
    //   270	274	341	java/io/IOException
    //   43	60	349	java/lang/Exception
    //   360	364	366	java/io/IOException
    //   43	60	374	finally
    //   382	386	388	java/io/IOException
    //   60	266	456	finally
    //   352	356	466	finally
    //   60	266	476	java/lang/Exception
  }
  
  /* Error */
  static V2ChannelBlock getIDValueOffset(File paramFile, int paramInt, String paramString)
  {
    // Byte code:
    //   0: new 17	com/vivo/ic/channelunit/item/V2ChannelBlock
    //   3: dup
    //   4: invokespecial 186	com/vivo/ic/channelunit/item/V2ChannelBlock:<init>	()V
    //   7: astore 5
    //   9: aload 5
    //   11: aload_2
    //   12: putfield 189	com/vivo/ic/channelunit/item/V2ChannelBlock:mPkg	Ljava/lang/String;
    //   15: new 46	java/io/RandomAccessFile
    //   18: dup
    //   19: aload_0
    //   20: ldc 48
    //   22: invokespecial 51	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   25: astore_0
    //   26: aload_0
    //   27: astore 6
    //   29: aload_0
    //   30: invokestatic 195	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier:getEocd	(Ljava/io/RandomAccessFile;)Lcom/vivo/ic/channelunit/Pair;
    //   33: astore 8
    //   35: aload_0
    //   36: astore 6
    //   38: aload 8
    //   40: invokevirtual 201	com/vivo/ic/channelunit/Pair:getFirst	()Ljava/lang/Object;
    //   43: checkcast 90	java/nio/ByteBuffer
    //   46: astore 7
    //   48: aload_0
    //   49: astore 6
    //   51: aload 8
    //   53: invokevirtual 204	com/vivo/ic/channelunit/Pair:getSecond	()Ljava/lang/Object;
    //   56: checkcast 176	java/lang/Long
    //   59: invokevirtual 207	java/lang/Long:longValue	()J
    //   62: lstore_3
    //   63: aload_0
    //   64: astore 6
    //   66: aload_0
    //   67: lload_3
    //   68: invokestatic 213	com/vivo/ic/channelunit/verify/ZipUtils:isZip64EndOfCentralDirectoryLocatorPresent	(Ljava/io/RandomAccessFile;J)Z
    //   71: ifeq +59 -> 130
    //   74: aload_0
    //   75: astore 6
    //   77: new 185	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   80: dup
    //   81: ldc 215
    //   83: invokespecial 218	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   86: athrow
    //   87: astore 6
    //   89: aload 5
    //   91: astore 7
    //   93: aload_0
    //   94: astore_2
    //   95: aload 6
    //   97: astore 5
    //   99: aload 7
    //   101: astore_0
    //   102: aload 5
    //   104: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   107: aload_0
    //   108: aload 5
    //   110: putfield 222	com/vivo/ic/channelunit/item/V2ChannelBlock:mException	Ljava/lang/Exception;
    //   113: aload_0
    //   114: astore 5
    //   116: aload_2
    //   117: ifnull +10 -> 127
    //   120: aload_2
    //   121: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   124: aload_0
    //   125: astore 5
    //   127: aload 5
    //   129: areturn
    //   130: aload_0
    //   131: astore 6
    //   133: aload_0
    //   134: aload 7
    //   136: lload_3
    //   137: invokestatic 226	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier:getCentralDirOffset	(Ljava/nio/ByteBuffer;J)J
    //   140: iload_1
    //   141: invokestatic 230	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier:findApkValueBlock	(Ljava/io/RandomAccessFile;JI)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;
    //   144: astore 7
    //   146: aload_0
    //   147: astore 6
    //   149: aload 7
    //   151: aload_2
    //   152: putfield 189	com/vivo/ic/channelunit/item/V2ChannelBlock:mPkg	Ljava/lang/String;
    //   155: aload 7
    //   157: ifnull +26 -> 183
    //   160: aload_0
    //   161: astore 6
    //   163: aload 7
    //   165: aload 8
    //   167: invokevirtual 204	com/vivo/ic/channelunit/Pair:getSecond	()Ljava/lang/Object;
    //   170: checkcast 176	java/lang/Long
    //   173: invokevirtual 207	java/lang/Long:longValue	()J
    //   176: ldc2_w 166
    //   179: ladd
    //   180: putfield 130	com/vivo/ic/channelunit/item/V2ChannelBlock:mEocdCentralOffset	J
    //   183: aload_0
    //   184: ifnull +7 -> 191
    //   187: aload_0
    //   188: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   191: aload 7
    //   193: areturn
    //   194: astore_0
    //   195: aload_0
    //   196: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   199: goto -8 -> 191
    //   202: astore_2
    //   203: aload_2
    //   204: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   207: aload_0
    //   208: areturn
    //   209: astore_2
    //   210: aconst_null
    //   211: astore_0
    //   212: aload 5
    //   214: astore 6
    //   216: aload_2
    //   217: astore 5
    //   219: aload 6
    //   221: astore_2
    //   222: aload_0
    //   223: astore 6
    //   225: aload 5
    //   227: invokevirtual 231	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException:printStackTrace	()V
    //   230: aload_0
    //   231: astore 6
    //   233: aload_2
    //   234: aload 5
    //   236: putfield 222	com/vivo/ic/channelunit/item/V2ChannelBlock:mException	Ljava/lang/Exception;
    //   239: aload_2
    //   240: astore 5
    //   242: aload_0
    //   243: ifnull -116 -> 127
    //   246: aload_0
    //   247: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   250: aload_2
    //   251: areturn
    //   252: astore_0
    //   253: aload_0
    //   254: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   257: aload_2
    //   258: areturn
    //   259: astore_0
    //   260: aconst_null
    //   261: astore 6
    //   263: aload 6
    //   265: ifnull +8 -> 273
    //   268: aload 6
    //   270: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   273: aload_0
    //   274: athrow
    //   275: astore_2
    //   276: aload_2
    //   277: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   280: goto -7 -> 273
    //   283: astore_0
    //   284: goto -21 -> 263
    //   287: astore_0
    //   288: aload_2
    //   289: astore 6
    //   291: goto -28 -> 263
    //   294: astore 6
    //   296: aload 5
    //   298: astore_2
    //   299: aload 6
    //   301: astore 5
    //   303: goto -81 -> 222
    //   306: astore 5
    //   308: aload 7
    //   310: astore_2
    //   311: goto -89 -> 222
    //   314: astore 6
    //   316: aload 5
    //   318: astore_0
    //   319: aconst_null
    //   320: astore_2
    //   321: aload 6
    //   323: astore 5
    //   325: goto -223 -> 102
    //   328: astore 5
    //   330: aload_0
    //   331: astore_2
    //   332: aload 7
    //   334: astore_0
    //   335: goto -233 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	338	0	paramFile	File
    //   0	338	1	paramInt	int
    //   0	338	2	paramString	String
    //   62	75	3	l	long
    //   7	295	5	localObject1	Object
    //   306	11	5	localSignatureNotFoundException1	com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException
    //   323	1	5	localObject2	Object
    //   328	1	5	localIOException1	java.io.IOException
    //   27	49	6	localFile	File
    //   87	9	6	localIOException2	java.io.IOException
    //   131	159	6	localObject3	Object
    //   294	6	6	localSignatureNotFoundException2	com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException
    //   314	8	6	localIOException3	java.io.IOException
    //   46	287	7	localObject4	Object
    //   33	133	8	localPair	com.vivo.ic.channelunit.Pair
    // Exception table:
    //   from	to	target	type
    //   29	35	87	java/io/IOException
    //   38	48	87	java/io/IOException
    //   51	63	87	java/io/IOException
    //   66	74	87	java/io/IOException
    //   77	87	87	java/io/IOException
    //   133	146	87	java/io/IOException
    //   187	191	194	java/io/IOException
    //   120	124	202	java/io/IOException
    //   15	26	209	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   246	250	252	java/io/IOException
    //   15	26	259	finally
    //   268	273	275	java/io/IOException
    //   29	35	283	finally
    //   38	48	283	finally
    //   51	63	283	finally
    //   66	74	283	finally
    //   77	87	283	finally
    //   133	146	283	finally
    //   149	155	283	finally
    //   163	183	283	finally
    //   225	230	283	finally
    //   233	239	283	finally
    //   102	113	287	finally
    //   29	35	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   38	48	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   51	63	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   66	74	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   77	87	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   133	146	294	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   149	155	306	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   163	183	306	com/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException
    //   15	26	314	java/io/IOException
    //   149	155	328	java/io/IOException
    //   163	183	328	java/io/IOException
  }
  
  public static V2ChannelBlock readChannl(File paramFile, String paramString)
  {
    return getIDValueOffset(paramFile, -2012129793, paramString);
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
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelreader.V2ChannelReader
 * JD-Core Version:    0.7.0.1
 */