.class public Lcom/vivo/unionsdk/open/VivoUnionSDK;
.super Ljava/lang/Object;
.source "VivoUnionSDK.java"


# static fields
.field private static final LOGIN_INTERVAL_TIME:J = 0x3e8L

.field private static sLastLoginTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/unionsdk/open/VivoUnionSDK;->sLastLoginTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoExitCallback;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoExitCallback;)V

    .line 47
    return-void
.end method

.method public static getChannelInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/w;->驶(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRealNameInfo(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)V

    .line 131
    return-void
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    new-instance v0, Lcom/vivo/unionsdk/open/VivoConfigInfo;

    invoke-direct {v0}, Lcom/vivo/unionsdk/open/VivoConfigInfo;-><init>()V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->setProcessName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->setAppType(I)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->setShowAssit(Z)V

    .line 26
    invoke-static {p0, p1, p2, v0}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->initSdk(Landroid/content/Context;Ljava/lang/String;ZLcom/vivo/unionsdk/open/VivoConfigInfo;)V

    .line 27
    return-void
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;ZLcom/vivo/unionsdk/open/VivoConfigInfo;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/vivo/unionsdk/w;->驶(Landroid/content/Context;Ljava/lang/String;ZLcom/vivo/unionsdk/open/VivoConfigInfo;)V

    .line 39
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static jumpGameCenter(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    invoke-static {p0}, Lcom/vivo/unionsdk/w;->始(Landroid/app/Activity;)V

    .line 121
    return-void
.end method

.method public static jumpTo(Lcom/vivo/unionsdk/open/VivoConstants$JumpType;)V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/open/VivoConstants$JumpType;)V

    .line 155
    return-void
.end method

.method public static login(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vivo/unionsdk/open/VivoUnionSDK;->sLastLoginTime:J

    sub-long/2addr v0, v2

    .line 56
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/unionsdk/open/VivoUnionSDK;->sLastLoginTime:J

    .line 58
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static pay(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    .line 94
    return-void
.end method

.method public static payNow(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V

    .line 106
    return-void
.end method

.method public static recharge(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    .line 117
    return-void
.end method

.method public static registerAccountCallback(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V

    .line 70
    return-void
.end method

.method public static registerLoginInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static reportRoleInfo(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V

    .line 83
    return-void
.end method

.method public static requestCommunityInfo(Lcom/vivo/unionsdk/open/VivoCommunityCallback;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/open/VivoCommunityCallback;)V

    .line 74
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藥()V

    .line 147
    return-void
.end method

.method public static sendCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/unionsdk/open/VivoCallback;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/vivo/unionsdk/w;->驶(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/unionsdk/open/VivoCallback;)V

    .line 139
    return-void
.end method
