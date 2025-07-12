.class public Lcom/vivo/unionsdk/a/f;
.super Lcom/vivo/unionsdk/a/a;
.source "SdkToApkInvoker.java"


# instance fields
.field private 士:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

.field private 藛:I

.field private 藞:Landroid/os/Handler;

.field private 藟:Z

.field private 藠:Lcom/vivo/unionsdk/cmd/BaseCommand;

.field private 藡:Landroid/content/ServiceConnection;

.field private 藥:Lcom/vivo/plugin/aidl/IClient;

.field private 藦:Lcom/vivo/plugin/aidl/IAccountCallBack;

.field private 藨:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

.field private 讬:Lcom/vivo/plugin/aidl/ISinglePayCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/vivo/unionsdk/a/a$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/vivo/unionsdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vivo/unionsdk/a/a$a;)V

    .line 33
    iput v0, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    .line 35
    iput-boolean v0, p0, Lcom/vivo/unionsdk/a/f;->藟:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藠:Lcom/vivo/unionsdk/cmd/BaseCommand;

    .line 82
    new-instance v0, Lcom/vivo/unionsdk/a/h;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/a/h;-><init>(Lcom/vivo/unionsdk/a/f;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藡:Landroid/content/ServiceConnection;

    .line 147
    new-instance v0, Lcom/vivo/unionsdk/a/i;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/a/i;-><init>(Lcom/vivo/unionsdk/a/f;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藥:Lcom/vivo/plugin/aidl/IClient;

    .line 154
    new-instance v0, Lcom/vivo/unionsdk/a/j;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/a/j;-><init>(Lcom/vivo/unionsdk/a/f;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藦:Lcom/vivo/plugin/aidl/IAccountCallBack;

    .line 194
    new-instance v0, Lcom/vivo/unionsdk/a/n;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/a/n;-><init>(Lcom/vivo/unionsdk/a/f;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藨:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    .line 230
    new-instance v0, Lcom/vivo/unionsdk/a/q;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/a/q;-><init>(Lcom/vivo/unionsdk/a/f;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->讬:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    .line 40
    iput p4, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/f;->藞:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic 士(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ISinglePayCallBack;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->讬:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    return-object v0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/a/f;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    return v0
.end method

.method static synthetic 式(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IAccountCallBack;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藦:Lcom/vivo/plugin/aidl/IAccountCallBack;

    return-object v0
.end method

.method static synthetic 示(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藨:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    return-object v0
.end method

.method static synthetic 藛(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->士:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    return-object v0
.end method

.method static synthetic 藞(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/plugin/aidl/IClient;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藥:Lcom/vivo/plugin/aidl/IClient;

    return-object v0
.end method

.method static synthetic 藟(Lcom/vivo/unionsdk/a/f;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vivo/unionsdk/a/f;->藟:Z

    return v0
.end method

.method static synthetic 藠(Lcom/vivo/unionsdk/a/f;)Lcom/vivo/unionsdk/cmd/BaseCommand;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藠:Lcom/vivo/unionsdk/cmd/BaseCommand;

    return-object v0
.end method

.method private 藠()Z
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.plugin.aidl.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "com.vivo.sdkplugin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.vivo.plugin.aidl.LoginAccInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/unionsdk/a/f;->藡:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method static synthetic 藡(Lcom/vivo/unionsdk/a/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藞:Landroid/os/Handler;

    return-object v0
.end method

.method private 藡()V
    .locals 4

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.vivo.unionsdk.ui.UnionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v0, "SdkToApkInvoker"

    const-string v1, "antiPullUp is failed"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/f;Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vivo/unionsdk/a/f;->士:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/f;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/f;->藠()Z

    move-result v0

    return v0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a/f;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/vivo/unionsdk/a/f;->藟:Z

    return p1
.end method


# virtual methods
.method public 士()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 示()V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/vivo/unionsdk/m$a;->始:Lcom/vivo/unionsdk/m$a;

    invoke-static {v0}, Lcom/vivo/unionsdk/m;->驶(Lcom/vivo/unionsdk/m$a;)V

    .line 47
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/f;->藡()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->藞:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/unionsdk/a/g;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/a/g;-><init>(Lcom/vivo/unionsdk/a/f;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method public 藛()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    const/16 v1, 0x26c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 藞()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vivo/unionsdk/a/f;->藛:I

    return v0
.end method

.method public 藟()Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->士:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    return-object v0
.end method

.method public 驶(I)V
    .locals 6

    .prologue
    .line 264
    :try_start_0
    iput p1, p0, Lcom/vivo/unionsdk/a/f;->式:I

    .line 265
    iget-object v0, p0, Lcom/vivo/unionsdk/a/f;->士:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    iget-object v1, p0, Lcom/vivo/unionsdk/a/f;->藥:Lcom/vivo/plugin/aidl/IClient;

    iget-object v2, p0, Lcom/vivo/unionsdk/a/f;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a/f;->始:Ljava/lang/String;

    iget v4, p0, Lcom/vivo/unionsdk/a/f;->式:I

    const/16 v5, 0x604

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->registerClient(Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string v1, "SdkToApkInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public 驶(Lcom/vivo/unionsdk/cmd/BaseCommand;)V
    .locals 3

    .prologue
    .line 254
    const-string v0, "SdkToApkInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect remote server.. command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/vivo/unionsdk/a/f;->藠:Lcom/vivo/unionsdk/cmd/BaseCommand;

    .line 256
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/f;->藡()V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/a/f;->藠()Z

    .line 260
    return-void
.end method
