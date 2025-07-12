.class public Lcom/vivo/unionsdk/cmd/CommandClient;
.super Ljava/lang/Object;
.source "CommandClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandClient"

.field private static sCommandClient:Lcom/vivo/unionsdk/cmd/CommandClient;


# instance fields
.field private mClient:Lcom/vivo/plugin/aidl/IClient$Stub;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInvoker:Lcom/vivo/unionsdk/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/unionsdk/cmd/CommandClient;->sCommandClient:Lcom/vivo/unionsdk/cmd/CommandClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/vivo/unionsdk/cmd/CommandClient$1;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/cmd/CommandClient$1;-><init>(Lcom/vivo/unionsdk/cmd/CommandClient;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mClient:Lcom/vivo/plugin/aidl/IClient$Stub;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/unionsdk/cmd/CommandClient;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/vivo/unionsdk/cmd/CommandClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/cmd/CommandClient;->sCommandClient:Lcom/vivo/unionsdk/cmd/CommandClient;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/vivo/unionsdk/cmd/CommandClient;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/CommandClient;-><init>()V

    sput-object v0, Lcom/vivo/unionsdk/cmd/CommandClient;->sCommandClient:Lcom/vivo/unionsdk/cmd/CommandClient;

    .line 31
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/cmd/CommandClient;->sCommandClient:Lcom/vivo/unionsdk/cmd/CommandClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendCommandToServerCompatApk(Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;Lcom/vivo/unionsdk/cmd/BaseCommand;I)V
    .locals 6

    .prologue
    const/4 v1, 0x5

    .line 191
    instance-of v0, p2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    if-eqz v0, :cond_1

    .line 192
    check-cast p2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/JumpCommand;->doJumpCompatApk()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    instance-of v0, p2, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;

    if-eqz v0, :cond_2

    .line 196
    check-cast p2, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;

    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/RoleInfoReportCommand;->getRoleInfoCompatApk()Lcom/vivo/unionsdk/open/VivoRoleInfo;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->getServiceAreaID()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vivo/unionsdk/open/VivoRoleInfo;->getServiceAreaName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 199
    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "CommandClient"

    const-string v2, "sendCommandToServerCompatApk exception: "

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    :cond_2
    instance-of v0, p2, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;

    if-eqz v0, :cond_3

    .line 207
    if-ge p3, v1, :cond_0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->startAssistService(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    const-string v1, "CommandClient"

    const-string v2, "sendCommandToServerCompatApk exception: "

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_3
    instance-of v0, p2, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;

    if-eqz v0, :cond_0

    .line 215
    if-ge p3, v1, :cond_0

    .line 217
    :try_start_2
    invoke-interface {p1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->stopAssistService()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    const-string v1, "CommandClient"

    const-string v2, "sendCommandToServerCompatApk exception: "

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onInvokerChanged(Lcom/vivo/unionsdk/a/a;)V
    .locals 6

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    .line 47
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    instance-of v0, v0, Lcom/vivo/unionsdk/a/f;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/cmd/CommandServer;->getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mClient:Lcom/vivo/plugin/aidl/IClient$Stub;

    .line 49
    invoke-virtual {p1}, Lcom/vivo/unionsdk/a/a;->始()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/unionsdk/a/a;->式()I

    move-result v4

    const/16 v5, 0x604

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/unionsdk/cmd/CommandServer;->registerClient(Ljava/lang/String;Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;II)V

    .line 51
    :cond_0
    return-void
.end method

.method public onReceiveServerCommand(ILjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    sparse-switch p1, :sswitch_data_0

    .line 174
    :goto_0
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/unionsdk/cmd/CommandClient$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/vivo/unionsdk/cmd/CommandClient$2;-><init>(Lcom/vivo/unionsdk/cmd/CommandClient;Lcom/vivo/unionsdk/cmd/Callback;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :goto_1
    return-void

    .line 113
    :sswitch_0
    new-instance v0, Lcom/vivo/unionsdk/cmd/AssitItemClickCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AssitItemClickCallback;-><init>()V

    goto :goto_0

    .line 116
    :sswitch_1
    new-instance v0, Lcom/vivo/unionsdk/cmd/AssitPosChangeCallBack;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AssitPosChangeCallBack;-><init>()V

    goto :goto_0

    .line 119
    :sswitch_2
    new-instance v0, Lcom/vivo/unionsdk/cmd/AssitViewReleaseCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AssitViewReleaseCallback;-><init>()V

    goto :goto_0

    .line 122
    :sswitch_3
    new-instance v0, Lcom/vivo/unionsdk/cmd/LoginCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/LoginCallback;-><init>()V

    goto :goto_0

    .line 125
    :sswitch_4
    new-instance v0, Lcom/vivo/unionsdk/cmd/LoginCancelCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/LoginCancelCallback;-><init>()V

    goto :goto_0

    .line 128
    :sswitch_5
    new-instance v0, Lcom/vivo/unionsdk/cmd/LogoutCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/LogoutCallback;-><init>()V

    goto :goto_0

    .line 131
    :sswitch_6
    new-instance v0, Lcom/vivo/unionsdk/cmd/PaySuccessCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/PaySuccessCallback;-><init>()V

    goto :goto_0

    .line 134
    :sswitch_7
    new-instance v0, Lcom/vivo/unionsdk/cmd/PayCancelCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/PayCancelCallback;-><init>()V

    goto :goto_0

    .line 137
    :sswitch_8
    new-instance v0, Lcom/vivo/unionsdk/cmd/PayFailedCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/PayFailedCallback;-><init>()V

    goto :goto_0

    .line 140
    :sswitch_9
    new-instance v0, Lcom/vivo/unionsdk/cmd/AssitSettingsRequestCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AssitSettingsRequestCallback;-><init>()V

    goto :goto_0

    .line 143
    :sswitch_a
    new-instance v0, Lcom/vivo/unionsdk/cmd/AppCheckedCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AppCheckedCallback;-><init>()V

    goto :goto_0

    .line 146
    :sswitch_b
    new-instance v0, Lcom/vivo/unionsdk/cmd/PrefsWriteCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/PrefsWriteCallback;-><init>()V

    goto :goto_0

    .line 149
    :sswitch_c
    new-instance v0, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ActivitiesCallback;-><init>()V

    goto :goto_0

    .line 152
    :sswitch_d
    new-instance v0, Lcom/vivo/unionsdk/cmd/UnionExitCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/UnionExitCallback;-><init>()V

    goto :goto_0

    .line 155
    :sswitch_e
    new-instance v0, Lcom/vivo/unionsdk/cmd/TrackConfigChangedCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/TrackConfigChangedCallback;-><init>()V

    goto :goto_0

    .line 158
    :sswitch_f
    new-instance v0, Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;-><init>()V

    goto :goto_0

    .line 161
    :sswitch_10
    new-instance v0, Lcom/vivo/unionsdk/cmd/AssitNotifyClickCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/AssitNotifyClickCallback;-><init>()V

    goto :goto_0

    .line 164
    :sswitch_11
    new-instance v0, Lcom/vivo/unionsdk/cmd/GetRealNameCallBack;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/GetRealNameCallBack;-><init>()V

    goto :goto_0

    .line 167
    :sswitch_12
    new-instance v0, Lcom/vivo/unionsdk/open/VivoUnionCallback;

    invoke-direct {v0}, Lcom/vivo/unionsdk/open/VivoUnionCallback;-><init>()V

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "CommandClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveServerCommand, null command, commandKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x7 -> :sswitch_b
        0xc -> :sswitch_e
        0x2713 -> :sswitch_0
        0x2714 -> :sswitch_1
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_9
        0x2717 -> :sswitch_10
        0x4e21 -> :sswitch_3
        0x4e22 -> :sswitch_5
        0x4e23 -> :sswitch_4
        0x4e24 -> :sswitch_c
        0x4e25 -> :sswitch_d
        0x4e26 -> :sswitch_f
        0x4e27 -> :sswitch_11
        0x7531 -> :sswitch_6
        0x7532 -> :sswitch_7
        0x7533 -> :sswitch_8
        0x9c41 -> :sswitch_12
    .end sparse-switch
.end method

.method public sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V
    .locals 5

    .prologue
    const/16 v3, 0x604

    .line 60
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    instance-of v2, v0, Lcom/vivo/unionsdk/a/f;

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz v2, :cond_5

    .line 64
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->藟()Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-result-object v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    const-string v0, "CommandClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommandToServer error, remoteService is null! command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0, p2}, Lcom/vivo/unionsdk/a/f;->驶(Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->士()Z

    move-result v0

    .line 72
    :goto_1
    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mInvoker:Lcom/vivo/unionsdk/a/a;

    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->藞()I

    move-result v0

    invoke-direct {p0, v1, p2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServerCompatApk(Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;Lcom/vivo/unionsdk/cmd/BaseCommand;I)V

    goto :goto_0

    .line 78
    :cond_2
    instance-of v0, p2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    if-eqz v0, :cond_3

    .line 79
    check-cast p2, Lcom/vivo/unionsdk/cmd/JumpCommand;

    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/JumpCommand;->doJump()V

    goto :goto_0

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 84
    :try_start_0
    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/BaseCommand;->getCommandKey()I

    move-result v0

    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/BaseCommand;->getJsonArg()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x604

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->doCommand(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "CommandClient"

    const-string v2, "sendCommandToServer exception: "

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vivo/unionsdk/cmd/CommandClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/cmd/CommandServer;->getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/BaseCommand;->getCommandKey()I

    move-result v1

    .line 92
    invoke-virtual {p2}, Lcom/vivo/unionsdk/cmd/BaseCommand;->getJsonArg()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/vivo/unionsdk/cmd/CommandServer;->onReceiveClientCommand(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_1
.end method
