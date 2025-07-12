.class final Lcom/UnityTextViewPlugin/MessageSetFontStyle;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/UnityTextViewPlugin/MessageSetFontStyle$FontStyle;
    }
.end annotation


# instance fields
.field private final mFontStyle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "fontStyle"    # I

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 335
    iput p2, p0, Lcom/UnityTextViewPlugin/MessageSetFontStyle;->mFontStyle:I

    .line 336
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 2
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 341
    iget v0, p0, Lcom/UnityTextViewPlugin/MessageSetFontStyle;->mFontStyle:I

    packed-switch v0, :pswitch_data_0

    .line 352
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/UnityTextViewPlugin/MyTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 356
    :goto_0
    return-void

    .line 343
    :pswitch_0
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/UnityTextViewPlugin/MyTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/UnityTextViewPlugin/MyTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 349
    :pswitch_2
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/UnityTextViewPlugin/MyTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
