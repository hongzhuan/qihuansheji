.class public Lcom/vivo/unionsdk/cmd/JumpIndirectCommand;
.super Lcom/vivo/unionsdk/cmd/BaseCommand;
.source "JumpIndirectCommand.java"


# static fields
.field private static final JUMP_TYPE:Ljava/lang/String; = "jumpType"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/BaseCommand;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public setParams(Lcom/vivo/unionsdk/open/VivoConstants$JumpType;)V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    sget-object v1, Lcom/vivo/unionsdk/cmd/JumpIndirectCommand$1;->$SwitchMap$com$vivo$unionsdk$open$VivoConstants$JumpType:[I

    invoke-virtual {p1}, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 29
    :goto_0
    const-string v1, "jumpType"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vivo/unionsdk/cmd/JumpIndirectCommand;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 26
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
