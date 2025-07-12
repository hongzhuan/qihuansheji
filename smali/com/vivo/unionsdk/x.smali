.class Lcom/vivo/unionsdk/x;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Landroid/app/Activity;

.field final synthetic 式:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoExitCallback;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/x;->驶:Lcom/vivo/unionsdk/open/VivoExitCallback;

    iput-object p3, p0, Lcom/vivo/unionsdk/x;->始:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/x;->驶:Lcom/vivo/unionsdk/open/VivoExitCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;)Lcom/vivo/unionsdk/open/VivoExitCallback;

    .line 217
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v1, :cond_2

    .line 219
    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->士()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->示(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoExitCallback;->onExitConfirm()V

    .line 221
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;)Lcom/vivo/unionsdk/open/VivoExitCallback;

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_1
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/x;->始:Landroid/app/Activity;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 225
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/x;->始:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->示(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoExitCallback;->onExitConfirm()V

    .line 229
    iget-object v0, p0, Lcom/vivo/unionsdk/x;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;)Lcom/vivo/unionsdk/open/VivoExitCallback;

    goto :goto_0
.end method
