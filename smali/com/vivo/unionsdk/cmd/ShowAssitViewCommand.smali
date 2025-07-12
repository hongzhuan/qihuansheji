.class public Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "ShowAssitViewCommand.java"


# static fields
.field private static final ASSIT_X:Ljava/lang/String; = "assitX"

.field private static final ASSIT_Y:Ljava/lang/String; = "assitY"

.field private static final FULL_SCREEN:Ljava/lang/String; = "fullScreen"

.field private static final SHOW_REASON:Ljava/lang/String; = "assitReason"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x2711

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public setCommandParams(IIZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    const-string v0, "assitX"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "assitY"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "fullScreen"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "assitReason"

    invoke-virtual {p0, v0, p4}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
