.class Lcom/vivo/unionsdk/a/j;
.super Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;
.source "SdkToApkInvoker.java"


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vivo/unionsdk/a/j;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public loginCancel()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "SdkToApkInvoker"

    const-string v1, "Compat Account Callback: loginCancel-------------"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/vivo/unionsdk/a/j;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/unionsdk/a/l;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/a/l;-><init>(Lcom/vivo/unionsdk/a/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public loginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 157
    const-string v0, "SdkToApkInvoker"

    const-string v1, "Compat Account Callback: loginResult-------------"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/vivo/sdkplugin/a/d;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/a/d;-><init>()V

    .line 159
    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/a/d;->藟(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p2}, Lcom/vivo/sdkplugin/a/d;->驶(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p3}, Lcom/vivo/sdkplugin/a/d;->士(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/vivo/unionsdk/a/j;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v1}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/a/k;

    invoke-direct {v2, p0, v0}, Lcom/vivo/unionsdk/a/k;-><init>(Lcom/vivo/unionsdk/a/j;Lcom/vivo/sdkplugin/a/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public updateCancel()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "SdkToApkInvoker"

    const-string v1, "Compat Account Callback: updateCancel-------------"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/vivo/unionsdk/a/j;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/unionsdk/a/m;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/a/m;-><init>(Lcom/vivo/unionsdk/a/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
