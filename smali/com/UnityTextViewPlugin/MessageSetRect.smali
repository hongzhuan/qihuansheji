.class final Lcom/UnityTextViewPlugin/MessageSetRect;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 212
    iput-object p2, p0, Lcom/UnityTextViewPlugin/MessageSetRect;->mRect:Landroid/graphics/RectF;

    .line 213
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 4
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/UnityTextViewPlugin/MessageSetRect;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/UnityTextViewPlugin/MessageSetRect;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v1, p0, Lcom/UnityTextViewPlugin/MessageSetRect;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/UnityTextViewPlugin/MessageSetRect;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 222
    return-void
.end method
