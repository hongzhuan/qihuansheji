.class Lcom/UnityAlertViewPlugin/AlertViewWrapper$7;
.super Landroid/os/Handler;
.source "AlertViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UnityAlertViewPlugin/AlertViewWrapper;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    const-class v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    invoke-static {v0}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->access$1(Lcom/UnityAlertViewPlugin/AlertViewWrapper;)V

    .line 160
    :cond_0
    return-void
.end method
