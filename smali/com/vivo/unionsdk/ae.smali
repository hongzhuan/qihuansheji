.class Lcom/vivo/unionsdk/ae;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Landroid/app/Activity;

.field final synthetic 式:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ae;->驶:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    iput-object p3, p0, Lcom/vivo/unionsdk/ae;->始:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ae;->驶:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    .line 1106
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->始:Landroid/app/Activity;

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1107
    if-lez v0, :cond_1

    const/16 v1, 0x280

    if-ge v0, v1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->釔(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->釔(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;->onGetRealNameInfoFailed()V

    .line 1111
    iget-object v0, p0, Lcom/vivo/unionsdk/ae;->式:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    new-instance v0, Lcom/vivo/unionsdk/cmd/GetRealNameInfoCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/GetRealNameInfoCommand;-><init>()V

    .line 1115
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ae;->始:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0
.end method
