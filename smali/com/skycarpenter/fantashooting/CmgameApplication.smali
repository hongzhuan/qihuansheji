.class public Lcom/skycarpenter/fantashooting/CmgameApplication;
.super Landroid/app/Application;
.source "CmgameApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 14
    const-string v1, "initSDK"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v0, "dff6d077dd699bca1d39a9262d759ee9"

    .line 16
    .local v0, "appId":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->initSdk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
