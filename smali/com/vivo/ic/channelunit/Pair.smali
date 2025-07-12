.class public final Lcom/vivo/ic/channelunit/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field private final mFirst:Ljava/lang/Object;

.field private final mSecond:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/vivo/ic/channelunit/Pair;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/vivo/ic/channelunit/Pair;

    invoke-direct {v0, p0, p1}, Lcom/vivo/ic/channelunit/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    check-cast p1, Lcom/vivo/ic/channelunit/Pair;

    .line 81
    iget-object v2, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 82
    iget-object v2, p1, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    iget-object v3, p1, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 89
    iget-object v2, p1, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_6
    iget-object v2, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    iget-object v3, p1, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    .line 54
    iget-object v0, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 56
    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/ic/channelunit/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , second = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/ic/channelunit/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
