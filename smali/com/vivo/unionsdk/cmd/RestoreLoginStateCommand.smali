.class public Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "RestoreLoginStateCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreLoginStateCommand"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public addParentParam(Lcom/vivo/sdkplugin/a/d;)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string v0, "RestoreParentInfo"

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/a/d;->藠()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/unionsdk/l;->驶(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setCommandPrams(Lcom/vivo/sdkplugin/a/d;)V
    .locals 1

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/vivo/sdkplugin/a/d;->藠()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->addParams(Ljava/util/Map;)V

    .line 22
    :cond_0
    return-void
.end method
