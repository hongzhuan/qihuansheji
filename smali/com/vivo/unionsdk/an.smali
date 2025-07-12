.class Lcom/vivo/unionsdk/an;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/open/VivoPayInfo;

.field final synthetic 式:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field final synthetic 示:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iput-object p4, p0, Lcom/vivo/unionsdk/an;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x5dc

    const/4 v6, 0x1

    .line 330
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 332
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"

    invoke-static {v2}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v4, p0, Lcom/vivo/unionsdk/an;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget-object v5, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v5}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vivo/unionsdk/f;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getTransNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/an;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 339
    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getExtUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    if-ge v0, v7, :cond_2

    .line 341
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->unitConvert()V

    .line 342
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 343
    instance-of v2, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v2, :cond_9

    .line 344
    check-cast v0, Lcom/vivo/unionsdk/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/a/f;->驶(I)V

    .line 345
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 346
    invoke-virtual {v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 376
    :goto_0
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 377
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoPayInfo;)V

    .line 386
    :cond_1
    :goto_1
    return-void

    .line 349
    :cond_2
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    const/16 v2, 0x27

    iget-object v3, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    goto :goto_0

    .line 352
    :cond_3
    if-ge v0, v7, :cond_4

    .line 353
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 354
    instance-of v2, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v2, :cond_4

    .line 355
    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0, v6}, Lcom/vivo/unionsdk/a/f;->驶(I)V

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 360
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->藥(Lcom/vivo/unionsdk/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->藞()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setUid(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setExtUid(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->示()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setToken(Ljava/lang/String;)V

    .line 372
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoPayInfo;->toMapParams()Ljava/util/Map;

    move-result-object v2

    .line 373
    const-string v0, "sdkOpenid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    goto/16 :goto_0

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 368
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v2, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getExtUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->setUid(Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_7
    const-string v0, "UnionManager"

    const-string v2, "pay, mAppType is invalid type"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v6}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 381
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 382
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->始:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayInfo;)Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 383
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->式:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayCallback;)Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 384
    iget-object v0, p0, Lcom/vivo/unionsdk/an;->示:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/an;->驶:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method
