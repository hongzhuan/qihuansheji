.class public Lcom/vivo/unionsdk/cmd/PaySuccessCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "PaySuccessCallback.java"


# static fields
.field private static final IS_RECHARGE:Ljava/lang/String; = "isRecharge"

.field private static final TAG:Ljava/lang/String; = "PaySuccessCallback"

.field private static final TRANS_NO:Ljava/lang/String; = "transNo"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x7531

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "transNo"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/PaySuccessCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method
