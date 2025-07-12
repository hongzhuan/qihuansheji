.class Lcom/vivo/unionsdk/cmd/CommandServer$1;
.super Ljava/lang/Object;
.source "CommandServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vivo/unionsdk/cmd/CommandServer;

.field final synthetic val$clientPkgName:Ljava/lang/String;

.field final synthetic val$finalCommand:Lcom/vivo/unionsdk/cmd/BaseCommand;

.field final synthetic val$jsonArg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/cmd/CommandServer;Lcom/vivo/unionsdk/cmd/BaseCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->this$0:Lcom/vivo/unionsdk/cmd/CommandServer;

    iput-object p2, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$finalCommand:Lcom/vivo/unionsdk/cmd/BaseCommand;

    iput-object p3, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$clientPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$jsonArg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$finalCommand:Lcom/vivo/unionsdk/cmd/BaseCommand;

    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->this$0:Lcom/vivo/unionsdk/cmd/CommandServer;

    invoke-static {v1}, Lcom/vivo/unionsdk/cmd/CommandServer;->access$000(Lcom/vivo/unionsdk/cmd/CommandServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$clientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/unionsdk/cmd/CommandServer$1;->val$jsonArg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/unionsdk/cmd/BaseCommand;->exec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
