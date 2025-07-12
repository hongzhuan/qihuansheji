.class public Lcom/vivo/unionsdk/cmd/ActivitiesCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "ActivitiesCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivitiesCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x4e24

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 27
    return-void
.end method

.method private checkJump()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v2, "actsType"

    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v2

    .line 49
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 51
    :cond_0
    const-string v3, "actsLoginPicUri"

    invoke-virtual {p0, v3}, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const-string v0, "ActivitiesCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkJump, but pic url is null, actsType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 64
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    :cond_3
    const-string v0, "ActivitiesCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkJump, pic file not exist, actsType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actsLoginPicUri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 61
    goto :goto_0
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;->checkJump()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Lcom/vivo/unionsdk/cmd/HookUtil;

    invoke-direct {v1}, Lcom/vivo/unionsdk/cmd/HookUtil;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/cmd/HookUtil;->hookActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 35
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "ActivitiesCallback"

    const-string v1, "activitiescallback, cant jump"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method
