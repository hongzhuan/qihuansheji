.class final Lcom/UnityTextViewPlugin/MessageSetFontSize;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mFontSize:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "fontSize"    # F

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 312
    iput p2, p0, Lcom/UnityTextViewPlugin/MessageSetFontSize;->mFontSize:F

    .line 313
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 318
    iget v0, p0, Lcom/UnityTextViewPlugin/MessageSetFontSize;->mFontSize:F

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setTextSize(F)V

    .line 319
    return-void
.end method
