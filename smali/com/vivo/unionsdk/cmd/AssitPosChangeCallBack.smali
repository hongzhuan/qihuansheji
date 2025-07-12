.class public Lcom/vivo/unionsdk/cmd/AssitPosChangeCallBack;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "AssitPosChangeCallBack.java"


# static fields
.field private static final ASSIT_X:Ljava/lang/String; = "assitX"

.field private static final ASSIT_Y:Ljava/lang/String; = "assitY"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x2714

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "assitX"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/AssitPosChangeCallBack;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "assitY"

    .line 22
    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/cmd/AssitPosChangeCallBack;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(II)V

    .line 23
    return-void
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method
