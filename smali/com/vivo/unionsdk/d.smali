.class Lcom/vivo/unionsdk/d;
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
    .line 178
    iput-object p1, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    iput-object p2, p0, Lcom/vivo/unionsdk/d;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->藛(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v1}, Lcom/vivo/unionsdk/a;->藞(Lcom/vivo/unionsdk/a;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    const/4 v1, 0x1

    const/4 v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;ZI)V

    .line 187
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "key"

    const-string v2, "021"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "value"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v1}, Lcom/vivo/unionsdk/a;->藠(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v2}, Lcom/vivo/unionsdk/a;->藡(Lcom/vivo/unionsdk/a;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v3}, Lcom/vivo/unionsdk/a;->藥(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/vivo/unionsdk/d;->驶:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 192
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    iget-object v1, p0, Lcom/vivo/unionsdk/d;->始:Lcom/vivo/unionsdk/a;

    invoke-static {v1}, Lcom/vivo/unionsdk/a;->藟(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/a;->始(Lcom/vivo/unionsdk/a;Ljava/lang/String;)Z

    goto :goto_0
.end method
