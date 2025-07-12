.class public Lcom/vivo/unionsdk/cmd/GetRealNameCallBack;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "GetRealNameCallBack.java"


# static fields
.field private static final AGE:Ljava/lang/String; = "age"

.field private static final REAL_NAME:Ljava/lang/String; = "realName"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x4e27

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const-string v0, "realName"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/GetRealNameCallBack;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    const-string v1, "age"

    invoke-virtual {p0, v1}, Lcom/vivo/unionsdk/cmd/GetRealNameCallBack;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;I)I

    move-result v1

    .line 24
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/vivo/unionsdk/w;->驶(ZI)V

    .line 25
    return-void
.end method
