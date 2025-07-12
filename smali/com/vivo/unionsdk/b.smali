.class Lcom/vivo/unionsdk/b;
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
    .line 137
    iput-object p1, p0, Lcom/vivo/unionsdk/b;->始:Lcom/vivo/unionsdk/a;

    iput-object p2, p0, Lcom/vivo/unionsdk/b;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vivo/unionsdk/b;->始:Lcom/vivo/unionsdk/a;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;ZI)V

    .line 141
    iget-object v0, p0, Lcom/vivo/unionsdk/b;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 142
    return-void
.end method
