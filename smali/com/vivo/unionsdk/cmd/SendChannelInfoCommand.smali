.class public Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "SendChannelInfoCommand.java"


# static fields
.field private static final CHANNEL_INFO:Ljava/lang/String; = "channelInfo"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x11

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

.method public setParams(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "channelInfo"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
