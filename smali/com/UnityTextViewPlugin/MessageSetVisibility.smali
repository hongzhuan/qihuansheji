.class final Lcom/UnityTextViewPlugin/MessageSetVisibility;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mVisible:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 194
    iput-boolean p2, p0, Lcom/UnityTextViewPlugin/MessageSetVisibility;->mVisible:Z

    .line 195
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 2
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Lcom/UnityTextViewPlugin/MessageSetVisibility;->mVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
