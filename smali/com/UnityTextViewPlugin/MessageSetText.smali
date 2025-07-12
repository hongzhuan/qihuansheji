.class final Lcom/UnityTextViewPlugin/MessageSetText;
.super Lcom/UnityTextViewPlugin/MessageWrapper;
.source "TextViewWrapper.java"


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "textViewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/UnityTextViewPlugin/MessageWrapper;-><init>(I)V

    .line 231
    iput-object p2, p0, Lcom/UnityTextViewPlugin/MessageSetText;->mText:Ljava/lang/String;

    .line 232
    return-void
.end method


# virtual methods
.method protected final doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/UnityTextViewPlugin/MyTextView;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/UnityTextViewPlugin/MessageSetText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/UnityTextViewPlugin/MyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method
