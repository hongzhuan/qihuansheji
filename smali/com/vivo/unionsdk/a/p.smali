.class Lcom/vivo/unionsdk/a/p;
.super Ljava/lang/Object;
.source "SdkToApkInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Ljava/lang/String;

.field final synthetic 式:Ljava/lang/String;

.field final synthetic 示:Lcom/vivo/unionsdk/a/n;

.field final synthetic 驶:Z


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/n;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/vivo/unionsdk/a/p;->示:Lcom/vivo/unionsdk/a/n;

    iput-boolean p2, p0, Lcom/vivo/unionsdk/a/p;->驶:Z

    iput-object p3, p0, Lcom/vivo/unionsdk/a/p;->始:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/unionsdk/a/p;->式:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/vivo/unionsdk/a/p;->驶:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "6001"

    iget-object v1, p0, Lcom/vivo/unionsdk/a/p;->始:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;Z)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/p;->始:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/unionsdk/a/p;->式:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
