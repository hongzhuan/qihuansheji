.class public Lcom/vivo/unionsdk/open/VivoUnionCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "VivoUnionCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoUnionCommand"

.field private static final VIVO_COMMAND_CODE:Ljava/lang/String; = "VivoCommandCode"

.field private static final VIVO_COMMAND_PARAMS:Ljava/lang/String; = "VivoCommandParams"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public setCommandParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "VivoCommandCode"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/unionsdk/open/VivoUnionCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "VivoCommandParams"

    invoke-virtual {p0, v0, p2}, Lcom/vivo/unionsdk/open/VivoUnionCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
