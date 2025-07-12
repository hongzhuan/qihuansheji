.class public final enum Lcom/vivo/unionsdk/m$a;
.super Ljava/lang/Enum;
.source "LOG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic 士:[Lcom/vivo/unionsdk/m$a;

.field public static final enum 始:Lcom/vivo/unionsdk/m$a;

.field public static final enum 式:Lcom/vivo/unionsdk/m$a;

.field public static final enum 驶:Lcom/vivo/unionsdk/m$a;


# instance fields
.field private 示:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/vivo/unionsdk/m$a;

    const-string v1, "APKTOAPK"

    const-string v2, "[AA]"

    invoke-direct {v0, v1, v3, v2}, Lcom/vivo/unionsdk/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vivo/unionsdk/m$a;->驶:Lcom/vivo/unionsdk/m$a;

    new-instance v0, Lcom/vivo/unionsdk/m$a;

    const-string v1, "SDKTOAPK"

    const-string v2, "[SA]"

    invoke-direct {v0, v1, v4, v2}, Lcom/vivo/unionsdk/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vivo/unionsdk/m$a;->始:Lcom/vivo/unionsdk/m$a;

    new-instance v0, Lcom/vivo/unionsdk/m$a;

    const-string v1, "SDKTOSDK"

    const-string v2, "[SS]"

    invoke-direct {v0, v1, v5, v2}, Lcom/vivo/unionsdk/m$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vivo/unionsdk/m$a;->式:Lcom/vivo/unionsdk/m$a;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vivo/unionsdk/m$a;

    sget-object v1, Lcom/vivo/unionsdk/m$a;->驶:Lcom/vivo/unionsdk/m$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/unionsdk/m$a;->始:Lcom/vivo/unionsdk/m$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/unionsdk/m$a;->式:Lcom/vivo/unionsdk/m$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/unionsdk/m$a;->士:[Lcom/vivo/unionsdk/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/vivo/unionsdk/m$a;->示:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/unionsdk/m$a;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/vivo/unionsdk/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/m$a;

    return-object v0
.end method

.method public static values()[Lcom/vivo/unionsdk/m$a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/vivo/unionsdk/m$a;->士:[Lcom/vivo/unionsdk/m$a;

    invoke-virtual {v0}, [Lcom/vivo/unionsdk/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/unionsdk/m$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/unionsdk/m$a;->示:Ljava/lang/String;

    return-object v0
.end method
