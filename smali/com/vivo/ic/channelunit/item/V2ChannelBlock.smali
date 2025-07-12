.class public Lcom/vivo/ic/channelunit/item/V2ChannelBlock;
.super Lcom/vivo/ic/channelunit/item/ChannalInfo;
.source "V2ChannelBlock.java"


# instance fields
.field public mCentralDirOffsetFix:I

.field public mChannelBlockLen:J

.field public mChannelBlockOffset:J

.field public mChannelinfo:Ljava/lang/String;

.field public mEocdCentralOffset:J

.field public mV2BlockLen:J

.field public mV2SchemeOffset:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/vivo/ic/channelunit/item/ChannalInfo;-><init>()V

    .line 15
    iput-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    .line 19
    iput-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockLen:J

    .line 23
    iput-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2SchemeOffset:J

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2BlockLen:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mCentralDirOffsetFix:I

    .line 39
    iput-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mEocdCentralOffset:J

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public isRight()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockLen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2SchemeOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mCentralDirOffsetFix:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockLen:J

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toMap()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "errCLS"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "errMsg"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "errPkg"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    const-string v1, "errCat"

    invoke-virtual {p0}, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2ChannelBlock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelBlockLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2SchemeOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mChannelinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mV2BlockLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mCentralDirOffsetFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vivo/ic/channelunit/item/V2ChannelBlock;->mEocdCentralOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
