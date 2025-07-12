.class Lcom/skycarpenter/fantashooting/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vivo/unionsdk/open/VivoExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skycarpenter/fantashooting/MainActivity;->exitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skycarpenter/fantashooting/MainActivity;


# direct methods
.method constructor <init>(Lcom/skycarpenter/fantashooting/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skycarpenter/fantashooting/MainActivity$1;->this$0:Lcom/skycarpenter/fantashooting/MainActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitCancel()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onExitConfirm()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity$1;->this$0:Lcom/skycarpenter/fantashooting/MainActivity;

    iget-object v0, v0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 46
    return-void
.end method
