.class Lcom/vivo/unionsdk/cmd/CommandClient$1;
.super Lcom/vivo/plugin/aidl/IClient$Stub;
.source "CommandClient.java"


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/CommandClient;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/CommandClient;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/CommandClient$1;->this$0:Lcom/vivo/unionsdk/cmd/CommandClient;

    invoke-direct {p0}, Lcom/vivo/plugin/aidl/IClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommandCallback(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient$1;->this$0:Lcom/vivo/unionsdk/cmd/CommandClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->onReceiveServerCommand(ILjava/lang/String;Z)V

    .line 101
    return-void
.end method
