.class Lcom/vivo/unionsdk/cmd/HookUtil$1;
.super Landroid/app/Application;
.source "HookUtil.java"


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/HookUtil$1;->this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

    iput-object p2, p0, Lcom/vivo/unionsdk/cmd/HookUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 36
    return-void
.end method
