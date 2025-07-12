.class Lcom/vivo/unionsdk/a/g;
.super Ljava/lang/Object;
.source "SdkToApkInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vivo/unionsdk/a/g;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/unionsdk/a/g;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/a/f;)Z

    move-result v0

    .line 54
    const-string v1, "SdkToApkInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initInvoker, mApkVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a/g;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v3}, Lcom/vivo/unionsdk/a/f;->始(Lcom/vivo/unionsdk/a/f;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/a/g;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v0, v0, Lcom/vivo/unionsdk/a/f;->示:Lcom/vivo/unionsdk/a/a$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vivo/unionsdk/a/g;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v0, v0, Lcom/vivo/unionsdk/a/f;->示:Lcom/vivo/unionsdk/a/a$a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/vivo/unionsdk/a/a$a;->驶(I)V

    .line 58
    :cond_0
    return-void
.end method
