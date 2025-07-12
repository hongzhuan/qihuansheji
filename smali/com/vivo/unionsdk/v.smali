.class public Lcom/vivo/unionsdk/v;
.super Ljava/lang/Object;
.source "UnionCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static 驶:Lcom/vivo/unionsdk/v;


# instance fields
.field private 始:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private 式:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/vivo/unionsdk/v;

    invoke-direct {v0}, Lcom/vivo/unionsdk/v;-><init>()V

    sput-object v0, Lcom/vivo/unionsdk/v;->驶:Lcom/vivo/unionsdk/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private 始(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/v;->式:Landroid/content/Context;

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/vivo/unionsdk/v;

    if-eqz v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iput-object v0, p0, Lcom/vivo/unionsdk/v;->始:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 27
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public static 驶(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/vivo/unionsdk/v;->驶:Lcom/vivo/unionsdk/v;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/v;->始(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藞()V

    .line 35
    invoke-virtual {p0, p2}, Lcom/vivo/unionsdk/v;->驶(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vivo/unionsdk/v;->始:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    return-void
.end method

.method public 驶(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 43
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_1
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2

    .line 47
    const-string v0, "UnionCrashHandler"

    const-string v1, "exist for SecurityException----------"

    invoke-static {v0, v1, p1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 49
    const/4 v0, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
