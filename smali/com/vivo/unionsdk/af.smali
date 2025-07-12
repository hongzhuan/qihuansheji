.class Lcom/vivo/unionsdk/af;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 士:Lcom/vivo/unionsdk/w;

.field final synthetic 始:Lcom/vivo/unionsdk/open/VivoCallback;

.field final synthetic 式:Ljava/lang/String;

.field final synthetic 示:Ljava/lang/String;

.field final synthetic 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/vivo/unionsdk/af;->士:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/af;->驶:Landroid/content/Context;

    iput-object p3, p0, Lcom/vivo/unionsdk/af;->始:Lcom/vivo/unionsdk/open/VivoCallback;

    iput-object p4, p0, Lcom/vivo/unionsdk/af;->式:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/unionsdk/af;->示:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/vivo/unionsdk/af;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/vivo/unionsdk/af;->驶:Landroid/content/Context;

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x280

    if-gt v0, v1, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/vivo/unionsdk/af;->始:Lcom/vivo/unionsdk/open/VivoCallback;

    iget-object v1, p0, Lcom/vivo/unionsdk/af;->式:Ljava/lang/String;

    const-string v2, "-1"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/unionsdk/open/VivoCallback;->onCallbackResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/af;->士:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->岽(Lcom/vivo/unionsdk/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/af;->式:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/unionsdk/af;->始:Lcom/vivo/unionsdk/open/VivoCallback;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v0, Lcom/vivo/unionsdk/open/VivoUnionCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/open/VivoUnionCommand;-><init>()V

    .line 1145
    iget-object v1, p0, Lcom/vivo/unionsdk/af;->式:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/unionsdk/af;->示:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/open/VivoUnionCommand;->setCommandParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/af;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0
.end method
