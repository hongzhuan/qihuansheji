.class final Lcom/UnityTextViewPlugin/MyFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TextViewWrapper.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "LayoutView1"

    iput-object v0, p0, Lcom/UnityTextViewPlugin/MyFrameLayout;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 53
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 55
    :pswitch_0
    const-string v1, "LayoutView1"

    const-string v2, "onInterceptTouchEvent action:ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v1, "LayoutView1"

    const-string v2, "onInterceptTouchEvent action:ACTION_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v1, "LayoutView1"

    const-string v2, "onInterceptTouchEvent action:ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :pswitch_3
    const-string v1, "LayoutView1"

    const-string v2, "onInterceptTouchEvent action:ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 102
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 74
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 76
    :pswitch_0
    const-string v1, "LayoutView1"

    const-string v2, "onTouchEvent action:ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :pswitch_1
    const-string v1, "LayoutView1"

    const-string v2, "onTouchEvent action:ACTION_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v1, "LayoutView1"

    const-string v2, "onTouchEvent action:ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :pswitch_3
    const-string v1, "LayoutView1"

    const-string v2, "onTouchEvent action:ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
