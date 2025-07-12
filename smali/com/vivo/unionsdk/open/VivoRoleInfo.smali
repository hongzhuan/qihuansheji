.class public Lcom/vivo/unionsdk/open/VivoRoleInfo;
.super Ljava/lang/Object;
.source "VivoRoleInfo.java"


# static fields
.field private static final KEY_ROLE_ID:Ljava/lang/String; = "roleId"

.field private static final KEY_ROLE_LEVEL:Ljava/lang/String; = "roleLevel"

.field private static final KEY_ROLE_NAME:Ljava/lang/String; = "roleName"

.field private static final KEY_SERVICE_AREA_ID:Ljava/lang/String; = "serviceAreaID"

.field private static final KEY_SERVICE_AREA_NAME:Ljava/lang/String; = "serviceAreaName"


# instance fields
.field private mRoleId:Ljava/lang/String;

.field private mRoleLevel:Ljava/lang/String;

.field private mRoleName:Ljava/lang/String;

.field private mServiceAreaID:Ljava/lang/String;

.field private mServiceAreaName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleLevel:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaID:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static newRoleInfoFromMap(Ljava/util/Map;)Lcom/vivo/unionsdk/open/VivoRoleInfo;
    .locals 6

    .prologue
    .line 66
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/vivo/unionsdk/open/VivoRoleInfo;

    const-string v1, "roleId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "roleLevel"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "roleName"

    .line 70
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "serviceAreaID"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "serviceAreaName"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/open/VivoRoleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public formatToMap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v1, "roleId"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "roleLevel"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "roleName"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "serviceAreaID"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "serviceAreaName"

    iget-object v2, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mRoleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAreaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRoleInfo;->mServiceAreaName:Ljava/lang/String;

    return-object v0
.end method
