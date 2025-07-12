.class public final Lcom/vivo/unionsdk/a/c;
.super Ljava/lang/Object;
.source "ResourceInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/unionsdk/a/c$a;,
        Lcom/vivo/unionsdk/a/c$b;,
        Lcom/vivo/unionsdk/a/c$c;
    }
.end annotation


# instance fields
.field private 士:Ljava/lang/String;

.field private 始:Landroid/os/Handler;

.field private 式:Lcom/vivo/unionsdk/a/c$a;

.field private 示:Lcom/vivo/unionsdk/a/c$b;

.field private 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vivo/unionsdk/a/c$b;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->始:Landroid/os/Handler;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/vivo/unionsdk/a/c;->示:Lcom/vivo/unionsdk/a/c$b;

    .line 55
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->始:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vivounionsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->士:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic 士(Lcom/vivo/unionsdk/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->始:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->士:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 式(Lcom/vivo/unionsdk/a/c;)Lcom/vivo/unionsdk/a/c$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    return-object v0
.end method

.method private 式()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 83
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "ResourceInstaller"

    const-string v1, "onSkinPrepared, sdk res install failed for mExtraPackageInfo is null!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->示:Lcom/vivo/unionsdk/a/c$b;

    invoke-interface {v0, v6}, Lcom/vivo/unionsdk/a/c$b;->驶(Z)V

    .line 126
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->驶()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/a/c$a;->始()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "ResourceInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSkinPrepared, sdk res install failed for resApkPkg or resApkPath is null!, resApkPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", resApkPath = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object v1, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    .line 95
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->示:Lcom/vivo/unionsdk/a/c$b;

    invoke-interface {v0, v6}, Lcom/vivo/unionsdk/a/c$b;->驶(Z)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/vivo/unionsdk/a/c;->驶(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/vivo/unionsdk/a/c;->驶(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/content/Context;

    move-result-object v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    const-string v3, "ResourceInstaller"

    const-string v4, "sdk res install failed for createPkgContext failed!"

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 114
    iget-object v1, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/a/c$a;->驶(Lcom/vivo/unionsdk/a/c$a;Landroid/content/Context;)Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/a/c$a;->驶(Lcom/vivo/unionsdk/a/c$a;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 116
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->示:Lcom/vivo/unionsdk/a/c$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vivo/unionsdk/a/c$b;->驶(Z)V

    .line 118
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs.app_versionCode"

    iget-object v3, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 119
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs.config_versionCode"

    const/16 v2, 0x604

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 110
    :cond_3
    const-string v0, "ResourceInstaller"

    const-string v3, "sdk res install failed for createPkgResource failed!"

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 123
    :cond_4
    iput-object v1, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    .line 124
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->示:Lcom/vivo/unionsdk/a/c$b;

    invoke-interface {v0, v6}, Lcom/vivo/unionsdk/a/c$b;->驶(Z)V

    goto/16 :goto_0
.end method

.method static synthetic 示(Lcom/vivo/unionsdk/a/c;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/c;->式()V

    return-void
.end method

.method private 示()Z
    .locals 7

    .prologue
    const/16 v6, 0x604

    const/4 v0, 0x1

    const/4 v5, -0x1

    .line 171
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    const-string v3, "prefs.app_versionCode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 178
    const-string v4, "prefs.config_versionCode"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 181
    if-eq v6, v3, :cond_0

    move v1, v0

    .line 185
    :cond_0
    if-eq v6, v2, :cond_1

    .line 188
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private 驶(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/content/Context;
    .locals 4

    .prologue
    .line 213
    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mResources"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 217
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mPackageInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mClassLoader"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 227
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    iget-object v3, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mApplication"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 232
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 233
    iget-object v3, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "ResourceInstaller"

    const-string v2, "createPkgContext exception\uff1a"

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    return-object v0
.end method

.method private 驶(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "ResourceInstaller"

    const-string v2, "createPkgResource error: apkPath is null."

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 199
    :cond_0
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/vivo/unionsdk/a/c;->驶(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    .line 204
    :goto_1
    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 202
    :goto_2
    const-string v3, "ResourceInstaller"

    const-string v4, "createPkgResource exception:"

    invoke-static {v3, v4, v0}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 209
    goto :goto_0

    .line 201
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c;Lcom/vivo/unionsdk/a/c$a;)Lcom/vivo/unionsdk/a/c$a;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c;Ljava/lang/String;)Lcom/vivo/unionsdk/a/c$a;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/a/c;->驶(Ljava/lang/String;)Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method private 驶(Ljava/lang/String;)Lcom/vivo/unionsdk/a/c$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vivo/unionsdk/a/c;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_0

    .line 158
    new-instance v1, Lcom/vivo/unionsdk/a/c$a;

    invoke-direct {v1}, Lcom/vivo/unionsdk/a/c$a;-><init>()V

    .line 159
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/a/c$a;->驶(Lcom/vivo/unionsdk/a/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-static {v1, p1}, Lcom/vivo/unionsdk/a/c$a;->始(Lcom/vivo/unionsdk/a/c$a;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    const-string v2, "ResourceInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newExtraPkgInfoFromFile, extraPackageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private 驶(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 244
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    const-string v1, "ResourceInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAssetPath, object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "ResourceInstaller"

    const-string v2, "addAssetPath exception\uff1a"

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static 驶(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_3

    array-length v0, v1

    if-nez v0, :cond_4

    .line 140
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 144
    :cond_4
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 145
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/vivo/unionsdk/a/c;->驶(Ljava/io/File;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static 驶(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    invoke-static {v1}, Lcom/vivo/unionsdk/a/c;->驶(Ljava/io/File;)V

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 335
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 343
    const-string v1, "ResourceInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFileFromAssets, destFile can not be created, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_2
    :goto_1
    return v0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    const-string v2, "ResourceInstaller"

    const-string v4, "copyFileFromAssets exception: "

    invoke-static {v2, v4, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 353
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vivounionsdk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 354
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 356
    const/16 v1, 0x2000

    :try_start_4
    new-array v1, v1, [B

    .line 358
    :goto_2
    const/4 v3, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v4, v1, v3, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_6

    .line 359
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 365
    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    .line 366
    :goto_3
    :try_start_5
    const-string v5, "ResourceInstaller"

    const-string v6, "copyFileFromAssets exception: "

    invoke-static {v5, v6, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 368
    if-eqz v2, :cond_4

    .line 370
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 374
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 376
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 380
    :cond_5
    :goto_5
    if-eqz v4, :cond_2

    .line 382
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 383
    :catch_2
    move-exception v1

    goto :goto_1

    .line 361
    :cond_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 362
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 363
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 364
    const/4 v0, 0x1

    .line 368
    if-eqz v2, :cond_7

    .line 370
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 374
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 376
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 380
    :cond_8
    :goto_7
    if-eqz v5, :cond_2

    .line 382
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 383
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 368
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_8
    if-eqz v3, :cond_9

    .line 370
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 374
    :cond_9
    :goto_9
    if-eqz v4, :cond_a

    .line 376
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 380
    :cond_a
    :goto_a
    if-eqz v5, :cond_b

    .line 382
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 384
    :cond_b
    :goto_b
    throw v0

    .line 371
    :catch_4
    move-exception v1

    goto :goto_6

    .line 377
    :catch_5
    move-exception v1

    goto :goto_7

    .line 371
    :catch_6
    move-exception v1

    goto :goto_4

    .line 377
    :catch_7
    move-exception v1

    goto :goto_5

    .line 371
    :catch_8
    move-exception v1

    goto :goto_9

    .line 377
    :catch_9
    move-exception v1

    goto :goto_a

    .line 383
    :catch_a
    move-exception v1

    goto :goto_b

    .line 368
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_8

    .line 365
    :catch_b
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_3

    :catch_c
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_3

    :catch_d
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3
.end method


# virtual methods
.method public 始()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public 驶()Lcom/vivo/unionsdk/a/c$a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    return-object v0
.end method

.method public 驶(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/vivo/unionsdk/a/c;->式:Lcom/vivo/unionsdk/a/c$a;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 68
    :goto_0
    const-string v2, "ResourceInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install, copyRes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", forceCopy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/vivo/unionsdk/a/c$c;

    invoke-direct {v2, p0, v1, v0}, Lcom/vivo/unionsdk/a/c$c;-><init>(Lcom/vivo/unionsdk/a/c;ZLcom/vivo/unionsdk/a/d;)V

    .line 71
    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/vivo/unionsdk/a/c$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/c;->示()Z

    move-result v1

    goto :goto_0
.end method
