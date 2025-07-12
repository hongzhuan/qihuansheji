.class public Lcom/vivo/unionsdk/ui/b;
.super Ljava/lang/Object;
.source "FakeFactory.java"


# direct methods
.method public static 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/ui/c;)Lcom/vivo/unionsdk/ui/a;
    .locals 4

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/vivo/unionsdk/ui/c;->驶()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/vivo/unionsdk/ui/c;->始()Ljava/util/HashMap;

    move-result-object v1

    .line 19
    sparse-switch v0, :sswitch_data_0

    .line 27
    const-string v1, "FakeFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non matched fake type! fakeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 21
    :sswitch_0
    new-instance v0, Lcom/vivo/unionsdk/a;

    invoke-direct {v0, p0, v1}, Lcom/vivo/unionsdk/a;-><init>(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    .line 24
    :sswitch_1
    new-instance v0, Lcom/vivo/unionsdk/ui/d;

    invoke-direct {v0, p0, v1}, Lcom/vivo/unionsdk/ui/d;-><init>(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    .line 19
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
