.class public Lcom/vivo/unionsdk/c/d;
.super Ljava/lang/Object;
.source "PackageParser.java"


# direct methods
.method private static 始(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    return-object v0
.end method

.method public static 驶(Landroid/content/Context;)Lcom/vivo/unionsdk/n;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 29
    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v5, v2

    .line 34
    :goto_0
    if-nez v5, :cond_0

    move-object v0, v1

    .line 104
    :goto_1
    return-object v0

    .line 32
    :catch_0
    move-exception v2

    move-object v5, v1

    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    new-instance v2, Lcom/vivo/unionsdk/n;

    invoke-direct {v2}, Lcom/vivo/unionsdk/n;-><init>()V

    .line 41
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_2

    move v4, v0

    .line 42
    :goto_2
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v0

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 44
    if-nez v4, :cond_1

    move-object v0, v1

    move-object v3, v1

    .line 48
    :cond_1
    const-string v6, "android.content.pm.PackageParser"

    invoke-static {v6, v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    if-eqz v4, :cond_3

    .line 53
    const-string v0, "parsePackage"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v3, v0, v6}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    :goto_3
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 64
    if-eqz v4, :cond_4

    .line 65
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 65
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 72
    :goto_4
    const-string v0, "activities"

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/vivo/unionsdk/c/d;->驶(Lcom/vivo/unionsdk/n;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 78
    const-string v0, "receivers"

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/vivo/unionsdk/c/d;->驶(Lcom/vivo/unionsdk/n;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 84
    const-string v0, "services"

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Lcom/vivo/unionsdk/c/d;->驶(Lcom/vivo/unionsdk/n;Ljava/lang/Object;)V

    .line 90
    const-string v0, "requestedPermissions"

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 93
    invoke-static {v2, v0}, Lcom/vivo/unionsdk/c/d;->驶(Lcom/vivo/unionsdk/n;Ljava/util/ArrayList;)V

    .line 96
    const-string v0, "mAppMetaData"

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 98
    invoke-static {v2, v0}, Lcom/vivo/unionsdk/c/d;->驶(Lcom/vivo/unionsdk/n;Landroid/os/Bundle;)V

    move-object v0, v2

    .line 100
    goto/16 :goto_1

    :cond_2
    move v4, v3

    .line 41
    goto/16 :goto_2

    .line 56
    :cond_3
    const-string v0, "parsePackage"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v3, v0, v6}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_3

    .line 68
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_4

    .line 101
    :catch_1
    move-exception v0

    .line 102
    const-string v2, "PackageParser"

    const-string v3, "parsePackage exception: "

    invoke-static {v2, v3, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 104
    goto/16 :goto_1
.end method

.method private static 驶(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 177
    :goto_0
    if-nez p2, :cond_1

    .line 178
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    :goto_1
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static 驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 195
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    return-object v0
.end method

.method private static varargs 驶(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 187
    return-object v0
.end method

.method private static 驶(Lcom/vivo/unionsdk/n;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/n;->驶(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static 驶(Lcom/vivo/unionsdk/n;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 138
    check-cast p1, Ljava/util/ArrayList;

    .line 139
    if-nez p1, :cond_1

    .line 149
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 144
    const-string v2, "info"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 146
    new-instance v2, Lcom/vivo/unionsdk/c/g;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vivo/unionsdk/c/g;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/n;->驶(Lcom/vivo/unionsdk/c/g;)V

    goto :goto_0
.end method

.method private static 驶(Lcom/vivo/unionsdk/n;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 109
    check-cast p1, Ljava/util/ArrayList;

    .line 110
    if-nez p1, :cond_1

    .line 135
    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    const-string v0, "info"

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/c/d;->驶(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 118
    new-instance v3, Lcom/vivo/unionsdk/c/a;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/vivo/unionsdk/c/a;-><init>(Ljava/lang/String;)V

    .line 119
    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v3, v0}, Lcom/vivo/unionsdk/c/a;->驶(I)V

    .line 122
    const-string v0, "intents"

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/c/d;->始(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 124
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 126
    invoke-virtual {v3, v0}, Lcom/vivo/unionsdk/c/a;->驶(Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0, v3}, Lcom/vivo/unionsdk/n;->始(Lcom/vivo/unionsdk/c/a;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0, v3}, Lcom/vivo/unionsdk/n;->驶(Lcom/vivo/unionsdk/c/a;)V

    goto :goto_0
.end method

.method private static 驶(Lcom/vivo/unionsdk/n;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 152
    if-nez p1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    new-instance v2, Lcom/vivo/unionsdk/c/g;

    invoke-direct {v2, v0}, Lcom/vivo/unionsdk/c/g;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/n;->始(Lcom/vivo/unionsdk/c/g;)V

    goto :goto_0
.end method
