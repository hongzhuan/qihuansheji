.class abstract Lcom/UnityTextViewPlugin/MessageWrapper;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"


# static fields
.field protected static final sUnityActivity:Landroid/app/Activity;


# instance fields
.field private final mTextViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sUnityActivity:Landroid/app/Activity;

    sput-object v0, Lcom/UnityTextViewPlugin/MessageWrapper;->sUnityActivity:Landroid/app/Activity;

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "textViewId"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/UnityTextViewPlugin/MessageWrapper;->mTextViewId:I

    .line 111
    return-void
.end method

.method private static LogTextViewDoNotExist(I)V
    .locals 3
    .param p0, "textViewId"    # I

    .prologue
    .line 123
    const-string v0, "MessageWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** ERROR ***: MyTextView("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    const-string v2, ") DO NOT exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method


# virtual methods
.method protected abstract doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V
.end method

.method public process()V
    .locals 3

    .prologue
    .line 115
    sget-object v1, Lcom/UnityTextViewPlugin/MessageWrapper;->sUnityActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/UnityTextViewPlugin/MessageWrapper;->mTextViewId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/UnityTextViewPlugin/MyTextView;

    .line 116
    .local v0, "textView":Lcom/UnityTextViewPlugin/MyTextView;
    if-nez v0, :cond_0

    .line 117
    iget v1, p0, Lcom/UnityTextViewPlugin/MessageWrapper;->mTextViewId:I

    invoke-static {v1}, Lcom/UnityTextViewPlugin/MessageWrapper;->LogTextViewDoNotExist(I)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/UnityTextViewPlugin/MessageWrapper;->doProcess(Lcom/UnityTextViewPlugin/MyTextView;)V

    goto :goto_0
.end method
