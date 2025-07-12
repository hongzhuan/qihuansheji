.class public Lcom/vivo/unionsdk/w;
.super Ljava/lang/Object;
.source "UnionManager.java"


# static fields
.field private static 讬:I

.field private static 驶:Lcom/vivo/unionsdk/w;


# instance fields
.field private 俅:Z

.field private 士:Lcom/vivo/unionsdk/a/b;

.field private 士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

.field private 始:Landroid/content/Context;

.field private 始始:Landroid/app/Activity;

.field private 岬:Landroid/app/Activity;

.field private 岽:Ljava/util/HashSet;

.field private 岽滇吹:I

.field private 式:Landroid/os/Handler;

.field private 式式:I

.field private 示:Z

.field private 示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field private 藛:Ljava/lang/String;

.field private 藛藛:I

.field private 藞:Ljava/lang/String;

.field private 藞藞:Ljava/lang/String;

.field private 藟:I

.field private 藟藟:Ljava/lang/String;

.field private 藠:Ljava/util/HashMap;

.field private 藠藠:Ljava/lang/String;

.field private 藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

.field private 藡藡:Ljava/lang/String;

.field private 藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

.field private 藥藥:Ljava/lang/Runnable;

.field private 藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

.field private 藦藦:Landroid/content/BroadcastReceiver;

.field private 藨:Lcom/vivo/unionsdk/f;

.field private 賭:Z

.field private 賭賭:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

.field private 釔:Ljava/util/ArrayList;

.field private 釔п惂:Ljava/util/Map;

.field private 鈦:[I

.field private 锕:Lcom/vivo/unionsdk/p;

.field private 锞:Ljava/lang/Thread;

.field private 锞烇緸:Ljava/util/HashMap;

.field private 驶驶:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/vivo/unionsdk/w;->讬:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/w;->賭:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/w;->俅:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->岽:Ljava/util/HashSet;

    .line 104
    iput-object v1, p0, Lcom/vivo/unionsdk/w;->岬:Landroid/app/Activity;

    .line 110
    iput-object v1, p0, Lcom/vivo/unionsdk/w;->锞:Ljava/lang/Thread;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->釔п惂:Ljava/util/Map;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    .line 893
    new-instance v0, Lcom/vivo/unionsdk/z;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/z;-><init>(Lcom/vivo/unionsdk/w;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藦藦:Landroid/content/BroadcastReceiver;

    .line 916
    new-instance v0, Lcom/vivo/unionsdk/aa;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/aa;-><init>(Lcom/vivo/unionsdk/w;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藥藥:Ljava/lang/Runnable;

    .line 151
    return-void
.end method

.method private 俅()I
    .locals 1

    .prologue
    .line 1074
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    return v0
.end method

.method static synthetic 俅(Lcom/vivo/unionsdk/w;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->岬:Landroid/app/Activity;

    return-object v0
.end method

.method private 士(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1194
    :cond_0
    return-void
.end method

.method static synthetic 士(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic 士(Lcom/vivo/unionsdk/w;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vivo/unionsdk/w;->讬()Z

    move-result v0

    return v0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/w;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/vivo/unionsdk/w;->藛藛:I

    return p1
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    return-object v0
.end method

.method public static 始(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    const-string v1, "j_type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "t_from"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "pkgName"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "origin"

    const-string v2, "841"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v1, "union_origin"

    const-string v2, "118"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v1, "vivogame://game.vivo.com/openjump"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpToGameCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 533
    return-void
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/w;->示(Landroid/app/Activity;)V

    return-void
.end method

.method private static 始(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1092
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-direct {v0}, Lcom/vivo/unionsdk/w;->藨()Ljava/lang/String;

    move-result-object v0

    .line 1093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const/4 v0, 0x1

    .line 1096
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/w;Z)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/w;->驶(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic 岽(Lcom/vivo/unionsdk/w;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔п惂:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic 式(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->岬:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic 式(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/a/b;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    return-object v0
.end method

.method private 式(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_0
    const-string v0, "[Activity Resume]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 1058
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锕:Lcom/vivo/unionsdk/p;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->式()V

    .line 1061
    :cond_1
    return-void
.end method

.method static synthetic 示(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoExitCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    return-object v0
.end method

.method private 示(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    .line 1169
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1170
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1171
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    const-string v1, "%e6%ad%a3%e5%9c%a8%e5%88%9d%e5%a7%8b%e5%8c%96%ef%bc%8c%e8%af%b7%e7%a8%8d%e5%80%99"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->驶驶:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/unionsdk/ag;

    invoke-direct {v1, p0, p1}, Lcom/vivo/unionsdk/ag;-><init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    :cond_1
    return-void
.end method

.method static synthetic 示(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/w;->式(Landroid/app/Activity;)V

    return-void
.end method

.method private 示(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/unionsdk/w;->俅:Z

    if-nez v1, :cond_1

    .line 503
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show assist view, not login, mAutoShowAssist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/unionsdk/w;->俅:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    if-nez v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/unionsdk/g;->驶()[I

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_3

    .line 513
    invoke-static {v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/app/Activity;)Z

    move-result v4

    .line 515
    :goto_1
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    aget v3, v3, v0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;IIZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v0

    goto :goto_1
.end method

.method static synthetic 藛(Lcom/vivo/unionsdk/w;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    return v0
.end method

.method static synthetic 藞(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/f;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    return-object v0
.end method

.method static synthetic 藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藠:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic 藠(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoCommunityCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    return-object v0
.end method

.method static synthetic 藡(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic 藥(Lcom/vivo/unionsdk/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 藦()I
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/vivo/unionsdk/w;->讬:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vivo/unionsdk/w;->讬:I

    return v0
.end method

.method static synthetic 藦(Lcom/vivo/unionsdk/w;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藥藥:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic 藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    return-object v0
.end method

.method private 藨()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 讬(Lcom/vivo/unionsdk/w;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->岽:Ljava/util/HashSet;

    return-object v0
.end method

.method private 讬()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic 賭(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/p;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锕:Lcom/vivo/unionsdk/p;

    return-object v0
.end method

.method private 賭()V
    .locals 3

    .prologue
    .line 886
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 887
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->藦藦:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 891
    return-void
.end method

.method static synthetic 釔(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    return-object v0
.end method

.method private 釔()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1272
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1273
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1274
    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_2

    .line 1275
    const/16 v0, 0x604

    if-lt v2, v0, :cond_1

    .line 1276
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpIndirectCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/JumpIndirectCommand;-><init>()V

    .line 1277
    sget-object v1, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->FORUM:Lcom/vivo/unionsdk/open/VivoConstants$JumpType;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/cmd/JumpIndirectCommand;->setParams(Lcom/vivo/unionsdk/open/VivoConstants$JumpType;)V

    .line 1278
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 1297
    :goto_1
    return-void

    .line 1273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1280
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1281
    const-string v1, "pageSize"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v1, "hideNavBar"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v1, "vivounion://union.vivo.com/openjump?j_type=1&title=%E8%AE%BA%E5%9D%9B&h5_link=https%3A%2F%2Fgamembbs.vivo.com.cn%2Fmvc%2Fmodulebbs%3Forigin%3D555%26packName%3DdefaultPackageName&forcePortrait=true"

    const-string v2, "defaultPackageName"

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual {p0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpTo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_1

    .line 1286
    :cond_2
    if-nez v0, :cond_3

    const/16 v0, 0x5dc

    if-lt v2, v0, :cond_3

    .line 1287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1288
    const-string v2, "loginFromAssist"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    invoke-virtual {p0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpTo(Landroid/app/Activity;ILjava/lang/String;Ljava/util/Map;)Z

    goto :goto_1

    .line 1291
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1292
    const-string v2, "j_type"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string v2, "apkPath"

    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/unionsdk/w;->示()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v2, "forceInstall"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    invoke-virtual {p0}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vivounion://union.vivo.com/openjump"

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpToClientInstallActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_1
.end method

.method public static 驶(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1078
    invoke-static {p0}, Lcom/vivo/unionsdk/w;->始(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-direct {v0}, Lcom/vivo/unionsdk/w;->俅()I

    move-result v0

    .line 1081
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/vivo/unionsdk/cmd/CommandServer;->getInstance(Landroid/content/Context;)Lcom/vivo/unionsdk/cmd/CommandServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/unionsdk/cmd/CommandServer;->getAppType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/vivo/unionsdk/w;->式式:I

    return p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoCommunityCallback;)Lcom/vivo/unionsdk/open/VivoCommunityCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;)Lcom/vivo/unionsdk/open/VivoExitCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayCallback;)Lcom/vivo/unionsdk/open/VivoPayCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayInfo;)Lcom/vivo/unionsdk/open/VivoPayInfo;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRechargeInfo;)Lcom/vivo/unionsdk/open/VivoRechargeInfo;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->賭賭:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    return-object p1
.end method

.method public static declared-synchronized 驶()Lcom/vivo/unionsdk/w;
    .locals 2

    .prologue
    .line 144
    const-class v1, Lcom/vivo/unionsdk/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/unionsdk/w;->驶:Lcom/vivo/unionsdk/w;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/vivo/unionsdk/w;

    invoke-direct {v0}, Lcom/vivo/unionsdk/w;-><init>()V

    sput-object v0, Lcom/vivo/unionsdk/w;->驶:Lcom/vivo/unionsdk/w;

    .line 147
    :cond_0
    sget-object v0, Lcom/vivo/unionsdk/w;->驶:Lcom/vivo/unionsdk/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->藠:Ljava/util/HashMap;

    return-object p1
.end method

.method private 驶(ILcom/vivo/sdkplugin/a/d;I)V
    .locals 6

    .prologue
    .line 848
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藠:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 849
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藠:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 850
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 851
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 852
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 853
    if-eqz v1, :cond_0

    .line 856
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 857
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    const-string v3, "UnionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 861
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoAccountCallback;

    .line 863
    if-eqz v0, :cond_2

    .line 866
    const-string v1, "UnionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    if-nez p1, :cond_4

    .line 868
    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->士()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 870
    const-string v1, "UnionManager"

    const-string v4, "opentoken is null, callback authtoken"

    invoke-static {v1, v4}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->式()Ljava/lang/String;

    move-result-object v1

    .line 873
    :cond_3
    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->藛()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/a/a;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 874
    invoke-virtual {p2}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, v1}, Lcom/vivo/unionsdk/open/VivoAccountCallback;->onVivoAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 876
    invoke-interface {v0, p3}, Lcom/vivo/unionsdk/open/VivoAccountCallback;->onVivoAccountLogout(I)V

    goto :goto_0

    .line 878
    :cond_5
    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoAccountCallback;->onVivoAccountLoginCancel()V

    goto :goto_0

    .line 883
    :cond_6
    return-void
.end method

.method private 驶(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;JLjava/lang/String;)V

    .line 523
    :cond_0
    return-void
.end method

.method private 驶(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1065
    invoke-direct {p0, p2, p3, p4}, Lcom/vivo/unionsdk/w;->驶(JLjava/lang/String;)V

    .line 1068
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锕:Lcom/vivo/unionsdk/p;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->示()V

    .line 1071
    :cond_0
    return-void
.end method

.method private 驶(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 959
    new-instance v0, Lcom/vivo/unionsdk/ab;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/ab;-><init>(Lcom/vivo/unionsdk/w;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1034
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    new-instance v1, Lcom/vivo/unionsdk/ad;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/ad;-><init>(Lcom/vivo/unionsdk/w;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1049
    return-void
.end method

.method private 驶(Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoPayInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1239
    const-string v1, "imei"

    invoke-static {p1}, Lcom/vivo/unionsdk/i;->驶(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v1, "model"

    invoke-static {}, Lcom/vivo/unionsdk/i;->驶()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string v1, "version"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string v1, "u"

    invoke-static {}, Lcom/vivo/unionsdk/i;->始()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const-string v1, "appid"

    invoke-virtual {p2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const-string v1, "orderNumber"

    invoke-virtual {p2}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getTransNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string v1, "channelInfo"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vivo/unionsdk/d/d;->始(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string v1, "sdkversion"

    const-string v2, "4.2.4.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v1, Lcom/vivo/unionsdk/r;->示:Ljava/lang/String;

    invoke-static {v1, v0, v3, v3}, Lcom/vivo/unionsdk/b/d;->驶(Ljava/lang/String;Ljava/util/HashMap;Lcom/vivo/unionsdk/b/b;Lcom/vivo/unionsdk/b/c;)V

    .line 1248
    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoPayInfo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/vivo/unionsdk/w;->驶(Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoPayInfo;)V

    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private 驶(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    :cond_0
    return-void
.end method

.method private 驶(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;-><init>()V

    .line 488
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/vivo/unionsdk/cmd/ShowAssitViewCommand;->setCommandParams(IIZLjava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 491
    :cond_0
    return-void
.end method

.method private 驶(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;-><init>()V

    .line 496
    invoke-virtual {v0, p2, p3, p4}, Lcom/vivo/unionsdk/cmd/HideAssitViewCommand;->setCommandParams(JLjava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 499
    :cond_0
    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vivo/unionsdk/w;->示:Z

    return v0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/w;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vivo/unionsdk/w;->賭:Z

    return p1
.end method

.method private 驶(Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vivo sdk not initailed yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/a/b;->示()I

    move-result v2

    .line 557
    if-ne v2, v6, :cond_2

    .line 558
    if-eqz p1, :cond_1

    .line 568
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/unionsdk/w;->始(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not invoker in Server Process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2
    if-eqz v2, :cond_1

    .line 562
    if-eqz p1, :cond_3

    .line 563
    iget-object v3, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    const-string v4, "vivo%e6%9c%8d%e5%8a%a1%e5%ae%89%e5%85%a8%e6%8f%92%e4%bb%b6%e5%88%9d%e5%a7%8b%e5%8c%96%e5%a4%b1%e8%b4%a5%ef%bc%8c%e8%af%b7%e5%92%a8%e8%af%a2vivo%e6%b8%b8%e6%88%8f%e4%b8%ad%e5%bf%83%e5%ae%a2%e6%9c%8d"

    invoke-static {v4}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 565
    :cond_3
    const-string v3, "UnionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vivo sdk not initailed yet, code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 571
    :cond_4
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v0, :cond_5

    .line 574
    new-instance v3, Lcom/vivo/unionsdk/aq;

    invoke-direct {v3, p0, v2}, Lcom/vivo/unionsdk/aq;-><init>(Lcom/vivo/unionsdk/w;I)V

    invoke-direct {p0, v3}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 583
    :cond_5
    if-nez v2, :cond_6

    :goto_1
    return v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public 士()V
    .locals 1

    .prologue
    .line 705
    const-string v0, "[Settings Request]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public 始()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->岬:Landroid/app/Activity;

    return-object v0
.end method

.method public 始(I)V
    .locals 4

    .prologue
    .line 734
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLogout--, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 737
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/vivo/unionsdk/w;->驶(ILcom/vivo/sdkplugin/a/d;I)V

    .line 741
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "[Account Logout]"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/String;JLjava/lang/String;)V

    .line 742
    return-void

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->始()V

    goto :goto_0
.end method

.method public 始(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 802
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnionExitDialogDismiss, pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoExitCallback;->onExitCancel()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    .line 807
    :cond_0
    return-void
.end method

.method public 始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔п惂:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoCallback;

    .line 1155
    if-eqz v0, :cond_0

    .line 1156
    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/unionsdk/open/VivoCallback;->onCallbackResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->釔п惂:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method public 式()Lcom/vivo/unionsdk/a/a;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public 式(I)V
    .locals 4

    .prologue
    .line 936
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->始()V

    .line 956
    :cond_1
    :goto_0
    return-void

    .line 944
    :cond_2
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 945
    :goto_1
    const-string v1, "UnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLogout, requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLogin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/16 v1, 0x5dc

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    const-string v3, "com.vivo.sdkplugin"

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_3

    if-eqz v0, :cond_1

    .line 952
    :cond_3
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;-><init>()V

    .line 953
    invoke-virtual {v0, p1}, Lcom/vivo/unionsdk/cmd/ClientRequestLogoutCommand;->setCommandParams(I)V

    .line 954
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    goto :goto_0

    .line 944
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public 式(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 810
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnionExitDialogExitConfirm, pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    if-eqz v0, :cond_0

    .line 812
    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/w;->式(I)V

    .line 813
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoExitCallback;->onExitConfirm()V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藡:Lcom/vivo/unionsdk/open/VivoExitCallback;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->始()V

    .line 819
    :cond_1
    return-void
.end method

.method public 示()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->式()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public 藛()V
    .locals 3

    .prologue
    .line 745
    const-string v0, "UnionManager"

    const-string v1, "onUserLoginCancel--"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(ILcom/vivo/sdkplugin/a/d;I)V

    .line 747
    return-void
.end method

.method public 藞()V
    .locals 1

    .prologue
    .line 786
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/w;->式(I)V

    .line 787
    return-void
.end method

.method public 藟()V
    .locals 1

    .prologue
    .line 790
    const-string v0, "[Assit Release]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public 藠()V
    .locals 5

    .prologue
    .line 823
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteServiceDisconnect, to callback pay cancel.., isResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/unionsdk/w;->賭:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 825
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 828
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 829
    if-eqz v0, :cond_0

    .line 830
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 831
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 830
    invoke-interface {v0, v1, v3, v4}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 836
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    .line 837
    instance-of v1, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v1, :cond_2

    .line 838
    iget-boolean v1, p0, Lcom/vivo/unionsdk/w;->賭:Z

    if-eqz v1, :cond_2

    check-cast v0, Lcom/vivo/unionsdk/a/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/f;->藛()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vivo/unionsdk/w;->岽滇吹:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 840
    iget v0, p0, Lcom/vivo/unionsdk/w;->岽滇吹:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/unionsdk/w;->岽滇吹:I

    .line 841
    const-string v0, "UnionManager"

    const-string v1, "onRemoteServiceDisconnect, isResuming is true, to show AssitView"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v0, "[Client Resume Then Disconnect]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 845
    :cond_2
    return-void
.end method

.method public 藡()V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->始()V

    .line 1163
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/a/b;->始(I)V

    .line 1164
    return-void
.end method

.method public 藥()V
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    .line 1231
    return-void
.end method

.method public 驶(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    invoke-static {p1}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/t;->始()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 驶(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 602
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdkInitailed, sdk info:\n\tinitCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tinvoker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    .line 604
    invoke-virtual {v2}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tappType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    .line 605
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/w;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tsdkVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x604

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tsdkVerName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.2.4.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tclientPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    .line 608
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-eqz p1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->驶(Landroid/content/Context;)V

    .line 615
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->init(Landroid/content/Context;)V

    .line 616
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/a/b;->始()Lcom/vivo/unionsdk/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->onInvokerChanged(Lcom/vivo/unionsdk/a/a;)V

    .line 619
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;-><init>()V

    .line 620
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/unionsdk/t;->始()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/cmd/ClientLaunchCommand;->setParams(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 623
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;

    invoke-direct {v2}, Lcom/vivo/unionsdk/cmd/ClientReconnectRemoteCommand;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 625
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_3

    .line 627
    const-string v1, "UnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSdkInitFinished, login opid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v1, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;

    invoke-direct {v1}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;-><init>()V

    .line 630
    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->setCommandPrams(Lcom/vivo/sdkplugin/a/d;)V

    .line 632
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->藟()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->始()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_2

    .line 635
    const-string v2, "UnionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSdkInitFinished, prt opid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->驶()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/cmd/RestoreLoginStateCommand;->addParentParam(Lcom/vivo/sdkplugin/a/d;)V

    .line 639
    :cond_2
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/f;->驶()V

    .line 645
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/d/d;->驶(Landroid/content/Context;)V

    .line 647
    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    if-ne v0, v6, :cond_5

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锕:Lcom/vivo/unionsdk/p;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->驶()V

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞:Ljava/lang/Thread;

    if-nez v0, :cond_6

    .line 653
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/unionsdk/y;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/y;-><init>(Lcom/vivo/unionsdk/w;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->锞:Ljava/lang/Thread;

    .line 662
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->锞:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_1
    const/16 v0, 0x5dc

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/vivo/unionsdk/w;->俅:Z

    if-eqz v0, :cond_7

    .line 670
    const-string v0, "[Show Default]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 673
    :cond_7
    iget v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    if-nez v0, :cond_8

    .line 674
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    .line 675
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    const-string v1, "UnionManager"

    const-string v2, "onSdkInitFinished, addShutdownHook exception: "

    invoke-static {v1, v2, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 678
    :cond_8
    iget v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    if-ne v0, v6, :cond_9

    .line 679
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    .line 680
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    .line 682
    iput-object v5, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    .line 683
    iput-object v5, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 684
    iput-object v5, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    goto/16 :goto_0

    .line 686
    :cond_9
    iget v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 687
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    .line 688
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->士士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget v3, p0, Lcom/vivo/unionsdk/w;->藛藛:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V

    goto/16 :goto_0

    .line 691
    :cond_a
    iget v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 692
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    .line 693
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->賭賭:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->賭賭:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->示示:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    goto/16 :goto_0

    .line 696
    :cond_b
    iget v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->士(Landroid/app/Activity;)V

    .line 698
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藟藟:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->藟藟:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/unionsdk/w;->藞藞:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/unionsdk/w;->藡藡:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/unionsdk/w;->藠藠:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public 驶(II)V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 781
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->鈦:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 782
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivo/unionsdk/g;->驶(II)V

    .line 783
    return-void
.end method

.method public 驶(IZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/unionsdk/f;->驶(IZLjava/lang/String;)V

    .line 795
    return-void
.end method

.method public 驶(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/vivo/unionsdk/aj;

    invoke-direct {v0, p0, p1}, Lcom/vivo/unionsdk/aj;-><init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/vivo/unionsdk/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/unionsdk/ak;-><init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoExitCallback;)V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/vivo/unionsdk/x;

    invoke-direct {v0, p0, p2, p1}, Lcom/vivo/unionsdk/x;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoExitCallback;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/vivo/unionsdk/an;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vivo/unionsdk/an;-><init>(Lcom/vivo/unionsdk/w;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V
    .locals 6

    .prologue
    .line 391
    new-instance v0, Lcom/vivo/unionsdk/ao;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/ao;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoPayInfo;Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;)V
    .locals 1

    .prologue
    .line 1101
    new-instance v0, Lcom/vivo/unionsdk/ae;

    invoke-direct {v0, p0, p2, p1}, Lcom/vivo/unionsdk/ae;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 1120
    return-void
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/vivo/unionsdk/ap;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/vivo/unionsdk/ap;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRechargeInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public 驶(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/vivo/unionsdk/w;->讬()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    .line 1200
    new-instance v2, Lcom/vivo/sdkplugin/a/d;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/a/d;-><init>()V

    .line 1201
    invoke-virtual {v2, p2}, Lcom/vivo/sdkplugin/a/d;->驶(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v2, p3}, Lcom/vivo/sdkplugin/a/d;->士(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v2, p4}, Lcom/vivo/sdkplugin/a/d;->藟(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v2, p5}, Lcom/vivo/sdkplugin/a/d;->藞(Ljava/lang/String;)V

    .line 1205
    iget-object v8, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/unionsdk/ah;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vivo/unionsdk/ah;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/sdkplugin/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1227
    :goto_0
    return-void

    .line 1219
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/unionsdk/w;->式式:I

    .line 1220
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/w;->示(Landroid/app/Activity;)V

    .line 1221
    iput-object p2, p0, Lcom/vivo/unionsdk/w;->藟藟:Ljava/lang/String;

    .line 1222
    iput-object p1, p0, Lcom/vivo/unionsdk/w;->始始:Landroid/app/Activity;

    .line 1223
    iput-object p3, p0, Lcom/vivo/unionsdk/w;->藞藞:Ljava/lang/String;

    .line 1224
    iput-object p4, p0, Lcom/vivo/unionsdk/w;->藡藡:Ljava/lang/String;

    .line 1225
    iput-object p5, p0, Lcom/vivo/unionsdk/w;->藠藠:Ljava/lang/String;

    goto :goto_0
.end method

.method public 驶(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/unionsdk/open/VivoCallback;)V
    .locals 6

    .prologue
    .line 1134
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk send comand, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v0, Lcom/vivo/unionsdk/af;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/af;-><init>(Lcom/vivo/unionsdk/w;Landroid/content/Context;Lcom/vivo/unionsdk/open/VivoCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 1150
    return-void
.end method

.method public 驶(Landroid/content/Context;Ljava/lang/String;ZLcom/vivo/unionsdk/open/VivoConfigInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initSdk must in main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p4, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VivoConfigInfo must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {p4}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_2
    invoke-virtual {p4}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->getAppType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 165
    invoke-virtual {p4, v3}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->setAppType(I)V

    .line 167
    :cond_3
    invoke-static {p1}, Lcom/vivo/unionsdk/j;->始(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 168
    const-string v1, "UnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSdk, processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "currentProcessName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-static {p1}, Lcom/vivo/unionsdk/j;->始(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 172
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appId must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    .line 183
    if-eqz p3, :cond_6

    .line 184
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    const-string v1, "vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :cond_6
    invoke-virtual {p4}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->isShowAssit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/w;->俅:Z

    .line 188
    iput-object p2, p0, Lcom/vivo/unionsdk/w;->藞:Ljava/lang/String;

    .line 189
    invoke-virtual {p4}, Lcom/vivo/unionsdk/open/VivoConfigInfo;->getAppType()I

    move-result v0

    iput v0, p0, Lcom/vivo/unionsdk/w;->藟:I

    .line 190
    iput-boolean p3, p0, Lcom/vivo/unionsdk/w;->示:Z

    .line 191
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    .line 192
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP invoke init, pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->式:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/vivo/unionsdk/p;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/unionsdk/w;->藟:I

    invoke-direct {v0, v1, v2}, Lcom/vivo/unionsdk/p;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->锕:Lcom/vivo/unionsdk/p;

    .line 196
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/v;->驶(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0}, Lcom/vivo/unionsdk/w;->賭()V

    .line 198
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Application;)V

    .line 199
    new-instance v0, Lcom/vivo/unionsdk/f;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/unionsdk/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    .line 200
    new-instance v0, Lcom/vivo/unionsdk/a/b;

    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/unionsdk/w;->藟:I

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/vivo/unionsdk/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    .line 201
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->士:Lcom/vivo/unionsdk/a/b;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/b;->驶()V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藛:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vivo/unionsdk/d/a;->驶(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_7
    const-string v0, "UnionManager"

    const-string v1, "vivo sdk has initailed!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public 驶(Lcom/vivo/sdkplugin/a/d;)V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/sdkplugin/a/d;Z)V

    .line 710
    return-void
.end method

.method public 驶(Lcom/vivo/sdkplugin/a/d;Z)V
    .locals 3

    .prologue
    .line 713
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLogin--, restoreByclient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "[Account Login]"

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->示(Ljava/lang/String;)V

    .line 716
    new-instance v0, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;

    invoke-direct {v0}, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;-><init>()V

    .line 717
    iget-object v1, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/unionsdk/g;->式()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vivo/unionsdk/cmd/ClientLoginCommand;->setCommandParams(Ljava/lang/String;Z)V

    .line 718
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 720
    if-nez p2, :cond_0

    .line 721
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/vivo/unionsdk/w;->驶(ILcom/vivo/sdkplugin/a/d;I)V

    .line 723
    :cond_0
    return-void
.end method

.method public 驶(Lcom/vivo/unionsdk/open/VivoCommunityCallback;)V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/vivo/unionsdk/al;

    invoke-direct {v0, p0, p1}, Lcom/vivo/unionsdk/al;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoCommunityCallback;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public 驶(Lcom/vivo/unionsdk/open/VivoConstants$JumpType;)V
    .locals 2

    .prologue
    .line 1254
    if-nez p1, :cond_0

    .line 1255
    const-string v0, "UnionManager"

    const-string v1, "jump params is null"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->始:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1259
    const-string v0, "UnionManager"

    const-string v1, "please call initSdk first"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_1
    sget-object v0, Lcom/vivo/unionsdk/ai;->驶:[I

    invoke-virtual {p1}, Lcom/vivo/unionsdk/open/VivoConstants$JumpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1264
    :pswitch_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/w;->釔()V

    goto :goto_0

    .line 1262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public 驶(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/vivo/unionsdk/am;

    invoke-direct {v0, p0, p1}, Lcom/vivo/unionsdk/am;-><init>(Lcom/vivo/unionsdk/w;Lcom/vivo/unionsdk/open/VivoRoleInfo;)V

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/w;->驶(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public 驶(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 750
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaySuccess, transNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 752
    if-eqz v0, :cond_0

    .line 753
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    return-void
.end method

.method public 驶(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 759
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayFailed, transNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 761
    if-eqz v0, :cond_0

    .line 762
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    return-void
.end method

.method public 驶(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 768
    const-string v0, "UnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayCancel, transNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 770
    if-eqz v0, :cond_0

    .line 771
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->锞烇緸:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-void
.end method

.method public 驶(ZI)V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    invoke-interface {v0}, Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;->onGetRealNameInfoFailed()V

    .line 1129
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    .line 1131
    :cond_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藦:Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;

    invoke-interface {v0, p1, p2}, Lcom/vivo/unionsdk/open/VivoRealNameInfoCallback;->onGetRealNameInfoSucc(ZI)V

    goto :goto_0
.end method

.method public 驶(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/unionsdk/open/VivoCommunityCallback;->onCommunityResult(ZLjava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/w;->藥:Lcom/vivo/unionsdk/open/VivoCommunityCallback;

    .line 311
    :cond_0
    return-void
.end method

.method public 驶(ZZI)V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/vivo/unionsdk/w;->藨:Lcom/vivo/unionsdk/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/unionsdk/f;->驶(ZZI)V

    .line 799
    return-void
.end method
