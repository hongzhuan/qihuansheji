.class Lcom/vivo/unionsdk/al;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Lcom/vivo/unionsdk/open/VivoCommunityCallback;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoCommunityCallback;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/al;->驶:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->士(Lcom/vivo/unionsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/al;->驶:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoCommunityCallback;)Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    .line 291
    iget-object v0, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 292
    instance-of v1, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v1, :cond_1

    .line 293
    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->藛()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藠(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/vivo/unionsdk/open/VivoCommunityCallback;->onCommunityResult(ZLjava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoCommunityCallback;)Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    new-instance v0, Lcom/vivo/unionsdk/cmd/RequestCommunityCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RequestCommunityCommand;-><init>()V

    .line 300
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/al;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v2}, Lcom/vivo/unionsdk/w;->始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0
.end method
