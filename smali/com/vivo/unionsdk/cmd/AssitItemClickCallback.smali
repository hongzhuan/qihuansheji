.class public Lcom/vivo/unionsdk/cmd/AssitItemClickCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "AssitItemClickCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssitItemClickCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x2713

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

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/AssitItemClickCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/vivo/unionsdk/cmd/HookUtil;

    invoke-direct {v2}, Lcom/vivo/unionsdk/cmd/HookUtil;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/vivo/unionsdk/cmd/HookUtil;->hookActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 25
    new-instance v2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    invoke-direct {v2, v0, v1}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v1, "AssitItemClickCallback"

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
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method
