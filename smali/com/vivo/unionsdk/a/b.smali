.class public Lcom/vivo/unionsdk/a/b;
.super Ljava/lang/Object;
.source "InvokerManager.java"

# interfaces
.implements Lcom/vivo/unionsdk/a/a$a;
.implements Lcom/vivo/unionsdk/a/c$b;


# instance fields
.field private 士:I

.field private 始:Z

.field private 式:Ljava/lang/String;

.field private 示:I

.field private 藛:Lcom/vivo/unionsdk/a/a;

.field private 藞:Lcom/vivo/unionsdk/a/c;

.field private 驶:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/a/b;->始:Z

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/unionsdk/a/b;->士:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/vivo/unionsdk/a/b;->式:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/vivo/unionsdk/a/b;->示:I

    .line 40
    iput-boolean p4, p0, Lcom/vivo/unionsdk/a/b;->始:Z

    .line 41
    new-instance v0, Lcom/vivo/unionsdk/a/c;

    invoke-direct {v0, p1, p0}, Lcom/vivo/unionsdk/a/c;-><init>(Landroid/content/Context;Lcom/vivo/unionsdk/a/c$b;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    .line 42
    return-void
.end method

.method private 式(I)V
    .locals 5

    .prologue
    .line 133
    iput p1, p0, Lcom/vivo/unionsdk/a/b;->士:I

    .line 134
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget v1, p0, Lcom/vivo/unionsdk/a/b;->士:I

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->驶(I)V

    .line 135
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 137
    :cond_0
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    const-string v1, "%e8%af%b7%e5%9c%a8%e6%9d%83%e9%99%90%e7%ae%a1%e7%90%86%e4%b8%ad%e6%89%93%e5%bc%80%e2%80%9cvivo%e6%9c%8d%e5%8a%a1%e5%ae%89%e5%85%a8%e6%8f%92%e4%bb%b6%e2%80%9d%e5%85%b3%e8%81%94%e5%90%af%e5%8a%a8%e6%9d%83%e9%99%90%e5%8f%8a%e5%85%b6%e4%bb%96%e5%bf%85%e8%a6%81%e6%9d%83%e9%99%90"

    invoke-static {v1}, Lcom/vivo/unionsdk/r;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    const-string v1, "key"

    const-string v2, "142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "value"

    iget v2, p0, Lcom/vivo/unionsdk/a/b;->士:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    iget v2, p0, Lcom/vivo/unionsdk/a/b;->示:I

    iget-object v3, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public 始()Lcom/vivo/unionsdk/a/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    return-object v0
.end method

.method public 始(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/vivo/unionsdk/a/b;->士:I

    .line 78
    return-void
.end method

.method public 式()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c;->始()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 示()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/vivo/unionsdk/a/b;->士:I

    return v0
.end method

.method public 驶()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lcom/vivo/unionsdk/a/b;->士:I

    .line 47
    iget v2, p0, Lcom/vivo/unionsdk/a/b;->士:I

    if-ne v2, v3, :cond_0

    .line 48
    const-string v0, "InvokerManager"

    const-string v1, "init return for sdk initing!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 51
    :cond_0
    iput v3, p0, Lcom/vivo/unionsdk/a/b;->士:I

    .line 54
    iget-object v2, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v2}, Lcom/vivo/unionsdk/a/c;->驶()Lcom/vivo/unionsdk/a/c$a;

    move-result-object v2

    if-nez v2, :cond_3

    .line 55
    const-string v2, "InvokerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, mDebug = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/unionsdk/a/b;->始:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preInitCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v2, p0, Lcom/vivo/unionsdk/a/b;->始:Z

    if-nez v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 58
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/a/c;->驶(Z)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/a/b;->驶(Z)V

    goto :goto_0
.end method

.method public 驶(I)V
    .locals 1

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/a/b;->式(I)V

    .line 130
    return-void
.end method

.method public 驶(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c;->驶()Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->示()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 155
    :cond_0
    return-void
.end method

.method public 驶(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x258

    const/4 v1, 0x0

    .line 82
    const-string v0, "InvokerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResourceInstalled, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/a/b;->式(I)V

    .line 121
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/a;->驶()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 93
    if-gez v4, :cond_3

    move v0, v1

    .line 104
    :goto_1
    iget-object v2, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.vszone.arena.vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v4, v5, :cond_2

    move v0, v1

    .line 108
    :cond_2
    if-eqz v0, :cond_6

    .line 109
    new-instance v0, Lcom/vivo/unionsdk/a/f;

    iget-object v1, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/unionsdk/a/b;->式:Ljava/lang/String;

    iget v3, p0, Lcom/vivo/unionsdk/a/b;->示:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/vivo/unionsdk/a/a$a;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    .line 110
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c;->驶()Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->式()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->示()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/s;->驶(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 112
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/c/e;->驶(Landroid/content/Context;)V

    .line 119
    :goto_2
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/a;->示()V

    goto :goto_0

    .line 95
    :cond_3
    iget v0, p0, Lcom/vivo/unionsdk/a/b;->示:I

    if-nez v0, :cond_4

    const/16 v0, 0x9

    if-ge v4, v0, :cond_4

    move v0, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget v0, p0, Lcom/vivo/unionsdk/a/b;->示:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    if-ge v4, v5, :cond_5

    move v0, v1

    .line 100
    goto :goto_1

    .line 102
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 114
    :cond_6
    new-instance v0, Lcom/vivo/unionsdk/a/s;

    iget-object v1, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/unionsdk/a/b;->式:Ljava/lang/String;

    iget v3, p0, Lcom/vivo/unionsdk/a/b;->示:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vivo/unionsdk/a/s;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vivo/unionsdk/a/a$a;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/a/b;->藛:Lcom/vivo/unionsdk/a/a;

    .line 115
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->藞:Lcom/vivo/unionsdk/a/c;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c;->驶()Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->式()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/unionsdk/a/c$a;->示()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/s;->驶(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 117
    iget-object v0, p0, Lcom/vivo/unionsdk/a/b;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/c/e;->驶(Landroid/content/Context;)V

    goto :goto_2
.end method
