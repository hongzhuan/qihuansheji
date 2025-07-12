.class public Lcom/vivo/sdkplugin/a/c;
.super Ljava/lang/Object;
.source "UnionAccountManager.java"


# static fields
.field private static 驶:Lcom/vivo/sdkplugin/a/c;


# instance fields
.field private 始:Landroid/content/Context;

.field private 式:Ljava/util/HashMap;

.field private 示:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/a/c;->式:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public static declared-synchronized 驶()Lcom/vivo/sdkplugin/a/c;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/vivo/sdkplugin/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/sdkplugin/a/c;->驶:Lcom/vivo/sdkplugin/a/c;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/vivo/sdkplugin/a/c;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/a/c;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/a/c;->驶:Lcom/vivo/sdkplugin/a/c;

    .line 24
    :cond_0
    sget-object v0, Lcom/vivo/sdkplugin/a/c;->驶:Lcom/vivo/sdkplugin/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public 始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->式:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->式:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/a/d;

    goto :goto_0
.end method

.method public 驶(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/a/d;

    return-object v0
.end method

.method public 驶(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->始:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/a/c;->始:Landroid/content/Context;

    goto :goto_0
.end method

.method public 驶(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->式:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public 驶(Ljava/lang/String;Lcom/vivo/sdkplugin/a/d;Lcom/vivo/sdkplugin/a/d;)V
    .locals 3

    .prologue
    .line 42
    const-string v0, "UnionAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk receive remote login\uff0ccliPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/a/c;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->始:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    if-eqz p3, :cond_0

    .line 47
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->示:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/c;->式:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    return-void

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
