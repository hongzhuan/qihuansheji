.class public Lcom/vivo/unionsdk/cmd/AssitNotifyClickCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "AssitNotifyClickCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssitNotifyClickCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x2717

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 21
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const-string v1, "jumpuri"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/AssitNotifyClickCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    invoke-direct {v2, v0, v1}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "AssitNotifyClickCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExec error, topActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    const-string v0, "jumpuri"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/AssitNotifyClickCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1}, Lcom/vivo/unionsdk/cmd/CommandServer;->getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vivo/unionsdk/cmd/CommandServer;->getClientOrientationCompat(Ljava/lang/String;)I

    move-result v3

    .line 36
    invoke-static {p1}, Lcom/vivo/unionsdk/cmd/CommandServer;->getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vivo/unionsdk/cmd/CommandServer;->getClientSdkVersion(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpForCompat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)Z

    .line 37
    return-void
.end method
