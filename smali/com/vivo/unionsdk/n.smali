.class public Lcom/vivo/unionsdk/n;
.super Ljava/lang/Object;
.source "Package.java"


# instance fields
.field private 士:Landroid/os/Bundle;

.field private 始:Ljava/util/Map;

.field private 式:Ljava/util/Map;

.field private 示:Ljava/util/Map;

.field private 驶:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/n;->驶:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/n;->始:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/n;->式:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/n;->示:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public 士()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->士:Landroid/os/Bundle;

    return-object v0
.end method

.method public 始()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->始:Ljava/util/Map;

    return-object v0
.end method

.method public 始(Lcom/vivo/unionsdk/c/a;)V
    .locals 2

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->始:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/a;->式()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public 始(Lcom/vivo/unionsdk/c/g;)V
    .locals 2

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->示:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/g;->式()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public 式()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->式:Ljava/util/Map;

    return-object v0
.end method

.method public 示()Ljava/util/Map;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->示:Ljava/util/Map;

    return-object v0
.end method

.method public 驶()Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->驶:Ljava/util/Map;

    return-object v0
.end method

.method public 驶(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/n;->士:Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public 驶(Lcom/vivo/unionsdk/c/a;)V
    .locals 2

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->驶:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/a;->式()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public 驶(Lcom/vivo/unionsdk/c/g;)V
    .locals 2

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/n;->式:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/g;->式()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
