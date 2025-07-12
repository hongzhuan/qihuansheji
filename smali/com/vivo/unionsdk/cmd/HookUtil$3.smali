.class Lcom/vivo/unionsdk/cmd/HookUtil$3;
.super Landroid/app/Activity;
.source "HookUtil.java"


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/HookUtil;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->this$0:Lcom/vivo/unionsdk/cmd/HookUtil;

    iput-object p2, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/HookUtil$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 79
    return-void
.end method
