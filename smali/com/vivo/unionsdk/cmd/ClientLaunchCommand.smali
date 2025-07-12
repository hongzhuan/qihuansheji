.class public Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "ClientLaunchCommand.java"


# static fields
.field private static final CHANNEL_INFO:Ljava/lang/String; = "channelInfo"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

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

.method public setParams(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "channelInfo"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
