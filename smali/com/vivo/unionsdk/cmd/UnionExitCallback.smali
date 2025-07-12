.class public Lcom/vivo/unionsdk/cmd/UnionExitCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "UnionExitCallback.java"


# static fields
.field private static final CLIENT_PKGNAME:Ljava/lang/String; = "client_pkgname"

.field private static final EXIT_TYPE:Ljava/lang/String; = "exit_type"

.field public static final UNION_EXIT_CONFIRM:Ljava/lang/String; = "union_exit_confirm"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x4e25

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 24
    const-string v0, "exit_type"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/UnionExitCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "union_exit_confirm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "client_pkgname"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/UnionExitCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->式(Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    const-string v1, "client_pkgname"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/UnionExitCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->始(Ljava/lang/String;)V

    goto :goto_0
.end method
