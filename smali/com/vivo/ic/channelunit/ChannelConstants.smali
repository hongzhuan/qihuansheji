.class public Lcom/vivo/ic/channelunit/ChannelConstants;
.super Ljava/lang/Object;
.source "ChannelConstants.java"


# static fields
.field public static final CHANNEL_BLOCK_ID:I = -0x77eeaa01

.field public static final CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final SHORT_LENGTH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ChannelUnit"

.field public static final V1_MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/ic/channelunit/ChannelConstants;->V1_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x69t
        0x76t
        0x6ft
        0x68t
        0x6ft
        0x6et
        0x67t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
