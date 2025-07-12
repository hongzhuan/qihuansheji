.class public Lcom/vivo/unionsdk/d/d;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# direct methods
.method public static 始(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/vivo/unionsdk/t;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/t;->始()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p0, p1}, Lcom/vivo/unionsdk/d/a;->驶(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 42
    :cond_0
    return-object v0
.end method

.method public static 驶(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0}, Lcom/vivo/unionsdk/d/c;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/d/c;

    .line 20
    return-void
.end method

.method public static 驶(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public static 驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 29
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public static 驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p1}, Lcom/vivo/unionsdk/d/c;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/d/c;

    invoke-static/range {p0 .. p5}, Lcom/vivo/unionsdk/d/c;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
