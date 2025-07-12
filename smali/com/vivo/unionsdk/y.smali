.class Lcom/vivo/unionsdk/y;
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
    .line 653
    iput-object p1, p0, Lcom/vivo/unionsdk/y;->驶:Lcom/vivo/unionsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 656
    const-string v0, "UnionManager"

    const-string v1, "HookThread: system exit!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/vivo/unionsdk/y;->驶:Lcom/vivo/unionsdk/w;

    iget-object v1, p0, Lcom/vivo/unionsdk/y;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藥(Lcom/vivo/unionsdk/w;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "[JVM Exit]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Ljava/lang/String;JLjava/lang/String;)V

    .line 658
    return-void
.end method
