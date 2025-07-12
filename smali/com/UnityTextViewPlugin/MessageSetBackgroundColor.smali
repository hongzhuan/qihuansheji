.class final Lcom/UnityTextViewPlugin/MessageSetBackgroundColor;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mBackgroundColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 296
    iput p2, p0, Lcom/UnityTextViewPlugin/MessageSetBackgroundColor;->mBackgroundColor:I

    .line 297
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 302
    iget v0, p0, Lcom/UnityTextViewPlugin/MessageSetBackgroundColor;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setBackgroundColor(I)V

    .line 303
    return-void
.end method
