.class Lcom/vivo/unionsdk/aa;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/w;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/vivo/unionsdk/aa;->驶:Lcom/vivo/unionsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/vivo/unionsdk/aa;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->驶()V

    .line 920
    iget-object v0, p0, Lcom/vivo/unionsdk/aa;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/vivo/unionsdk/aa;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->始()V

    .line 923
    :cond_0
    return-void
.end method
