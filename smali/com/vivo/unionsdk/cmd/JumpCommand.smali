.class public Lcom/vivo/unionsdk/cmd/JumpCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "JumpCommand.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/Map;)V
    .locals 2

    .prologue
    .line 23
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mActivity:Landroid/app/Activity;

    .line 25
    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p0, p3}, Lcom/vivo/unionsdk/cmd/JumpCommand;->addParams(Ljava/util/Map;)V

    .line 28
    :cond_0
    const-string v0, "j_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/JumpCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "vivounion://union.vivo.com/openjump"

    invoke-virtual {p0}, Lcom/vivo/unionsdk/cmd/JumpCommand;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/ar;->驶(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mUri:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 34
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mUri:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public doJump()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/unionsdk/cmd/JumpCommand;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 44
    return-void
.end method

.method public doJumpCompatApk()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->式()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 48
    const-string v1, "j_type"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/JumpCommand;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/vivo/unionsdk/cmd/JumpCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/a;->始()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/unionsdk/cmd/JumpCommand;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpForCompatApk(Landroid/app/Activity;ILjava/lang/String;Ljava/util/Map;)Z

    .line 50
    return-void
.end method
