.class final Lcom/UnityTextViewPlugin/MessageSetTextColor;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 279
    iput p2, p0, Lcom/UnityTextViewPlugin/MessageSetTextColor;->mTextColor:I

    .line 280
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 285
    iget v0, p0, Lcom/UnityTextViewPlugin/MessageSetTextColor;->mTextColor:I

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setTextColor(I)V

    .line 286
    return-void
.end method
