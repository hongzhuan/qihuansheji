.class public Lcom/vivo/unionsdk/as;
.super Ljava/lang/Object;
.source "WorkerThread.java"


# static fields
.field private static 始:Landroid/os/Handler;

.field private static 驶:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vivounion_worker_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/unionsdk/as;->驶:Landroid/os/HandlerThread;

    .line 14
    sget-object v0, Lcom/vivo/unionsdk/as;->驶:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/vivo/unionsdk/as;->驶:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/unionsdk/as;->始:Landroid/os/Handler;

    return-void
.end method

.method public static 驶(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lcom/vivo/unionsdk/as;->驶(Ljava/lang/Runnable;JI)V

    .line 20
    return-void
.end method

.method private static 驶(Ljava/lang/Runnable;JI)V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/vivo/unionsdk/as;->驶:Landroid/os/HandlerThread;

    invoke-virtual {v0, p3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 24
    sget-object v0, Lcom/vivo/unionsdk/as;->驶:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/as;->始:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
