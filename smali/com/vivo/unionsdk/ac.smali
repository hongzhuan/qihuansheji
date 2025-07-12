.class Lcom/vivo/unionsdk/ac;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/ab;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/ab;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->讬(Lcom/vivo/unionsdk/w;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->式(I)V

    .line 1023
    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->賭(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->藛()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/vivo/unionsdk/ac;->驶:Lcom/vivo/unionsdk/ab;

    iget-object v0, v0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->賭(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->士()V

    .line 1029
    :cond_1
    return-void
.end method
