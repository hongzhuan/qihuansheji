.class public Lcom/vivo/unionsdk/open/VivoUnionCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "VivoUnionCallback.java"


# static fields
.field public static final CALLBACK_CODE_FAILED:Ljava/lang/String; = "-1"

.field private static final COMMON_CALLBACK_CODE:Ljava/lang/String; = "VivoCallbackCode"

.field private static final COMMON_CALLBACK_PARAMS:Ljava/lang/String; = "VivoCallbackParams"

.field private static final COMMON_COMMAND_CODE:Ljava/lang/String; = "VivoCommandCode"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x9c41

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 25
    const-string v0, "VivoCommandCode"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/open/VivoUnionCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "VivoCallbackCode"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/open/VivoUnionCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "VivoCallbackParams"

    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/open/VivoUnionCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/vivo/unionsdk/w;->始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
