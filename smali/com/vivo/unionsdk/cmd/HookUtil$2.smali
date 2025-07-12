.class Lcom/vivo/unionsdk/cmd/HookUtil$2;
.super Landroid/content/ContextWrapper;
.source "HookUtil.java"


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;Ljava/lang/String;Landroid/app/Application;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

    iput-object p3, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$application:Landroid/app/Application;

    iput-object p5, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$application:Landroid/app/Application;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$2;->val$pkgName:Ljava/lang/String;

    return-object v0
.end method
