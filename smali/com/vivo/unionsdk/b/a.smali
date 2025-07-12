.class public Lcom/vivo/unionsdk/b/a;
.super Ljava/lang/Object;
.source "DataLoadError.java"


# instance fields
.field private 始:I

.field private 式:Ljava/lang/String;

.field private 驶:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/b/a;->驶:Z

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/unionsdk/b/a;->始:I

    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string v0, "vivo_load_network_error"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/b/a;->式:Ljava/lang/String;

    .line 20
    :cond_0
    return-void
.end method
