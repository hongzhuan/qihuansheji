.class Lcom/vivo/unionsdk/z;
.super Landroid/content/BroadcastReceiver;
.source "UnionManager.java"


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/w;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    .line 896
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 897
    const/4 v0, 0x0

    .line 898
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 899
    if-eqz v2, :cond_0

    .line 900
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 902
    :cond_0
    const-string v2, "UnionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "com.vivo.sdkplugin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 906
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藦(Lcom/vivo/unionsdk/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    iget-object v0, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藦(Lcom/vivo/unionsdk/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 909
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藦(Lcom/vivo/unionsdk/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 911
    iget-object v0, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/z;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藦(Lcom/vivo/unionsdk/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
