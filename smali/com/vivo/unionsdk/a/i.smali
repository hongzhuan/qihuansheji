.class Lcom/vivo/unionsdk/a/i;
.super Lcom/vivo/plugin/aidl/IClient$Stub;
.source "SdkToApkInvoker.java"


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vivo/unionsdk/a/i;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/IClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommandCallback(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->onReceiveServerCommand(ILjava/lang/String;Z)V

    .line 151
    return-void
.end method
