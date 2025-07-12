.class Lcom/vivo/unionsdk/aj;
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
    .line 236
    iput-object p1, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 241
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/f;->驶(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v1, "loginFromAssist"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "lastLoginOpenId"

    iget-object v2, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    .line 248
    invoke-static {v2}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/unionsdk/g;->始()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-static {v1}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/vivo/unionsdk/t;->驶(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "UnionManager"

    const-string v2, "login, reportActivate is true"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "isActivate"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    new-instance v1, Lcom/vivo/unionsdk/cmd/JumpCommand;

    iget-object v2, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 254
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 262
    :cond_2
    :goto_0
    return-void

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;I)I

    .line 258
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 259
    iget-object v0, p0, Lcom/vivo/unionsdk/aj;->始:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/aj;->驶:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    .line 260
    const-string v0, "UnionManager"

    const-string v1, "checkSdkInit = false"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
