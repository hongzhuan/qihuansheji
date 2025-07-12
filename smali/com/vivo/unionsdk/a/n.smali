.class Lcom/vivo/unionsdk/a/n;
.super Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;
.source "SdkToApkInvoker.java"


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/vivo/unionsdk/a/n;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 197
    const-string v0, "SdkToApkInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compat Pay Callback: payResult, transNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vivo/unionsdk/a/n;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/vivo/unionsdk/a/o;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/a/o;-><init>(Lcom/vivo/unionsdk/a/n;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    const-string v0, "SdkToApkInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compat Recharge Callback: rechargeResult, result_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/vivo/unionsdk/a/n;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/unionsdk/a/p;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/vivo/unionsdk/a/p;-><init>(Lcom/vivo/unionsdk/a/n;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method
