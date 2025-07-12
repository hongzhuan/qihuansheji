.class public Lcom/vivo/unionsdk/cmd/AppCheckedCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "AppCheckedCallback.java"


# static fields
.field private static final KEY_APK_PATH:Ljava/lang/String; = "apkPath"

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_FORCE_INSTALL:Ljava/lang/String; = "forceInstall"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 21
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/AppCheckedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 22
    const-string v1, "forceInstall"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/AppCheckedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 23
    const-string v2, "apkPath"

    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/cmd/AppCheckedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(IZLjava/lang/String;)V

    .line 25
    return-void
.end method
