.class public Lcom/vivo/ic/channelreader/V2ChannelReader;
.super Ljava/lang/Object;
.source "V2ChannelReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getChannelFileMD5Hash(Ljava/io/File;Lcom/vivo/ic/channelunit/item/ChannalInfo;)Ljava/lang/Long;
    .locals 14

    .prologue
    const-wide/16 v7, 0x0

    const/16 v12, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x8

    .line 81
    instance-of v0, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    if-nez v0, :cond_0

    move-object v0, v9

    .line 146
    :goto_0
    return-object v0

    .line 84
    :cond_0
    check-cast p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->isRight()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :cond_1
    const-string v0, "ChannelUnit"

    const-string v1, "getChannelFileMD5Hash err"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 88
    goto :goto_0

    .line 93
    :cond_2
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 94
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    const-string v1, "ChannelUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",raf :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-wide/16 v1, 0x0

    iget-wide v3, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2SchemeOffset:J

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J

    .line 100
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 101
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    iget-wide v1, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2BlockLen:J

    invoke-virtual {v11, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v5, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 105
    iget-wide v1, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2SchemeOffset:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iget-wide v3, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J

    .line 107
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v5, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 109
    iget-wide v1, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    iget-wide v3, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockLen:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iget-wide v3, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mEocdCentralOffset:J

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J

    .line 111
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    iget v2, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mCentralDirOffsetFix:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v5, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    iget-wide v1, p1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mEocdCentralOffset:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-eqz v0, :cond_3

    .line 125
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :cond_3
    :goto_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 132
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    const/16 v1, 0x18

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v0, v10

    move-wide v3, v7

    .line 136
    :goto_2
    if-ge v0, v6, :cond_6

    .line 137
    const-wide/16 v1, 0x10

    mul-long/2addr v1, v3

    .line 138
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v1

    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    move-object v1, v9

    .line 120
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    if-eqz v1, :cond_4

    .line 125
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_4
    move-object v0, v9

    .line 128
    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 123
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v9, :cond_5

    .line 125
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 128
    :cond_5
    :goto_6
    throw v0

    .line 126
    :catch_3
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_6
    move v0, v6

    move-wide v1, v7

    .line 141
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 142
    const-wide/16 v6, 0x10

    mul-long/2addr v1, v6

    .line 143
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 145
    :cond_7
    add-long v0, v1, v3

    const-wide v2, 0xffffffffL

    and-long v1, v0, v2

    .line 146
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_0

    .line 123
    :catchall_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_5

    .line 119
    :catch_4
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3
.end method

.method static getIDValueOffset(Ljava/io/File;ILjava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;
    .locals 9

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    new-instance v2, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    invoke-direct {v2}, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;-><init>()V

    .line 41
    iput-object p2, v2, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mPkg:Ljava/lang/String;

    .line 43
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v3, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-static {v3}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/vivo/ic/channelunit/Pair;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lcom/vivo/ic/channelunit/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v4}, Lcom/vivo/ic/channelunit/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 49
    invoke-static {v3, v5, v6}, Lcom/vivo/ic/channelunit/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v0, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    .line 62
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    iput-object v1, v0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    if-eqz v2, :cond_0

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    :cond_0
    :goto_1
    return-object v0

    .line 53
    :cond_1
    :try_start_4
    invoke-static {v0, v5, v6}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    .line 55
    invoke-static {v3, v0, v1, p1}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier;->findApkValueBlock(Ljava/io/RandomAccessFile;JI)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 56
    :try_start_5
    iput-object p2, v1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mPkg:Ljava/lang/String;

    .line 57
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v4}, Lcom/vivo/ic/channelunit/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mEocdCentralOffset:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :cond_2
    if-eqz v3, :cond_3

    .line 70
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    move-object v0, v1

    .line 73
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 71
    :catch_2
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 64
    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 65
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    .line 66
    iput-object v1, v0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 68
    if-eqz v3, :cond_0

    .line 70
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 71
    :catch_4
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_4

    .line 70
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 73
    :cond_4
    :goto_5
    throw v0

    .line 71
    :catch_5
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 64
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    .line 61
    :catch_8
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    :catch_9
    move-exception v0

    move-object v2, v3

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0
.end method

.method public static readChannl(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;
    .locals 1

    .prologue
    .line 34
    const v0, -0x77eeaa01

    invoke-static {p0, v0, p1}, Lcom/vivo/ic/channelreader/V2ChannelReader;->getIDValueOffset(Ljava/io/File;ILjava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    move-result-object v0

    return-object v0
.end method

.method private static readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    .locals 6

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 153
    sub-long v2, p3, p1

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 154
    sub-long v0, p3, p1

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 155
    const/4 v1, 0x0

    sub-long v2, p3, p1

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 157
    int-to-long v0, v1

    .line 175
    :cond_0
    :goto_0
    return-wide v0

    .line 159
    :cond_1
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 162
    :cond_2
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 163
    const/4 v4, 0x0

    invoke-virtual {p5, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 164
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 165
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 166
    const-wide/16 v3, 0x400

    add-long/2addr v3, p1

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    .line 167
    const/4 v3, 0x0

    sub-long v4, p3, p1

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 168
    const/4 v4, 0x0

    invoke-virtual {p5, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 169
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 170
    goto :goto_0
.end method
