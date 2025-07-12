.class public Lcom/vivo/ic/channelreader/V1ChannelReader;
.super Ljava/lang/Object;
.source "V1ChannelReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containV1Signature(Ljava/io/File;)Z
    .locals 7

    .prologue
    .line 169
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 170
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 173
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 175
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "META-INF/\\w+\\.SF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x1

    .line 186
    :goto_1
    return v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getChannelFileMD5Hash(Ljava/io/File;Lcom/vivo/ic/channelunit/item/ChannalInfo;)Ljava/lang/Long;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/16 v12, 0x10

    const/16 v6, 0x8

    .line 127
    instance-of v0, p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 130
    :cond_0
    check-cast p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;

    .line 131
    const/4 v5, 0x0

    .line 135
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 136
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    const-wide/16 v1, 0x0

    iget-wide v3, p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mCommentAreaOffset:J

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V1ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J

    .line 138
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    iget-short v2, p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mOriginCommentLen:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v5, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 141
    iget-wide v1, p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mCommentAreaOffset:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-object v10, p1, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mChannel:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v3, v10

    const-wide/16 v10, 0x2

    sub-long/2addr v3, v10

    sget-object v10, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v10, v10

    int-to-long v10, v10

    sub-long/2addr v3, v10

    invoke-static/range {v0 .. v5}, Lcom/vivo/ic/channelreader/V1ChannelReader;->readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J

    .line 142
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 147
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    const/16 v1, 0x18

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v0, v9

    move-wide v3, v7

    .line 151
    :goto_2
    if-ge v0, v6, :cond_1

    .line 152
    const-wide/16 v1, 0x10

    mul-long/2addr v1, v3

    .line 153
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v1

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v6

    move-wide v1, v7

    .line 156
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 157
    const-wide/16 v6, 0x10

    mul-long/2addr v1, v6

    .line 158
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 160
    :cond_2
    add-long v0, v1, v3

    const-wide v2, 0xffffffffL

    and-long v1, v0, v2

    .line 161
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static getEocd(Ljava/io/File;)Lcom/vivo/ic/channelunit/Pair;
    .locals 5

    .prologue
    .line 111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 114
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/vivo/ic/channelunit/Pair;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/vivo/ic/channelunit/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/vivo/ic/channelunit/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    .line 121
    goto :goto_0
.end method

.method public static isV1MagicMatch([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    array-length v0, p0

    sget-object v2, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 100
    :goto_1
    sget-object v2, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 101
    aget-byte v2, p0, v0

    sget-object v3, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readChannel(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V1ChannelComment;
    .locals 8

    .prologue
    .line 35
    new-instance v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;

    invoke-direct {v3}, Lcom/vivo/ic/channelunit/item/V1ChannelComment;-><init>()V

    .line 36
    iput-object p1, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mPkg:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/vivo/ic/channelreader/V1ChannelReader;->getEocd(Ljava/io/File;)Lcom/vivo/ic/channelunit/Pair;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v1}, Lcom/vivo/ic/channelunit/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x14

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mCommentAreaOffset:J

    .line 42
    invoke-virtual {v1}, Lcom/vivo/ic/channelunit/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 43
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 46
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 48
    sget-object v2, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 49
    sget-object v6, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 50
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    invoke-static {v2}, Lcom/vivo/ic/channelreader/V1ChannelReader;->isV1MagicMatch([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    .line 55
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-static {v1}, Lcom/vivo/ic/channelreader/V1ChannelReader;->readShort(Ljava/io/DataInput;)S

    move-result v2

    .line 58
    if-lez v2, :cond_0

    .line 59
    int-to-long v6, v2

    sub-long/2addr v4, v6

    .line 60
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    new-array v2, v2, [B

    .line 63
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 64
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mChannel:Ljava/lang/String;

    .line 65
    iget-object v2, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mChannel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    sget-object v2, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    sub-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mOriginCommentLen:S
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 78
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :cond_1
    :goto_1
    return-object v3

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    iput-object v0, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 73
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    .line 74
    iput-object v0, v3, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->mException:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    if-eqz v1, :cond_1

    .line 78
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 79
    :catch_4
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    .line 78
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 81
    :cond_2
    :goto_5
    throw v0

    .line 79
    :catch_5
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 76
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 72
    :catch_6
    move-exception v0

    goto :goto_3

    .line 69
    :catch_7
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method private static readPart(Ljava/io/RandomAccessFile;JJLjava/security/MessageDigest;)J
    .locals 6

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    sub-long v2, p3, p1

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 194
    sub-long v0, p3, p1

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 195
    const/4 v1, 0x0

    sub-long v2, p3, p1

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    int-to-long v0, v1

    .line 215
    :cond_0
    :goto_0
    return-wide v0

    .line 199
    :cond_1
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 202
    :cond_2
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 203
    const/4 v4, 0x0

    invoke-virtual {p5, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 204
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 205
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 206
    const-wide/16 v3, 0x400

    add-long/2addr v3, p1

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    .line 207
    const/4 v3, 0x0

    sub-long v4, p3, p1

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 208
    const/4 v4, 0x0

    invoke-virtual {p5, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 209
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 210
    goto :goto_0
.end method

.method private static readShort(Ljava/io/DataInput;)S
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 89
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 90
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
