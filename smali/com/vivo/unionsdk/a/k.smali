.class Lcom/vivo/unionsdk/a/k;
.super Ljava/lang/Object;
.source "SdkToApkInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/a/j;

.field final synthetic 驶:Lcom/vivo/sdkplugin/a/d;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/j;Lcom/vivo/sdkplugin/a/d;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vivo/unionsdk/a/k;->始:Lcom/vivo/unionsdk/a/j;

    iput-object p2, p0, Lcom/vivo/unionsdk/a/k;->驶:Lcom/vivo/sdkplugin/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/k;->始:Lcom/vivo/unionsdk/a/j;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/j;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a/k;->驶:Lcom/vivo/sdkplugin/a/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;Lcom/vivo/sdkplugin/a/d;Lcom/vivo/sdkplugin/a/d;)V

    .line 166
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/k;->驶:Lcom/vivo/sdkplugin/a/d;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/sdkplugin/a/d;)V

    .line 167
    return-void
.end method
