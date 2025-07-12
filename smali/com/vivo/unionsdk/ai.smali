.class synthetic Lcom/vivo/unionsdk/ai;
.super Ljava/lang/Object;
.source "UnionManager.java"


# static fields
.field static final synthetic 驶:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1262
    invoke-static {}, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->values()[Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vivo/unionsdk/ai;->驶:[I

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/ai;->驶:[I

    sget-object v1, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->FORUM:Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
