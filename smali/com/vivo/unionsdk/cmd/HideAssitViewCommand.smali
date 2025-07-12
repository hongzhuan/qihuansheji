.class public Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "HideAssitViewCommand.java"


# static fields
.field private static final HIDE_DELAY:Ljava/lang/String; = "hideDelay"

.field private static final HIDE_REASON:Ljava/lang/String; = "assitReason"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x2712

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

.method public setCommandParams(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    const-string v0, "hideDelay"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "assitReason"

    invoke-virtual {p0, v0, p3}, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
