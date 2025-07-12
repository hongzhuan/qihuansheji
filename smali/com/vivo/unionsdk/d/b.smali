.class final Lcom/vivo/unionsdk/d/b;
.super Ljava/lang/Object;
.source "ChannelInfoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Ljava/lang/String;

.field final synthetic 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 41
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/vivo/ic/channelreader/ChannelReaderUtil;->getMode(Ljava/io/File;Ljava/lang/String;)I

    move-result v4

    .line 43
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 45
    const-string v0, "ChannelInfoUtils"

    const-string v1, "mode = -1"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v1, "key"

    const-string v2, "166"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "issuc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 100
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/vivo/ic/channelreader/ChannelReaderUtil;->readChannel(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/ChannalInfo;

    move-result-object v0

    .line 57
    if-ne v4, v6, :cond_2

    .line 58
    iget-object v0, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/vivo/ic/channelreader/V1ChannelReader;->readChannel(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V1ChannelComment;

    move-result-object v0

    .line 62
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/ChannalInfo;->isRight()Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    iget-object v1, v0, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 66
    const-string v1, "ChannelInfoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u5f02\u5e38 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vivo/ic/channelunit/item/ChannalInfo;->mException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/ChannalInfo;->toMap()Ljava/util/HashMap;

    move-result-object v1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 71
    const-string v1, "key"

    const-string v2, "166"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "issuc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 60
    iget-object v0, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/vivo/ic/channelreader/V2ChannelReader;->readChannl(Ljava/io/File;Ljava/lang/String;)Lcom/vivo/ic/channelunit/item/V2ChannelBlock;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "key"

    const-string v2, "166"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "issuc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 83
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 84
    const-string v5, "ChannelInfoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setChannelInfo, time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v1, v3, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/ChannalInfo;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 88
    iget-object v2, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/unionsdk/t;->始(Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;

    invoke-direct {v2}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;-><init>()V

    .line 90
    invoke-virtual {v2, v1}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;->setParams(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 93
    :cond_5
    const-string v1, "ChannelInfoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelInfoStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/ic/channelunit/item/ChannalInfo;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v1, "key"

    const-string v2, "166"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "issuc"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/vivo/unionsdk/d/b;->驶:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/unionsdk/d/b;->始:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
