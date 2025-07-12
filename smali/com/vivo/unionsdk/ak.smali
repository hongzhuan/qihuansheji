.class Lcom/vivo/unionsdk/ak;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 始:Lcom/vivo/unionsdk/open/VivoAccountCallback;

.field final synthetic 式:Lcom/vivo/unionsdk/w;

.field final synthetic 驶:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vivo/unionsdk/ak;->式:Lcom/vivo/unionsdk/w;

    iput-object p2, p0, Lcom/vivo/unionsdk/ak;->驶:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vivo/unionsdk/ak;->始:Lcom/vivo/unionsdk/open/VivoAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vivo/unionsdk/ak;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/vivo/unionsdk/ak;->式:Lcom/vivo/unionsdk/w;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ak;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ak;->驶:Landroid/app/Activity;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 275
    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/vivo/unionsdk/ak;->式:Lcom/vivo/unionsdk/w;

    invoke-static {v1}, Lcom/vivo/unionsdk/w;->藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/ak;->驶:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/vivo/unionsdk/ak;->始:Lcom/vivo/unionsdk/open/VivoAccountCallback;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method
