.class Lcom/UnityTextViewPlugin/TextViewWrapper$1;
.super Landroid/os/Handler;
.source "TextViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UnityTextViewPlugin/TextViewWrapper;
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
    .line 369
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/UnityTextViewPlugin/TextViewWrapper;->access$0()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/UnityTextViewPlugin/MessageWrapper;

    invoke-virtual {v0}, Lcom/UnityTextViewPlugin/MessageWrapper;->process()V

    .line 375
    :cond_0
    return-void
.end method
