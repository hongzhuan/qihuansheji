.class Lcom/vivo/unionsdk/cmd/CommandClient$2;
.super Ljava/lang/Object;
.source "CommandClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/CommandClient;

.field final synthetic val$finalCallback:Lcom/vivo/unionsdk/cmd/Callback;

.field final synthetic val$fromRemoteServer:Z

.field final synthetic val$jsonArg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/CommandClient;Lcom/vivo/unionsdk/cmd/Callback;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->this$0:Lcom/vivo/unionsdk/cmd/CommandClient;

    iput-object p2, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$finalCallback:Lcom/vivo/unionsdk/cmd/Callback;

    iput-object p3, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$jsonArg:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$fromRemoteServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$finalCallback:Lcom/vivo/unionsdk/cmd/Callback;

    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->this$0:Lcom/vivo/unionsdk/cmd/CommandClient;

    invoke-static {v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->access$000(Lcom/vivo/unionsdk/cmd/CommandClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$jsonArg:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/vivo/unionsdk/cmd/CommandClient$2;->val$fromRemoteServer:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/Callback;->exec(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    return-void
.end method
