.class final Lcom/UnityTextViewPlugin/MyTextView;
.super Landroid/widget/TextView;
.source "TextViewWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    const-string v0, "MyTextView onTouch"

    invoke-virtual {p0, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
