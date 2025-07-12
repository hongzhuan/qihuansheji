.class public abstract Lcom/vivo/unionsdk/a/a;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/unionsdk/a/a$a;
    }
.end annotation


# instance fields
.field protected 始:Ljava/lang/String;

.field protected 式:I

.field protected 示:Lcom/vivo/unionsdk/a/a$a;

.field protected 驶:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/vivo/unionsdk/a/a$a;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/a;->驶:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/vivo/unionsdk/a/a;->始:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/vivo/unionsdk/a/a;->式:I

    .line 17
    iput-object p4, p0, Lcom/vivo/unionsdk/a/a;->示:Lcom/vivo/unionsdk/a/a$a;

    .line 18
    return-void
.end method


# virtual methods
.method public 始()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/unionsdk/a/a;->始:Ljava/lang/String;

    return-object v0
.end method

.method public 式()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/vivo/unionsdk/a/a;->式:I

    return v0
.end method

.method public abstract 示()V
.end method

.method public 驶()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/vivo/unionsdk/u;->驶()Lcom/vivo/unionsdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/a;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/u;->驶(Ljava/lang/String;)V

    .line 23
    return-void
.end method
