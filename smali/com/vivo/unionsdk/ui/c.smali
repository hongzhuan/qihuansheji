.class public Lcom/vivo/unionsdk/ui/c;
.super Ljava/lang/Object;
.source "JumpItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private 始:Ljava/util/HashMap;

.field private 驶:I


# direct methods
.method private constructor <init>(ILjava/util/Map;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/unionsdk/ui/c;->驶:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/c;->始:Ljava/util/HashMap;

    .line 24
    iput p1, p0, Lcom/vivo/unionsdk/ui/c;->驶:I

    .line 25
    if-eqz p2, :cond_0

    .line 26
    const-string v0, "j_type"

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p2}, Lcom/vivo/unionsdk/ui/c;->驶(Ljava/util/Map;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static 驶(Landroid/content/Intent;)Lcom/vivo/unionsdk/ui/c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string v0, "JumpItem"

    const-string v2, "newJumpItemFromIntent ERROR: null intent!"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v3, "vivounion"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    const-string v0, "JumpItem"

    const-string v2, "newJumpItemFromIntent ERROR: illegal uri!"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v5, "union.vivo.com"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "/openjump"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 48
    :cond_2
    const-string v0, "JumpItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newJumpItemFromIntent ERROR: illegal host or path, host = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/ar;->驶(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 68
    const-string v0, "JumpItem"

    const-string v2, "newJumpItemFromIntent ERROR: no params!"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 57
    if-nez v3, :cond_6

    .line 58
    const-string v0, "JumpItem"

    const-string v2, "newJumpItemFromIntent ERROR: null bundle!"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 59
    goto/16 :goto_0

    .line 62
    :cond_6
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_7
    const-string v0, "j_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 73
    const-string v2, "JumpItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newJumpItemFromIntent ERROR: illegal fakeType! fakeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 74
    goto/16 :goto_0

    .line 77
    :cond_8
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v1

    .line 78
    new-instance v0, Lcom/vivo/unionsdk/ui/c;

    invoke-direct {v0, v1, v2}, Lcom/vivo/unionsdk/ui/c;-><init>(ILjava/util/Map;)V

    goto/16 :goto_0
.end method

.method private 驶(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/c;->始:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public 始()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/c;->始:Ljava/util/HashMap;

    return-object v0
.end method

.method public 驶()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vivo/unionsdk/ui/c;->驶:I

    return v0
.end method
