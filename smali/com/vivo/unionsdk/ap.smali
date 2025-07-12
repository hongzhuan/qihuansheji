.class Lcom/vivo/unionsdk/ap;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field final synthetic 式:Landroid/app/Activity;

.field final synthetic 示:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    iput-object p3, p0, Lcom/vivo/unionsdk/ap;->始:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iput-object p4, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 457
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v4}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 459
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {}, Lcom/vivo/unionsdk/w;->藦()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->setTransNo(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->toMapParams()Ljava/util/Map;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->getTransNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/ap;->始:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v1, "isRecharge"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x26e

    if-ge v1, v2, :cond_1

    .line 464
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_0
    return-void

    .line 472
    :cond_1
    new-instance v1, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v2, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v0}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 474
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 477
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->驶:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRechargeInfo;)Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    .line 478
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->始:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayCallback;)Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 479
    iget-object v0, p0, Lcom/vivo/unionsdk/ap;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ap;->式:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    goto :goto_0
.end method
