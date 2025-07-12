.class public Lcom/vivo/unionsdk/cmd/ClientLoginCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "ClientLoginCommand.java"


# static fields
.field private static final ASSIT_SETTINGS_CACHE:Ljava/lang/String; = "assitSettingsCache"

.field private static final LOGIN_RESTORE_BY_CLIENT:Ljava/lang/String; = "loginRestoreByClient"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public setCommandParams(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 17
    const-string v0, "assitSettingsCache"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "loginRestoreByClient"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
