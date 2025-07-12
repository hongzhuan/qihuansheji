.class public Lcom/vivo/unionsdk/t;
.super Ljava/lang/Object;
.source "SharedPrefs.java"


# static fields
.field private static 驶:Lcom/vivo/unionsdk/t;


# instance fields
.field private 始:Landroid/content/Context;

.field private 式:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/t;->始:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->始:Landroid/content/Context;

    const-string v1, "prefs_vivounionsdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method private 始(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized 驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/vivo/unionsdk/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/t;->驶:Lcom/vivo/unionsdk/t;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/vivo/unionsdk/t;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/unionsdk/t;->驶:Lcom/vivo/unionsdk/t;

    .line 40
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/t;->驶:Lcom/vivo/unionsdk/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public 始()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.channelInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 始(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs.channelInfo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public 驶()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.UserId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 驶(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vivo/unionsdk/t;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs.UserId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public 驶(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefs.ReportActivate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/vivo/unionsdk/t;->始(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
