.class Lcom/vivo/unionsdk/ag;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/vivo/unionsdk/ag;->始:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ag;->驶:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/vivo/unionsdk/ag;->始:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ag;->驶:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    .line 1180
    iget-object v0, p0, Lcom/vivo/unionsdk/ag;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/ag;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->示()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/vivo/unionsdk/ag;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vivo%e6%9c%8d%e5%8a%a1%e5%ae%89%e5%85%a8%e6%8f%92%e4%bb%b6%e6%ad%a3%e5%9c%a8%e5%88%9d%e5%a7%8b%e5%8c%96%ef%bc%8c%e8%af%b7%e7%a8%8d%e5%80%99..."

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1183
    :cond_0
    return-void
.end method
