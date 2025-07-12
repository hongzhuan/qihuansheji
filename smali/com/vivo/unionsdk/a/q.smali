.class Lcom/vivo/unionsdk/a/q;
.super Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;
.source "SdkToApkInvoker.java"


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vivo/unionsdk/a/q;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 233
    const-string v0, "SdkToApkInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compat Signle Pay Callback: payResult, transNo = "

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

    .line 234
    iget-object v0, p0, Lcom/vivo/unionsdk/a/q;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/vivo/unionsdk/a/r;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/a/r;-><init>(Lcom/vivo/unionsdk/a/q;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method
