.class public final enum Lcom/vivo/unionsdk/open/VivoConstants$JumpType;
.super Ljava/lang/Enum;
.source "VivoConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/open/VivoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JumpType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

.field public static final enum FORUM:Lcom/vivo/unionsdk/open/VivoConstants$JumpType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    const-string v1, "FORUM"

    invoke-direct {v0, v1, v2}, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->FORUM:Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    sget-object v1, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->FORUM:Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->$VALUES:[Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoConstants$JumpType;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/unionsdk/open/VivoConstants$JumpType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->$VALUES:[Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    invoke-virtual {v0}, [Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    return-object v0
.end method
