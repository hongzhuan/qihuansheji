.class final Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "textViewId"    # I
    .param p2, "touchEnabled"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;->mTouchEnabled:Z

    .line 174
    iput-boolean p2, p0, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;->mTouchEnabled:Z

    .line 175
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 2
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;->mTouchEnabled:Z

    .line 181
    iget-boolean v1, p0, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;->mTouchEnabled:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 184
    .local v0, "m":Landroid/text/method/MovementMethod;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 185
    return-void

    .line 182
    .end local v0    # "m":Landroid/text/method/MovementMethod;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
