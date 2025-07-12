.class public Lcom/vivo/unionsdk/open/VivoRechargeInfo;
.super Ljava/lang/Object;
.source "VivoRechargeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    }
.end annotation


# static fields
.field private static final PAY_PARAMS_KEY_APPID:Ljava/lang/String; = "appId"

.field private static final PAY_PARAMS_KEY_OPENID:Ljava/lang/String; = "uid"

.field private static final PAY_PARAMS_KEY_SK:Ljava/lang/String; = "sk"

.field private static final PAY_PARAMS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final PAY_PARAMS_KEY_TRANSNO:Ljava/lang/String; = "transNo"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mOpenId:Ljava/lang/String;

.field private mSk:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTransNo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/unionsdk/open/VivoRechargeInfo$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mOpenId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mSk:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mToken:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mAppId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$102(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mOpenId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mSk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mTransNo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mOpenId:Ljava/lang/String;

    return-object v0
.end method

.method public getSk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mSk:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTransNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mTransNo:Ljava/lang/String;

    return-object v0
.end method

.method public setTransNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mTransNo:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toMapParams()Ljava/util/Map;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v1, "uid"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mOpenId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "sk"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mSk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "token"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "appId"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "transNo"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->mTransNo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0
.end method
