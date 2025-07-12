.class public Lcom/vivo/unionsdk/u;
.super Ljava/lang/Object;
.source "UnionActivityManager.java"


# static fields
.field private static 驶:Lcom/vivo/unionsdk/u;


# instance fields
.field private 始:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/u;->始:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public static declared-synchronized 驶()Lcom/vivo/unionsdk/u;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/vivo/unionsdk/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/u;->驶:Lcom/vivo/unionsdk/u;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/vivo/unionsdk/u;

    invoke-direct {v0}, Lcom/vivo/unionsdk/u;-><init>()V

    sput-object v0, Lcom/vivo/unionsdk/u;->驶:Lcom/vivo/unionsdk/u;

    .line 21
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/u;->驶:Lcom/vivo/unionsdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public 始(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/u;->始:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 47
    if-nez v0, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 驶(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/unionsdk/u;->始:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 56
    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 61
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    :try_start_1
    const-string v2, "UnionActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exit vivo game exception, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    throw v1
.end method

.method public 驶(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 28
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/u;->始:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 33
    if-nez v0, :cond_2

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/vivo/unionsdk/u;->始:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v0, 0x1

    goto :goto_0
.end method
