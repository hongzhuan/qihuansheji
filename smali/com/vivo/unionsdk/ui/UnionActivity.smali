.class public Lcom/vivo/unionsdk/ui/UnionActivity;
.super Landroid/app/Activity;
.source "UnionActivity.java"


# instance fields
.field private 始:I

.field private 驶:Lcom/vivo/unionsdk/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->始:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/unionsdk/ui/a;->驶(IILandroid/content/Intent;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->藠()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-eqz p1, :cond_1

    .line 25
    const-string v0, "UnionActivity"

    const-string v1, "UnionActivity want to restore, and stop it!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/UnionActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/UnionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/ui/c;->驶(Landroid/content/Intent;)Lcom/vivo/unionsdk/ui/c;

    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    const-string v0, "UnionActivity"

    const-string v1, "UnionActivity finish for null jump item!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/UnionActivity;->finish()V

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/c;->驶()I

    move-result v1

    iput v1, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->始:I

    .line 39
    invoke-static {p0, v0}, Lcom/vivo/unionsdk/ui/b;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/ui/c;)Lcom/vivo/unionsdk/ui/a;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    .line 40
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-nez v1, :cond_3

    .line 41
    const-string v1, "UnionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnionActivity finish for unknown fake type! fakeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/c;->驶()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/UnionActivity;->finish()V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->始()V

    .line 58
    iget v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->始:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 59
    invoke-static {}, Lcom/vivo/unionsdk/u;->驶()Lcom/vivo/unionsdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/ui/a;->藦()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/vivo/unionsdk/u;->驶(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->藟()V

    .line 112
    iget v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->始:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 113
    invoke-static {}, Lcom/vivo/unionsdk/u;->驶()Lcom/vivo/unionsdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/ui/a;->藦()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/vivo/unionsdk/u;->始(Ljava/lang/String;Landroid/app/Activity;)Z

    .line 116
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->藛()V

    .line 97
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 78
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->示()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->士()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->式()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 102
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/UnionActivity;->驶:Lcom/vivo/unionsdk/ui/a;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/a;->藞()V

    .line 105
    :cond_0
    return-void
.end method
