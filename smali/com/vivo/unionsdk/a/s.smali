.class public Lcom/vivo/unionsdk/a/s;
.super Lcom/vivo/unionsdk/a/a;
.source "SdkToSdkInvoker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/vivo/unionsdk/a/a$a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/unionsdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vivo/unionsdk/a/a$a;)V

    .line 12
    return-void
.end method


# virtual methods
.method public 示()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/vivo/unionsdk/m$a;->式:Lcom/vivo/unionsdk/m$a;

    invoke-static {v0}, Lcom/vivo/unionsdk/m;->驶(Lcom/vivo/unionsdk/m$a;)V

    .line 17
    iget-object v0, p0, Lcom/vivo/unionsdk/a/s;->示:Lcom/vivo/unionsdk/a/a$a;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vivo/unionsdk/a/s;->示:Lcom/vivo/unionsdk/a/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/unionsdk/a/a$a;->驶(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public 驶()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/vivo/unionsdk/a/a;->驶()V

    .line 26
    return-void
.end method
