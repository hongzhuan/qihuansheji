.class public Lcom/vivo/unionsdk/p;
.super Ljava/lang/Object;
.source "PlayTimeRecorder.java"


# instance fields
.field private 士:Landroid/os/Handler;

.field private 始:Z

.field private 式:Z

.field private 示:J

.field private 藛:Ljava/lang/Runnable;

.field private 藞:I

.field private 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->始:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->式:Z

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/unionsdk/p;->示:J

    .line 27
    iput-object p1, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/vivo/unionsdk/p;->藞:I

    .line 29
    new-instance v0, Lcom/vivo/unionsdk/q;

    invoke-direct {v0, p0}, Lcom/vivo/unionsdk/q;-><init>(Lcom/vivo/unionsdk/p;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/p;->藛:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/p;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藠()V

    return-void
.end method

.method private 藞()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 114
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/unionsdk/g;->式(J)J

    move-result-wide v0

    .line 115
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 119
    iget v2, p0, Lcom/vivo/unionsdk/p;->藞:I

    if-nez v2, :cond_1

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v3, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "key"

    const-string v4, "025"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "value"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    iget v1, p0, Lcom/vivo/unionsdk/p;->藞:I

    iget-object v3, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3, v6}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/g;->士()V

    .line 139
    :cond_0
    return-void

    .line 130
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v3, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "key"

    const-string v4, "109"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "value"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    iget v1, p0, Lcom/vivo/unionsdk/p;->藞:I

    iget-object v3, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3, v6}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 藟()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/unionsdk/p;->示:J

    sub-long/2addr v0, v2

    .line 143
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/vivo/unionsdk/p;->示:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/vivo/unionsdk/g;->始(J)V

    .line 146
    :cond_0
    return-void
.end method

.method private 藠()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/unionsdk/p;->藛:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private 藡()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/unionsdk/p;->藛:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/p;J)J
    .locals 0

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/vivo/unionsdk/p;->示:J

    return-wide p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/p;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藟()V

    return-void
.end method


# virtual methods
.method public 士()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藡()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->始:Z

    .line 105
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藟()V

    .line 106
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藞()V

    goto :goto_0
.end method

.method public 始()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->始:Z

    .line 52
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藞()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/unionsdk/p;->示:J

    .line 56
    iget v0, p0, Lcom/vivo/unionsdk/p;->藞:I

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "key"

    const-string v2, "024"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "value"

    const-string v2, "--"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/unionsdk/p;->藞:I

    iget-object v3, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藠()V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "key"

    const-string v2, "108"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "value"

    const-string v2, "--"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/unionsdk/p;->藞:I

    iget-object v3, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public 式()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/unionsdk/p;->式:Z

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->式:Z

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/unionsdk/p;->示:J

    .line 86
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藠()V

    goto :goto_0
.end method

.method public 示()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/unionsdk/p;->式:Z

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/p;->式:Z

    .line 94
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藡()V

    .line 95
    invoke-direct {p0}, Lcom/vivo/unionsdk/p;->藟()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/unionsdk/p;->示:J

    goto :goto_0
.end method

.method public 藛()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/vivo/unionsdk/p;->始:Z

    return v0
.end method

.method public 驶()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vivo/unionsdk/p;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/d/c;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/d/c;->驶()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/p;->士:Landroid/os/Handler;

    .line 42
    invoke-virtual {p0}, Lcom/vivo/unionsdk/p;->始()V

    .line 44
    :cond_0
    return-void
.end method
