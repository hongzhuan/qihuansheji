.class public Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "ClientRequestLogoutCommand.java"


# static fields
.field private static final KEY_LOGOUT_CODE:Ljava/lang/String; = "logoutCode"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public setCommandParams(I)V
    .locals 2

    .prologue
    .line 16
    const-string v0, "logoutCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
