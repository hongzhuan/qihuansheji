.class public Lcom/vivo/ic/channelunit/item/Result;
.super Lcom/vivo/ic/channelunit/item/TraceMap;
.source "Result.java"


# instance fields
.field public mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/ic/channelunit/item/TraceMap;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vivo/ic/channelunit/item/TraceMap;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/vivo/ic/channelunit/item/Result;->mSuccess:Z

    .line 17
    iput-object p2, p0, Lcom/vivo/ic/channelunit/item/Result;->mPkg:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/vivo/ic/channelunit/item/Result;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "errCLS"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/Result;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "errMsg"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/Result;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "errPkg"

    iget-object v2, p0, Lcom/vivo/ic/channelunit/item/Result;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-object v0
.end method
