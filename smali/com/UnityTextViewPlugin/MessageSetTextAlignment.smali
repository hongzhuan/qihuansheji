.class final Lcom/UnityTextViewPlugin/MessageSetTextAlignment;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/UnityTextViewPlugin/MessageSetTextAlignment$TextAlignment;
    }
.end annotation


# instance fields
.field private final mTextAlignment:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 253
    iput p2, p0, Lcom/UnityTextViewPlugin/MessageSetTextAlignment;->mTextAlignment:I

    .line 254
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 259
    iget v0, p0, Lcom/UnityTextViewPlugin/MessageSetTextAlignment;->mTextAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setGravity(I)V

    .line 270
    :goto_0
    return-void

    .line 261
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setGravity(I)V

    goto :goto_0

    .line 264
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setGravity(I)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
