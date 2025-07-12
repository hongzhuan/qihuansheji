.class Lcom/vivo/unionsdk/ah;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 士:Ljava/lang/String;

.field final synthetic 始:Ljava/lang/String;

.field final synthetic 式:Ljava/lang/String;

.field final synthetic 示:Ljava/lang/String;

.field final synthetic 藛:Landroid/app/Activity;

.field final synthetic 藞:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/sdkplugin/a/d;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/sdkplugin/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ah;->驶:Lcom/vivo/sdkplugin/a/d;

    iput-object p3, p0, Lcom/vivo/unionsdk/ah;->始:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/unionsdk/ah;->式:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/unionsdk/ah;->示:Ljava/lang/String;

    iput-object p6, p0, Lcom/vivo/unionsdk/ah;->士:Ljava/lang/String;

    iput-object p7, p0, Lcom/vivo/unionsdk/ah;->藛:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1208
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ah;->驶:Lcom/vivo/sdkplugin/a/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;Lcom/vivo/sdkplugin/a/d;Lcom/vivo/sdkplugin/a/d;)V

    .line 1210
    new-instance v0, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;-><init>()V

    .line 1211
    iget-object v1, p0, Lcom/vivo/unionsdk/ah;->始:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/unionsdk/ah;->式:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/unionsdk/ah;->示:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/unionsdk/ah;->士:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;->setCommandParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 1213
    iget-object v0, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ah;->藛:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1214
    iget-object v0, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 1215
    iget-object v0, p0, Lcom/vivo/unionsdk/ah;->藞:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/ah;->藛:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->示(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    .line 1216
    return-void
.end method
