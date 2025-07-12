.class public Lcom/vivo/unionsdk/c/e;
.super Ljava/lang/Object;
.source "SelfTestManager.java"


# direct methods
.method public static 驶(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 13
    new-instance v1, Lcom/vivo/unionsdk/c/f;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/c/f;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/unionsdk/c/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 15
    return-void
.end method
