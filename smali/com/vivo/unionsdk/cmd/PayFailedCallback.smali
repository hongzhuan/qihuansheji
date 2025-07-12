.class public Lcom/vivo/unionsdk/cmd/PayFailedCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "PayFailedCallback.java"


# static fields
.field private static final IS_RECHARGE:Ljava/lang/String; = "isRecharge"

.field private static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final TAG:Ljava/lang/String; = "PayFailedCallback"

.field private static final TRANS_NO:Ljava/lang/String; = "transNo"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x7533

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "transNo"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/PayFailedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resultCode"

    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/cmd/PayFailedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resultMsg"

    invoke-virtual {p0, v3}, Lcom/vivo/unionsdk/cmd/PayFailedCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method
