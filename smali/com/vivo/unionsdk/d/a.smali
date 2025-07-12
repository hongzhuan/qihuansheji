.class public Lcom/vivo/unionsdk/d/a;
.super Ljava/lang/Object;
.source "ChannelInfoUtils.java"


# direct methods
.method public static 驶(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/t;->始()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;

    invoke-direct {v1}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;-><init>()V

    .line 32
    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;->setParams(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 102
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/vivo/unionsdk/d/b;

    invoke-direct {v0, p0, p1}, Lcom/vivo/unionsdk/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/unionsdk/as;->驶(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
