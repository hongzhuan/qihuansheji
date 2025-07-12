.class public Lcom/vivo/unionsdk/cmd/LoginCancelCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "LoginCancelCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginCancelCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x4e23

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藛()V

    .line 21
    return-void
.end method

.method protected doExecCompat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/vivo/unionsdk/cmd/Callback;->doExecCompat(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method
