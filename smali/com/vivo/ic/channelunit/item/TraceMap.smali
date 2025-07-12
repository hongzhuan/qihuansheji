.class public abstract Lcom/vivo/ic/channelunit/item/TraceMap;
.super Ljava/lang/Object;
.source "TraceMap.java"


# static fields
.field public static final ERR_CAT:Ljava/lang/String; = "errCat"

.field public static final ERR_CLS:Ljava/lang/String; = "errCLS"

.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final ERR_PKG:Ljava/lang/String; = "errPkg"


# instance fields
.field public mException:Ljava/lang/Exception;

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/vivo/ic/channelunit/item/TraceMap;->mException:Ljava/lang/Exception;

    .line 17
    iput-object v0, p0, Lcom/vivo/ic/channelunit/item/TraceMap;->mPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract toMap()Ljava/util/HashMap;
.end method
