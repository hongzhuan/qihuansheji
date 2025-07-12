.class public abstract Lcom/vivo/unionsdk/cmd/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCommandKey:I

.field private mParams:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "BaseCommand"

    sput-object v0, Lcom/vivo/unionsdk/cmd/BaseCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    .line 21
    iput p1, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mCommandKey:I

    .line 22
    return-void
.end method


# virtual methods
.method protected addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected addParams(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected abstract doExec(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public exec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/vivo/unionsdk/cmd/BaseCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exec Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p3}, Lcom/vivo/unionsdk/l;->驶(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;->addParams(Ljava/util/Map;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/BaseCommand;->doExec(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public getCommandKey()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mCommandKey:I

    return v0
.end method

.method public getJsonArg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    invoke-static {v0}, Lcom/vivo/unionsdk/l;->驶(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/BaseCommand;->mParams:Ljava/util/Map;

    return-object v0
.end method
