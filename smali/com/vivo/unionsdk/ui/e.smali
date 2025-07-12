.class Lcom/vivo/unionsdk/ui/e;
.super Ljava/lang/Object;
.source "PermissionAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/ui/d;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/ui/d;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vivo/unionsdk/ui/e;->驶:Lcom/vivo/unionsdk/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    const-string v1, "package"

    iget-object v2, p0, Lcom/vivo/unionsdk/ui/e;->驶:Lcom/vivo/unionsdk/ui/d;

    iget-object v2, v2, Lcom/vivo/unionsdk/ui/d;->驶:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/e;->驶:Lcom/vivo/unionsdk/ui/d;

    iget-object v1, v1, Lcom/vivo/unionsdk/ui/d;->驶:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/e;->驶:Lcom/vivo/unionsdk/ui/d;

    invoke-static {v0}, Lcom/vivo/unionsdk/ui/d;->驶(Lcom/vivo/unionsdk/ui/d;)Lcom/vivo/unionsdk/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 83
    return-void
.end method
