.class Lcom/vivo/unionsdk/e;
.super Ljava/lang/Object;
.source "ApkInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/a;

.field final synthetic 驶:Lcom/vivo/unionsdk/ui/g;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    iput-object p2, p0, Lcom/vivo/unionsdk/e;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->藦(Lcom/vivo/unionsdk/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x4

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;ZI)V

    .line 202
    iget-object v0, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->藦(Lcom/vivo/unionsdk/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v1, "key"

    const-string v2, "021"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "value"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v1}, Lcom/vivo/unionsdk/a;->藨(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v2}, Lcom/vivo/unionsdk/a;->讬(Lcom/vivo/unionsdk/a;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v3}, Lcom/vivo/unionsdk/a;->賭(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/vivo/unionsdk/e;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 214
    return-void

    .line 200
    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    const-string v1, "key"

    const-string v2, "021"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "value"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v1}, Lcom/vivo/unionsdk/a;->俅(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v2}, Lcom/vivo/unionsdk/a;->釔(Lcom/vivo/unionsdk/a;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/unionsdk/e;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v3}, Lcom/vivo/unionsdk/a;->岽(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
