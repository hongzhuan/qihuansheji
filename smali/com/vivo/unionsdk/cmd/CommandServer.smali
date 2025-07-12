.class public Lcom/vivo/unionsdk/cmd/CommandServer;
.super Ljava/lang/Object;
.source "CommandServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandServer"

.field private static sCommandServer:Lcom/vivo/unionsdk/cmd/CommandServer;


# instance fields
.field private mClientAppId:Ljava/util/HashMap;

.field private mClientAppType:Ljava/util/HashMap;

.field private mClientOrientation:Ljava/util/HashMap;

.field private mClientSdkVersion:Ljava/util/HashMap;

.field private mClients:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/unionsdk/cmd/CommandServer;->sCommandServer:Lcom/vivo/unionsdk/cmd/CommandServer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClients:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientAppType:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientAppId:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientSdkVersion:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientOrientation:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/unionsdk/cmd/CommandServer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/vivo/unionsdk/cmd/CommandServer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/cmd/CommandServer;->sCommandServer:Lcom/vivo/unionsdk/cmd/CommandServer;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/vivo/unionsdk/cmd/CommandServer;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/cmd/CommandServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/unionsdk/cmd/CommandServer;->sCommandServer:Lcom/vivo/unionsdk/cmd/CommandServer;

    .line 35
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/cmd/CommandServer;->sCommandServer:Lcom/vivo/unionsdk/cmd/CommandServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientAppType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getClientOrientationCompat(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 141
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientOrientation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getClientSdkVersion(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientSdkVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onReceiveClientCommand(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    sparse-switch p1, :sswitch_data_0

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/unionsdk/cmd/CommandServer$1;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/vivo/unionsdk/cmd/CommandServer$1;-><init>(Lcom/vivo/unionsdk/cmd/CommandServer;Lcom/vivo/unionsdk/cmd/BaseCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :goto_1
    return-void

    .line 69
    :sswitch_0
    new-instance v0, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;-><init>()V

    goto :goto_0

    .line 72
    :sswitch_1
    new-instance v0, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;-><init>()V

    goto :goto_0

    .line 75
    :sswitch_2
    new-instance v0, Lcom/vivo/unionsdk/cmd/ConfigurationChangedCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ConfigurationChangedCommand;-><init>()V

    goto :goto_0

    .line 78
    :sswitch_3
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;-><init>()V

    goto :goto_0

    .line 81
    :sswitch_4
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;-><init>()V

    goto :goto_0

    .line 84
    :sswitch_5
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;-><init>()V

    goto :goto_0

    .line 87
    :sswitch_6
    new-instance v0, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;-><init>()V

    goto :goto_0

    .line 90
    :sswitch_7
    new-instance v0, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;-><init>()V

    goto :goto_0

    .line 93
    :sswitch_8
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;-><init>()V

    goto :goto_0

    .line 96
    :sswitch_9
    new-instance v0, Lcom/vivo/unionsdk/cmd/RequestCommunityCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RequestCommunityCommand;-><init>()V

    goto :goto_0

    .line 99
    :sswitch_a
    new-instance v0, Lcom/vivo/unionsdk/cmd/GetRealNameInfoCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/GetRealNameInfoCommand;-><init>()V

    goto :goto_0

    .line 102
    :sswitch_b
    new-instance v0, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/RegisterLoginCommand;-><init>()V

    goto :goto_0

    .line 105
    :sswitch_c
    new-instance v0, Lcom/vivo/unionsdk/open/VivoUnionCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/open/VivoUnionCommand;-><init>()V

    goto :goto_0

    .line 108
    :sswitch_d
    new-instance v0, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/SendChannelInfoCommand;-><init>()V

    goto :goto_0

    .line 124
    :cond_0
    const-string v0, "CommandServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveClientCommand, null command, commandKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdkVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xb -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_d
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_1
    .end sparse-switch
.end method

.method public registerClient(Ljava/lang/String;Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "CommandServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient error: clientPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "CommandServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient, clientPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdkVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientAppId:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientAppType:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandServer;->mClientSdkVersion:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
