.class Lcom/vivo/unionsdk/c;
.super Ljava/lang/Object;
.source "ApkInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/a;

.field final synthetic 驶:Lcom/vivo/unionsdk/ui/g;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vivo/unionsdk/c;->始:Lcom/vivo/unionsdk/a;

    iput-object p2, p0, Lcom/vivo/unionsdk/c;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vivo/unionsdk/c;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->士(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpToAppStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/vivo/unionsdk/c;->始:Lcom/vivo/unionsdk/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a;->藥()V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/c;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 153
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/c;->始:Lcom/vivo/unionsdk/a;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;ZI)V

    goto :goto_0
.end method
