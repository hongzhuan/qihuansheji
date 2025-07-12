.class public Lcom/vivo/unionsdk/open/VivoPayInfo;
.super Ljava/lang/Object;
.source "VivoPayInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    }
.end annotation


# static fields
.field private static final PAY_PARAMS_BLANCE:Ljava/lang/String; = "blance"

.field private static final PAY_PARAMS_EXTINFO:Ljava/lang/String; = "extInfo"

.field private static final PAY_PARAMS_KEY_APPID:Ljava/lang/String; = "appId"

.field private static final PAY_PARAMS_KEY_EXTUID:Ljava/lang/String; = "extuid"

.field private static final PAY_PARAMS_KEY_PRODUCT_DESP:Ljava/lang/String; = "productDes"

.field private static final PAY_PARAMS_KEY_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field private static final PAY_PARAMS_KEY_PRODUCT_PRICE:Ljava/lang/String; = "productPrice"

.field private static final PAY_PARAMS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final PAY_PARAMS_KEY_TRANSNO:Ljava/lang/String; = "transNo"

.field private static final PAY_PARAMS_KEY_UID:Ljava/lang/String; = "uid"

.field private static final PAY_PARAMS_KEY_VIVO_SIGN:Ljava/lang/String; = "signature"

.field private static final PAY_PARAMS_LEVEL:Ljava/lang/String; = "level"

.field private static final PAY_PARAMS_PARTY:Ljava/lang/String; = "party"

.field private static final PAY_PARAMS_ROLEID:Ljava/lang/String; = "roleId"

.field private static final PAY_PARAMS_ROLENAME:Ljava/lang/String; = "roleName"

.field private static final PAY_PARAMS_SERVERNAME:Ljava/lang/String; = "serverName"

.field private static final PAY_PARAMS_VIP:Ljava/lang/String; = "vip"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mBlance:Ljava/lang/String;

.field private mExtInfo:Ljava/lang/String;

.field private mExtUid:Ljava/lang/String;

.field private mLevel:Ljava/lang/String;

.field private mParty:Ljava/lang/String;

.field private mProductDes:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;

.field private mProductPrice:Ljava/lang/String;

.field private mRoleId:Ljava/lang/String;

.field private mRoleName:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTransNo:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mVip:Ljava/lang/String;

.field private mVivoSignature:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/unionsdk/open/VivoPayInfo$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/vivo/unionsdk/open/VivoPayInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 62
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v15}, Lcom/vivo/unionsdk/open/VivoPayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductDes:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVivoSignature:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mAppId:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mTransNo:Ljava/lang/String;

    .line 74
    iput-object p7, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtUid:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mBlance:Ljava/lang/String;

    .line 77
    iput-object p9, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVip:Ljava/lang/String;

    .line 78
    iput-object p10, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mLevel:Ljava/lang/String;

    .line 79
    iput-object p11, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mParty:Ljava/lang/String;

    .line 80
    iput-object p12, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleId:Ljava/lang/String;

    .line 81
    iput-object p13, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleName:Ljava/lang/String;

    .line 82
    iput-object p14, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mServerName:Ljava/lang/String;

    .line 83
    iput-object p15, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtInfo:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$1002(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mTransNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mParty:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mServerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVivoSignature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductDes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mBlance:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtUid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductDes:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTransNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mTransNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getVivoSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVivoSignature:Ljava/lang/String;

    return-object v0
.end method

.method public setExtUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtUid:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mToken:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mUid:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toMapParams()Ljava/util/Map;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v1, "appId"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "productDes"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductDes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "productName"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "productPrice"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "transNo"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mTransNo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "signature"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVivoSignature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "uid"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mUid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "extuid"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtUid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "token"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "blance"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mBlance:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "vip"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "level"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mLevel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "party"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mParty:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "roleId"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "roleName"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mRoleName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "serverName"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mServerName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "extInfo"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mExtInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productDes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productPrice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mTransNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vivoSignature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mVivoSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unitConvert()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo;->mProductPrice:Ljava/lang/String;

    .line 155
    return-void
.end method
