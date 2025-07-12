.class public Lcom/vivo/unionsdk/s;
.super Ljava/lang/Object;
.source "ResourceProxy.java"


# static fields
.field private static 始:Landroid/content/res/Resources;

.field private static 驶:Landroid/content/Context;


# direct methods
.method public static 始(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 57
    const-string v0, "dimen"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    if-lez v0, :cond_0

    .line 59
    sget-object v1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 式(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 84
    const-string v0, "color"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    if-lez v0, :cond_0

    .line 86
    sget-object v1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 驶(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 74
    const/4 v0, -0x1

    .line 76
    :try_start_0
    sget-object v1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    const-string v2, "com.vivo.sdkplugin"

    invoke-virtual {v1, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string v2, "ResourceProxy"

    const-string v3, "getResourceId exception: "

    invoke-static {v2, v3, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static 驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    if-lez v0, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 驶(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 25
    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    sget-object v1, Lcom/vivo/unionsdk/s;->驶:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 驶(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    if-lez v0, :cond_0

    .line 43
    sget-object v1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs 驶(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    if-lez v0, :cond_0

    .line 51
    sget-object v1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 驶(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lcom/vivo/unionsdk/s;->驶:Landroid/content/Context;

    .line 21
    sput-object p1, Lcom/vivo/unionsdk/s;->始:Landroid/content/res/Resources;

    .line 22
    return-void
.end method
