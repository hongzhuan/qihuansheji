.class public Lcom/vivo/unionsdk/g;
.super Ljava/lang/Object;
.source "ClientPrefs.java"


# static fields
.field private static 驶:Lcom/vivo/unionsdk/g;


# instance fields
.field private 始:Landroid/content/Context;

.field private 式:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/g;->始:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->始:Landroid/content/Context;

    const-string v1, "prefs_vivounionsdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method public static declared-synchronized 驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/vivo/unionsdk/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/g;->驶:Lcom/vivo/unionsdk/g;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/vivo/unionsdk/g;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/unionsdk/g;->驶:Lcom/vivo/unionsdk/g;

    .line 26
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/g;->驶:Lcom/vivo/unionsdk/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public 士()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "prefs.singlePlayTime"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/g;->驶(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public 始()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.LastLogin."

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 始(J)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 98
    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vivo/unionsdk/g;->式(J)J

    move-result-wide v0

    .line 102
    const-string v2, "prefs.singlePlayTime"

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/vivo/unionsdk/g;->驶(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public 式(J)J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.singlePlayTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    return-wide v0
.end method

.method public 式()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.AssitSettingsCache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 示()Z
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v1, "prefs.supportWeiXinPay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public 驶(II)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "prefs.AssitPostionX"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/g;->驶(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "prefs.AssitPostionY"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/g;->驶(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public 驶(J)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "prefs.apkInstallFailed"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/g;->驶(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public 驶(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 35
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 41
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 43
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 45
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 48
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type! value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 驶()[I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 60
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v3, "prefs.AssitPostionX"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/unionsdk/g;->式:Landroid/content/SharedPreferences;

    const-string v3, "prefs.AssitPostionY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 62
    return-object v0
.end method
