.class public abstract Lcom/vivo/ic/channelunit/item/ChannalInfo;
.super Lcom/vivo/ic/channelunit/item/TraceMap;
.source "ChannalInfo.java"


# static fields
.field public static final DEFAULT_MODE:I = -0x1

.field public static final EMPTY_CHANNEL:Lcom/vivo/ic/channelunit/item/ChannalInfo;

.field public static final V1_MODE:I = 0x1

.field public static final V2_MODE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/vivo/ic/channelunit/item/EmptyChannel;

    invoke-direct {v0}, Lcom/vivo/ic/channelunit/item/EmptyChannel;-><init>()V

    sput-object v0, Lcom/vivo/ic/channelunit/item/ChannalInfo;->EMPTY_CHANNEL:Lcom/vivo/ic/channelunit/item/ChannalInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vivo/ic/channelunit/item/TraceMap;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getMode()I
.end method

.method public abstract isRight()Z
.end method
