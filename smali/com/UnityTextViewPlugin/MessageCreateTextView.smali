.class final Lcom/UnityTextViewPlugin/MessageCreateTextView;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mTextView:Lcom/UnityTextViewPlugin/MyTextView;


# direct methods
.method public constructor <init>(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 136
    iput-object p1, p0, Lcom/UnityTextViewPlugin/MessageCreateTextView;->mTextView:Lcom/UnityTextViewPlugin/MyTextView;

    .line 137
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 3
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/UnityTextViewPlugin/MyTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    .local v0, "vg":Landroid/view/ViewGroup;
    sget-object v1, Lcom/UnityTextViewPlugin/MessageCreateTextView;->sUnityActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method

.method public process()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/UnityTextViewPlugin/MessageCreateTextView;->mTextView:Lcom/UnityTextViewPlugin/MyTextView;

    invoke-virtual {p0, v0}, Lcom/UnityTextViewPlugin/MessageCreateTextView;->doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V

    .line 141
    return-void
.end method
