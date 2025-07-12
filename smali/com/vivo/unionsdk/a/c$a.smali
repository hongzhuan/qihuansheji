.class public Lcom/vivo/unionsdk/a/c$a;
.super Ljava/lang/Object;
.source "ResourceInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private 始:Ljava/lang/String;

.field private 式:Landroid/content/Context;

.field private 示:Landroid/content/res/Resources;

.field private 驶:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/a/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c$a;->始:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c$a;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c$a;->式:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c$a;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c$a;->示:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c$a;->驶:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkResource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/c$a;->驶:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/c$a;->始:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 始()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$a;->始:Ljava/lang/String;

    return-object v0
.end method

.method public 式()Landroid/content/Context;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$a;->式:Landroid/content/Context;

    return-object v0
.end method

.method public 示()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$a;->示:Landroid/content/res/Resources;

    return-object v0
.end method

.method public 驶()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$a;->驶:Ljava/lang/String;

    return-object v0
.end method
