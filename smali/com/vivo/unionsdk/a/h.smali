.class Lcom/vivo/unionsdk/a/h;
.super Ljava/lang/Object;
.source "SdkToApkInvoker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/f;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {p2}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/a/f;Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->始(Lcom/vivo/unionsdk/a/f;)I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藛(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v2}, Lcom/vivo/unionsdk/a/f;->式(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IAccountCallBack;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    .line 90
    invoke-static {v3}, Lcom/vivo/unionsdk/a/f;->示(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v4, v4, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    .line 91
    invoke-static {v5}, Lcom/vivo/unionsdk/a/f;->士(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    move-result-object v5

    .line 89
    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->registerCallBack(Ljava/lang/String;Lcom/vivo/plugin/aidl/IAccountCallBack;Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;ILcom/vivo/plugin/aidl/ISinglePayCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const/4 v0, 0x1

    .line 102
    :goto_1
    const-string v1, "SdkToApkInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, register = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsReconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v3}, Lcom/vivo/unionsdk/a/f;->藟(Lcom/vivo/unionsdk/a/f;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v1}, Lcom/vivo/unionsdk/a/f;->藟(Lcom/vivo/unionsdk/a/f;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v0, v0, Lcom/vivo/unionsdk/a/f;->示:Lcom/vivo/unionsdk/a/a$a;

    invoke-interface {v0, v6}, Lcom/vivo/unionsdk/a/a$a;->驶(I)V

    .line 134
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0, v6}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/a/f;Z)Z

    .line 135
    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藛(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v1}, Lcom/vivo/unionsdk/a/f;->藞(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v2, v2, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v3, v3, Lcom/vivo/unionsdk/a/f;->始:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget v4, v4, Lcom/vivo/unionsdk/a/f;->式:I

    const/16 v5, 0x604

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->registerClient(Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;Ljava/lang/String;II)V

    .line 95
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藛(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v2, v2, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->registerProcessDeath(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v6

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v0, v0, Lcom/vivo/unionsdk/a/f;->示:Lcom/vivo/unionsdk/a/a$a;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/vivo/unionsdk/a/a$a;->驶(I)V

    goto :goto_2

    .line 111
    :cond_3
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;

    invoke-direct {v2}, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 113
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    const-string v1, "SdkToApkInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, login opid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;

    invoke-direct {v1}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;-><init>()V

    .line 117
    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->setCommandPrams(Lcom/vivo/sdkplugin/a/d;)V

    .line 119
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->藟()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->始()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    const-string v2, "SdkToApkInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected, prt opid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->addParentParam(Lcom/vivo/sdkplugin/a/d;)V

    .line 127
    :cond_4
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v2, v2, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/f;->藠(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/unionsdk/cmd/BaseCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    iget-object v1, v1, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    invoke-static {v2}, Lcom/vivo/unionsdk/a/f;->藠(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/unionsdk/cmd/BaseCommand;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto/16 :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 139
    const-string v0, "SdkToApkInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/a/f;Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    .line 141
    iget-object v0, p0, Lcom/vivo/unionsdk/a/h;->驶:Lcom/vivo/unionsdk/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/a/f;Z)Z

    .line 143
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藠()V

    .line 144
    return-void
.end method
