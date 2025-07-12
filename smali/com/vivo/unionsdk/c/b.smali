.class public Lcom/vivo/unionsdk/c/b;
.super Ljava/lang/Object;
.source "CheckList.java"


# instance fields
.field private 士:Ljava/util/ArrayList;

.field private 始:Ljava/util/ArrayList;

.field private 式:Ljava/util/ArrayList;

.field private 示:Ljava/util/ArrayList;

.field private 藛:Ljava/util/ArrayList;

.field private 驶:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->驶:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->始:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->式:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->示:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->士:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/b;->藛:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public 士()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->士:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 始()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->始:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 始(Lcom/vivo/unionsdk/c/a;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->始:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public 始(Lcom/vivo/unionsdk/c/g;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->士:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public 式()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->式:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 式(Lcom/vivo/unionsdk/c/a;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->式:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public 示()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->示:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 藛()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->藛:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 驶()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->驶:Ljava/util/ArrayList;

    return-object v0
.end method

.method public 驶(Lcom/vivo/unionsdk/c/a;)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->驶:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public 驶(Lcom/vivo/unionsdk/c/c;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->藛:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public 驶(Lcom/vivo/unionsdk/c/g;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/unionsdk/c/b;->示:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
