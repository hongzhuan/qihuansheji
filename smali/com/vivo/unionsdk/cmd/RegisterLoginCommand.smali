.class public Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "RegisterLoginCommand.java"


# static fields
.field private static final OPENID:Ljava/lang/String; = "openId"

.field private static final SK:Ljava/lang/String; = "sk"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public setCommandParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "openId"

    invoke-virtual {p0, v0, p1}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "token"

    invoke-virtual {p0, v0, p2}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "username"

    invoke-virtual {p0, v0, p3}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "sk"

    invoke-virtual {p0, v0, p4}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
