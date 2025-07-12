.class public Lcom/UnityAlertViewPlugin/AlertViewWrapper;
.super Ljava/lang/Object;
.source "AlertViewWrapper.java"


# static fields
.field private static final mCallbackGameObjectMethod:Ljava/lang/String; = "onClick"

.field private static final mCallbackGameObjectMethodForEditDialog:Ljava/lang/String; = "onClickFromEditView"

.field private static final mCallbackGameObjectName:Ljava/lang/String; = "AlertViewCallbackListener#"

.field private static mMainThreadHandler:Landroid/os/Handler;

.field private static mMainThreadHandlerForEditDialog:Landroid/os/Handler;

.field private static final mSeperators:[Ljava/lang/String;


# instance fields
.field private final mAlertId:I

.field private final mButtonTexts:[Ljava/lang/String;

.field private final mHint:Ljava/lang/String;

.field private mInputType:I

.field private final mMessage:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\uffff"

    aput-object v2, v0, v1

    sput-object v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mSeperators:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "buttonTexts"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mInputType:I

    .line 47
    iput-object p1, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mTitle:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMessage:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    .line 51
    iput-object p3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mHint:Ljava/lang/String;

    .line 53
    const-string v0, "AlertViewWarpper - EditView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alertViewId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonTexts"    # [Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mInputType:I

    .line 36
    iput-object p1, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mTitle:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMessage:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mHint:Ljava/lang/String;

    .line 41
    const-string v0, "AlertViewWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alertViewId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mSeperators:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/UnityAlertViewPlugin/AlertViewWrapper;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->doShowAlertDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/UnityAlertViewPlugin/AlertViewWrapper;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->doShowEditDialog()V

    return-void
.end method

.method private doShowAlertDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 59
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 58
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlertViewCallbackListener#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "callbackGameObjectName":Ljava/lang/String;
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 68
    new-instance v3, Lcom/UnityAlertViewPlugin/AlertViewWrapper$1;

    invoke-direct {v3, p0, v1}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$1;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v5, :cond_1

    .line 78
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v2, v2, v5

    .line 79
    new-instance v3, Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;

    invoke-direct {v3, p0, v1}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v6, :cond_2

    .line 89
    iget-object v2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v2, v2, v6

    .line 90
    new-instance v3, Lcom/UnityAlertViewPlugin/AlertViewWrapper$3;

    invoke-direct {v3, p0, v1}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$3;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 100
    return-void
.end method

.method private doShowEditDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 105
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 104
    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v2, Landroid/widget/EditText;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "tmp":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 111
    iget v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mInputType:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 112
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AlertViewCallbackListener#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget v4, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "callbackGameObjectName":Ljava/lang/String;
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 117
    new-instance v4, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 116
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 127
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v3, v3, v6

    .line 128
    new-instance v4, Lcom/UnityAlertViewPlugin/AlertViewWrapper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$5;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 127
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v7, :cond_2

    .line 138
    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mButtonTexts:[Ljava/lang/String;

    aget-object v3, v3, v7

    .line 139
    new-instance v4, Lcom/UnityAlertViewPlugin/AlertViewWrapper$6;

    invoke-direct {v4, p0, v1, v2}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$6;-><init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 138
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method

.method public static showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "buttonTitlesSequence"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$7;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandler:Landroid/os/Handler;

    .line 163
    :cond_0
    new-instance v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    .line 164
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mSeperators:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-direct {v0, p0, p1, v1}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    .local v0, "obj":Lcom/UnityAlertViewPlugin/AlertViewWrapper;
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandler:Landroid/os/Handler;

    sget-object v2, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandler:Landroid/os/Handler;

    .line 166
    const-class v3, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 165
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget v1, v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    return v1
.end method

.method public static showEditDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "buttonTitlesSequence"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandlerForEditDialog:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/UnityAlertViewPlugin/AlertViewWrapper$8;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandlerForEditDialog:Landroid/os/Handler;

    .line 181
    :cond_0
    new-instance v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    .line 182
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mSeperators:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    .local v0, "obj":Lcom/UnityAlertViewPlugin/AlertViewWrapper;
    sget-object v1, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandlerForEditDialog:Landroid/os/Handler;

    sget-object v2, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mMainThreadHandlerForEditDialog:Landroid/os/Handler;

    .line 184
    const-class v3, Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 183
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    iget v1, v0, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->mAlertId:I

    return v1
.end method
