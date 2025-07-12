.class public Lcom/vivo/unionsdk/cmd/LogoutCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "LogoutCallback.java"


# static fields
.field private static final KEY_LOGOUT_CODE:Ljava/lang/String; = "logoutCode"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x4e22

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "logoutCode"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/LogoutCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;I)V

    .line 26
    :cond_0
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/w;->始(I)V

    .line 27
    return-void
.end method
