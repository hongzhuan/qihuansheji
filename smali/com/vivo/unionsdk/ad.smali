.class Lcom/vivo/unionsdk/ad;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/w;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/vivo/unionsdk/ad;->驶:Lcom/vivo/unionsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/vivo/unionsdk/ad;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/vivo/unionsdk/ad;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/unionsdk/a/b;->驶(Landroid/content/res/Configuration;)V

    .line 1040
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ad;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/cmd/ConfigurationChangedCommand;

    invoke-direct {v2}, Lcom/vivo/unionsdk/cmd/ConfigurationChangedCommand;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 1043
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method
