.class public Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "RoleInfoReportCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public getRoleInfoCompatApk()Lcom/vivo/unionsdk/open/VivoRoleInfo;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->newRoleInfoFromMap(Ljava/util/Map;)Lcom/vivo/unionsdk/open/VivoRoleInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCommandParams(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->formatToMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;->addParams(Ljava/util/Map;)V

    .line 18
    return-void
.end method
