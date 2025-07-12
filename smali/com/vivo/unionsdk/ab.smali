.class Lcom/vivo/unionsdk/ab;
.super Ljava/lang/Object;
.source "UnionManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/w;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/w;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 963
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->讬(Lcom/vivo/unionsdk/w;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藛(Lcom/vivo/unionsdk/w;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->賭(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->藛()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->賭(Lcom/vivo/unionsdk/w;)Lcom/vivo/unionsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/p;->始()V

    .line 969
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->俅(Lcom/vivo/unionsdk/w;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const-wide/16 v1, 0x0

    const-string v3, "[Activity Destroy]"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藟(Lcom/vivo/unionsdk/w;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->讬(Lcom/vivo/unionsdk/w;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1016
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0}, Lcom/vivo/unionsdk/w;->藨(Lcom/vivo/unionsdk/w;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/unionsdk/ac;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/ac;-><init>(Lcom/vivo/unionsdk/ab;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 987
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 989
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const-wide/16 v1, 0xc8

    const-string v3, "[Activity Pause]"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;JLjava/lang/String;)V

    .line 990
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/h;->驶(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/w;->式(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)Landroid/app/Activity;

    .line 980
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 981
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/w;->示(Lcom/vivo/unionsdk/w;Landroid/app/Activity;)V

    .line 983
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 1001
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 974
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Z)Z

    .line 995
    iget-object v0, p0, Lcom/vivo/unionsdk/ab;->驶:Lcom/vivo/unionsdk/w;

    const-wide/16 v1, 0x0

    const-string v3, "[Activity Stop]"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Lcom/vivo/unionsdk/w;Landroid/app/Activity;JLjava/lang/String;)V

    .line 996
    return-void
.end method
