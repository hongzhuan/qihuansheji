.class Lcom/vivo/unionsdk/am;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoRoleInfo;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRoleInfo;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/vivo/unionsdk/am;->始:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/am;->驶:Lcom/vivo/unionsdk/open/VivoRoleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vivo/unionsdk/am;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/vivo/unionsdk/am;->驶:Lcom/vivo/unionsdk/open/VivoRoleInfo;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;->setCommandParams(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V

    .line 320
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/am;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 322
    :cond_0
    return-void
.end method
