.class public Lcom/vivo/unionsdk/h;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static final 驶:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    .line 59
    sget-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    const-string v1, "com.vivo.unionsdk.ui.UnionActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    const-string v1, "com.alipay.sdk.auth.AuthActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    const-string v1, "com.alipay.sdk.app.H5PayActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    const-string v1, "com.unionpay.uppay.PayActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public static 驶(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/vivo/unionsdk/h;->驶:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
