.class Lcom/vivo/unionsdk/ao;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 士:Lcom/vivo/unionsdk/w;

.field final synthetic 始:Landroid/app/Activity;

.field final synthetic 式:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field final synthetic 示:I

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoPayInfo;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayInfo;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iput-object p3, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    iput-object p4, p0, Lcom/vivo/unionsdk/ao;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iput p5, p0, Lcom/vivo/unionsdk/ao;->示:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 394
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 396
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getExtUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v3, p0, Lcom/vivo/unionsdk/ao;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget v4, p0, Lcom/vivo/unionsdk/ao;->示:I

    iget-object v5, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v5}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/unionsdk/f;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getExtUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 407
    const/16 v2, 0x5dc

    if-ge v0, v2, :cond_3

    .line 408
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->unitConvert()V

    .line 409
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v2

    .line 410
    const-string v0, "frontPayType"

    iget v3, p0, Lcom/vivo/unionsdk/ao;->示:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 412
    instance-of v3, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v3, :cond_8

    .line 413
    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0, v7}, Lcom/vivo/unionsdk/a/f;->驶(I)V

    .line 414
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v3, v2}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 438
    :goto_1
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 439
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoPayInfo;)V

    .line 449
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v6, v7

    .line 400
    goto/16 :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v1

    .line 419
    const-string v0, "frontPayType"

    iget v2, p0, Lcom/vivo/unionsdk/ao;->示:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    const/16 v3, 0x27

    invoke-direct {v0, v2, v3, v1}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    goto :goto_1

    .line 424
    :cond_4
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->藥(Lcom/vivo/unionsdk/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_5

    .line 426
    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->藞()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setUid(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setExtUid(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->示()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setToken(Ljava/lang/String;)V

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 431
    iget-object v2, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v2

    .line 432
    const-string v3, "frontPayType"

    iget v4, p0, Lcom/vivo/unionsdk/ao;->示:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    instance-of v0, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v0, :cond_7

    .line 434
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    const/16 v3, 0x28

    invoke-direct {v0, v1, v3, v2}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    goto/16 :goto_1

    .line 442
    :cond_6
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 443
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 444
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->驶:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayInfo;)Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 445
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayCallback;)Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 446
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget v1, p0, Lcom/vivo/unionsdk/ao;->示:I

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;I)I

    .line 447
    iget-object v0, p0, Lcom/vivo/unionsdk/ao;->士:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ao;->始:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method
