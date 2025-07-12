.class Lcom/vivo/unionsdk/ui/f;
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
    .line 86
    iput-object p1, p0, Lcom/vivo/unionsdk/ui/f;->驶:Lcom/vivo/unionsdk/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/f;->驶:Lcom/vivo/unionsdk/ui/d;

    invoke-static {v0}, Lcom/vivo/unionsdk/ui/d;->驶(Lcom/vivo/unionsdk/ui/d;)Lcom/vivo/unionsdk/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 90
    return-void
.end method
