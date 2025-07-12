.class public Lcom/vivo/unionsdk/cmd/LoginCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "LoginCallback.java"


# static fields
.field private static final KEY_LOGIN_USER_INFO:Ljava/lang/String; = "loginUserInfo"

.field private static final KEY_MAIN_USER_INFO:Ljava/lang/String; = "mainUserInfo"

.field private static final KEY_RESTORE_BY_CLIENT:Ljava/lang/String; = "restoreByClient"

.field private static final TAG:Ljava/lang/String; = "LoginCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x4e21

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 28
    const-string v0, "loginUserInfo"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/LoginCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "mainUserInfo"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/LoginCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v0}, Lcom/vivo/unionsdk/l;->驶(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/a/d;->始(Ljava/util/Map;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    invoke-static {v1}, Lcom/vivo/unionsdk/l;->驶(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/a/d;->始(Ljava/util/Map;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 35
    :cond_0
    if-nez v2, :cond_1

    .line 36
    const-string v1, "LoginCallback"

    const-string v3, "doExec, but loginUserInfo is null!"

    invoke-static {v1, v3}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    if-eqz p2, :cond_2

    .line 39
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;Lcom/vivo/sdkplugin/a/d;Lcom/vivo/sdkplugin/a/d;)V

    .line 41
    :cond_2
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "restoreByClient"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/LoginCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/sdkplugin/a/d;Z)V

    .line 42
    return-void
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method
