.class public Lcom/vivo/unionsdk/d/c;
.super Ljava/lang/Object;
.source "TrackManager.java"


# static fields
.field private static 驶:Lcom/vivo/unionsdk/d/c;


# instance fields
.field private 始:Landroid/content/Context;

.field private 式:Landroid/os/Handler;

.field private 示:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vivo/unionsdk/d/c;->始:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vivounion_track_worker_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/unionsdk/d/c;->式:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private 始()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->始:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/t;->驶()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->始:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/t;->驶(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->示:Ljava/lang/String;

    return-object v0
.end method

.method private static 始(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    :cond_0
    const-string v0, "model"

    invoke-static {}, Lcom/vivo/unionsdk/i;->驶()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "imei"

    invoke-static {p1}, Lcom/vivo/unionsdk/i;->驶(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "emmcid"

    invoke-static {}, Lcom/vivo/unionsdk/i;->始()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "userid"

    invoke-static {p1}, Lcom/vivo/unionsdk/d/c;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/d/c;

    move-result-object v1

    invoke-direct {v1}, Lcom/vivo/unionsdk/d/c;->始()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "eventDate"

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "version"

    invoke-static {p1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "apptype"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "packageName"

    invoke-virtual {p0, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "pkgname"

    const-string v1, "com.vivo.sdkplugin.sdk"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "openid"

    invoke-virtual {p0, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz p5, :cond_1

    .line 93
    const-string v0, "channelInfo"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vivo/unionsdk/d/d;->始(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    return-void
.end method

.method public static declared-synchronized 驶(Landroid/content/Context;)Lcom/vivo/unionsdk/d/c;
    .locals 3

    .prologue
    .line 34
    const-class v1, Lcom/vivo/unionsdk/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/d/c;->驶:Lcom/vivo/unionsdk/d/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/vivo/unionsdk/d/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vivo/unionsdk/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/unionsdk/d/c;->驶:Lcom/vivo/unionsdk/d/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/d/c;->驶:Lcom/vivo/unionsdk/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static 驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-static/range {p0 .. p5}, Lcom/vivo/unionsdk/d/c;->始(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 68
    if-nez p2, :cond_0

    .line 69
    const-string v0, "https://st-offlinegame.vivo.com.cn"

    .line 73
    :goto_0
    const-string v1, "TrackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadeData, params = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {v0, p0, v4, v4}, Lcom/vivo/unionsdk/b/d;->驶(Ljava/lang/String;Ljava/util/HashMap;Lcom/vivo/unionsdk/b/b;Lcom/vivo/unionsdk/b/c;)V

    .line 75
    return-void

    .line 71
    :cond_0
    const-string v0, "https://st-onlinegame.vivo.com.cn"

    goto :goto_0
.end method


# virtual methods
.method public 驶()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/unionsdk/d/c;->式:Landroid/os/Handler;

    return-object v0
.end method
