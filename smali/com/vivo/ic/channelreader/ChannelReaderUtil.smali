.class public Lcom/vivo/ic/channelreader/ChannelReaderUtil;
.super Ljava/lang/Object;
.source "ChannelReaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelFileMD5(Ljava/io/File;Lcom/vivo/ic/channelunit/item/ChannalInfo;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/vivo/ic/channelreader/V1ChannelReader;->getChannelFileMD5Hash(Ljava/io/File;Lcom/vivo/ic/channelunit/item/ChannalInfo;)Ljava/lang/Long;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    invoke-static {p0, p1}, Lcom/vivo/ic/channelreader/V2ChannelReader;->getChannelFileMD5Hash(Ljava/io/File;Lcom/vivo/ic/channelunit/item/ChannalInfo;)Ljava/lang/Long;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public static getMode(Ljava/io/File;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 27
    const v0, 0x7109871a

    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/vivo/ic/channelreader/V2ChannelReader;->getIDValueOffset(Ljava/io/File;ILjava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v0, v0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "ChannelUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type V2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v0, 0x2

    .line 42
    :goto_0
    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/vivo/ic/channelreader/V1ChannelReader;->containV1Signature(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "ChannelUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type V1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "ChannelUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot find mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static readChannel(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/ChannalInfo;
    .locals 4

    .prologue
    .line 54
    sget-object v1, Lcom/vivo/ic/channelunit/item/ChannalInfo;->EMPTY_CHANNEL:Lcom/vivo/ic/channelunit/item/ChannalInfo;

    .line 56
    :try_start_0
    invoke-static {p0, p1}, Lcom/vivo/ic/channelreader/V1ChannelReader;->readChannel(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V1ChannelComment;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/V1ChannelComment;->isRight()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iput-object v0, v1, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mException:Ljava/lang/Exception;

    .line 62
    iput-object p1, v1, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mPkg:Ljava/lang/String;

    .line 66
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readChannl(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->isRight()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :cond_2
    :goto_1
    const-string v0, "ChannelUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/vivo/ic/channelunit/item/ChannalInfo;->EMPTY_CHANNEL:Lcom/vivo/ic/channelunit/item/ChannalInfo;

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    iput-object v0, v1, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mException:Ljava/lang/Exception;

    .line 72
    iput-object p1, v1, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mPkg:Ljava/lang/String;

    goto :goto_1
.end method
