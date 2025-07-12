.class public Lcom/vivo/unionsdk/cmd/TrackConfigChangedCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "TrackConfigChangedCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 18
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/unionsdk/d/d;->驶(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method
