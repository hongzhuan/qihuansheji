.class Lcom/vivo/unionsdk/cmd/HookUtil$4;
.super Landroid/content/ContextWrapper;
.source "HookUtil.java"


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

    iput-object p3, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method
