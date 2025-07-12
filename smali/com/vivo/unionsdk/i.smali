.class public Lcom/vivo/unionsdk/i;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static 始:Ljava/lang/String;

.field private static 式:Ljava/lang/String;

.field private static 驶:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/vivo/unionsdk/i;->始:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/vivo/unionsdk/i;->式:Ljava/lang/String;

    return-void
.end method

.method public static 始()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/vivo/unionsdk/i;->始:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/vivo/unionsdk/k;->驶()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/unionsdk/i;->始:Ljava/lang/String;

    .line 34
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/i;->始:Ljava/lang/String;

    return-object v0
.end method

.method public static 驶()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/unionsdk/i;->式:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/vivo/unionsdk/j;->始()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/unionsdk/i;->式:Ljava/lang/String;

    .line 27
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/i;->式:Ljava/lang/String;

    return-object v0
.end method

.method public static 驶(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vivo/unionsdk/i;->驶:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0}, Lcom/vivo/unionsdk/k;->驶(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/unionsdk/i;->驶:Ljava/lang/String;

    .line 17
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/i;->驶:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-string v0, "012345678987654"

    sput-object v0, Lcom/vivo/unionsdk/i;->驶:Ljava/lang/String;

    .line 20
    :cond_1
    sget-object v0, Lcom/vivo/unionsdk/i;->驶:Ljava/lang/String;

    return-object v0
.end method
