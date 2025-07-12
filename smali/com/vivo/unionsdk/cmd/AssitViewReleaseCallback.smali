.class public Lcom/vivo/unionsdk/cmd/AssitViewReleaseCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "AssitViewReleaseCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x2715

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藟()V

    .line 20
    return-void
.end method
