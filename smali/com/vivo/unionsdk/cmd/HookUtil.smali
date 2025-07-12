.class public Lcom/vivo/unionsdk/cmd/HookUtil;
.super Ljava/lang/Object;
.source "HookUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HookUtil"


# instance fields
.field private mHookActivity:Landroid/app/Activity;

.field private mHookApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hookActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Activity;
    .locals 7

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Lcom/vivo/unionsdk/cmd/HookUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/vivo/unionsdk/cmd/HookUtil$3;-><init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/app/Activity;)V

    .line 86
    new-instance v1, Lcom/vivo/unionsdk/cmd/HookUtil$4;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/vivo/unionsdk/cmd/HookUtil$4;-><init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V

    .line 105
    const-class v2, Landroid/content/ContextWrapper;

    const-string v3, "attachBaseContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil;->mHookActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil;->mHookActivity:Landroid/app/Activity;

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hookApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Application;
    .locals 7

    .prologue
    .line 28
    :try_start_0
    new-instance v4, Lcom/vivo/unionsdk/cmd/HookUtil$1;

    invoke-direct {v4, p0, p1}, Lcom/vivo/unionsdk/cmd/HookUtil$1;-><init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/vivo/unionsdk/cmd/HookUtil$2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/cmd/HookUtil$2;-><init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;Ljava/lang/String;Landroid/app/Application;Landroid/content/Context;)V

    .line 53
    const-class v1, Landroid/content/ContextWrapper;

    const-string v2, "attachBaseContext"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object v4, p0, Lcom/vivo/unionsdk/cmd/HookUtil;->mHookApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil;->mHookApplication:Landroid/app/Application;

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method
