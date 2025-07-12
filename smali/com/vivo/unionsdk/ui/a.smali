.class public Lcom/vivo/unionsdk/ui/a;
.super Ljava/lang/Object;
.source "FakeActivity.java"


# instance fields
.field protected 士:I

.field protected 始:Ljava/util/Map;

.field protected 式:Ljava/lang/String;

.field protected 示:I

.field protected 驶:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lcom/vivo/unionsdk/ui/a;->士:I

    .line 33
    iput-object p1, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/vivo/unionsdk/ui/a;->始:Ljava/util/Map;

    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->始:Ljava/util/Map;

    const-string v1, "clientPkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/a;->式:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->式:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "FakeActivity"

    const-string v1, "FakeActivity, mClientPkgName is empty"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/a;->藥()V

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    iput v2, p0, Lcom/vivo/unionsdk/ui/a;->示:I

    .line 43
    const-string v0, "orientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/unionsdk/ui/a;->士:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected 士()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/a;->藨()V

    .line 77
    return-void
.end method

.method protected 始()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/a;->藡()Landroid/view/Window;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/a;->驶()I

    move-result v1

    .line 56
    packed-switch v1, :pswitch_data_0

    .line 62
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Theme"

    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 63
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "vivo_window_background"

    invoke-static {v3}, Lcom/vivo/unionsdk/s;->式(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 67
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 59
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected 式()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected 示()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected 藛()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected 藞()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected 藟()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public 藠()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public 藡()Landroid/view/Window;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public 藥()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method

.method public 藦()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->式:Ljava/lang/String;

    return-object v0
.end method

.method protected 藨()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    iget v0, p0, Lcom/vivo/unionsdk/ui/a;->士:I

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/a;->驶:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected 驶()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected 驶(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
