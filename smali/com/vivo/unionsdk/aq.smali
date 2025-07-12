.class Lcom/vivo/unionsdk/aq;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:I


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;I)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/vivo/unionsdk/aq;->始:Lcom/vivo/unionsdk/w;

    iput p2, p0, Lcom/vivo/unionsdk/aq;->驶:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 577
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSdkInit, reinit, initCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/unionsdk/aq;->驶:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/vivo/unionsdk/aq;->始:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->驶()V

    .line 579
    return-void
.end method
