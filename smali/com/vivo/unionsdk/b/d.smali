.class public Lcom/vivo/unionsdk/b/d;
.super Ljava/lang/Object;
.source "DataRequester.java"


# direct methods
.method public static 驶(Ljava/lang/String;Ljava/util/HashMap;Lcom/vivo/unionsdk/b/b;Lcom/vivo/unionsdk/b/c;)V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/vivo/unionsdk/b/e;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/vivo/unionsdk/b/e;-><init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/vivo/unionsdk/b/b;Lcom/vivo/unionsdk/b/c;)V

    .line 11
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/b/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    return-void
.end method
