.class public final Lcom/UnityTextViewPlugin/TextViewWrapper;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static final sMessageId:I

.field public static final sUnityActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 364
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sUnityActivity:Landroid/app/Activity;

    .line 366
    const-class v0, Lcom/UnityTextViewPlugin/TextViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 369
    new-instance v0, Lcom/UnityTextViewPlugin/TextViewWrapper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/UnityTextViewPlugin/TextViewWrapper$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    .line 362
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 366
    sget v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    return v0
.end method

.method public static create(FFFFLjava/lang/String;)I
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "w"    # F
    .param p3, "h"    # F
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    new-instance v0, Lcom/UnityTextViewPlugin/MyFrameLayout;

    sget-object v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sUnityActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/UnityTextViewPlugin/MyFrameLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, "f":Lcom/UnityTextViewPlugin/MyFrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    add-float v4, p0, p2

    float-to-int v4, v4

    .line 382
    add-float v5, p1, p3

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 381
    invoke-virtual {v0, v3}, Lcom/UnityTextViewPlugin/MyFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    float-to-int v3, p0

    float-to-int v4, p1

    invoke-virtual {v0, v3, v4, v6, v6}, Lcom/UnityTextViewPlugin/MyFrameLayout;->setPadding(IIII)V

    .line 390
    new-instance v1, Landroid/widget/ScrollView;

    sget-object v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sUnityActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 391
    .local v1, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setId(I)V

    .line 392
    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 393
    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->setClickable(Z)V

    .line 394
    new-instance v2, Lcom/UnityTextViewPlugin/MyTextView;

    sget-object v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sUnityActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/UnityTextViewPlugin/MyTextView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v2, "t":Lcom/UnityTextViewPlugin/MyTextView;
    invoke-virtual {v2, v8, v6, v8, v6}, Lcom/UnityTextViewPlugin/MyTextView;->setPadding(IIII)V

    .line 397
    invoke-virtual {v2, v6}, Lcom/UnityTextViewPlugin/MyTextView;->setLinksClickable(Z)V

    .line 398
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/UnityTextViewPlugin/MyTextView;->setTextColor(I)V

    .line 399
    invoke-virtual {v2, v7}, Lcom/UnityTextViewPlugin/MyTextView;->setClickable(Z)V

    .line 400
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/UnityTextViewPlugin/MyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 401
    invoke-virtual {v2, p4}, Lcom/UnityTextViewPlugin/MyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/UnityTextViewPlugin/MyTextView;->setId(I)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/UnityTextViewPlugin/MyFrameLayout;->addView(Landroid/view/View;)V

    .line 406
    sget-object v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v4, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v5, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 407
    new-instance v6, Lcom/UnityTextViewPlugin/MessageCreateTextView;

    invoke-direct {v6, v2}, Lcom/UnityTextViewPlugin/MessageCreateTextView;-><init>(Lcom/UnityTextViewPlugin/MyTextView;)V

    .line 406
    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    invoke-virtual {v2}, Lcom/UnityTextViewPlugin/MyTextView;->getId()I

    move-result v3

    return v3
.end method

.method public static destroy(I)V
    .locals 4
    .param p0, "textViewId"    # I

    .prologue
    .line 412
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 413
    new-instance v3, Lcom/UnityTextViewPlugin/MessageDestroyTextView;

    invoke-direct {v3, p0}, Lcom/UnityTextViewPlugin/MessageDestroyTextView;-><init>(I)V

    .line 412
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method

.method public static setBackgroundColor(IFFFF)V
    .locals 5
    .param p0, "textViewId"    # I
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 456
    mul-float v1, p4, v4

    float-to-int v1, v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    .line 457
    mul-float v3, p2, v4

    float-to-int v3, v3

    mul-float/2addr v4, p3

    float-to-int v4, v4

    .line 456
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 458
    .local v0, "color":I
    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 459
    new-instance v4, Lcom/UnityTextViewPlugin/MessageSetBackgroundColor;

    invoke-direct {v4, p0, v0}, Lcom/UnityTextViewPlugin/MessageSetBackgroundColor;-><init>(II)V

    .line 458
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method

.method public static setFontSize(IF)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "fontSize"    # F

    .prologue
    .line 463
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 464
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetFontSize;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetFontSize;-><init>(IF)V

    .line 463
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method public static setFontStyle(II)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "fontStyle"    # I

    .prologue
    .line 468
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 469
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetFontStyle;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetFontStyle;-><init>(II)V

    .line 468
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method

.method public static setRect(IFFFF)V
    .locals 7
    .param p0, "textViewId"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 432
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 433
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetRect;

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, p1, p3

    add-float v6, p2, p4

    invoke-direct {v4, p1, p2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, p0, v4}, Lcom/UnityTextViewPlugin/MessageSetRect;-><init>(ILandroid/graphics/RectF;)V

    .line 432
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method

.method public static setText(ILjava/lang/String;)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 437
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 438
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetText;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetText;-><init>(ILjava/lang/String;)V

    .line 437
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void
.end method

.method public static setTextAlignment(II)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "textAlignment"    # I

    .prologue
    .line 442
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 443
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetTextAlignment;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetTextAlignment;-><init>(II)V

    .line 442
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method public static setTextColor(IFFFF)V
    .locals 5
    .param p0, "textViewId"    # I
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 448
    mul-float v1, p4, v4

    float-to-int v1, v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    .line 449
    mul-float v3, p2, v4

    float-to-int v3, v3

    mul-float/2addr v4, p3

    float-to-int v4, v4

    .line 448
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 450
    .local v0, "color":I
    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v3, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 451
    new-instance v4, Lcom/UnityTextViewPlugin/MessageSetTextColor;

    invoke-direct {v4, p0, v0}, Lcom/UnityTextViewPlugin/MessageSetTextColor;-><init>(II)V

    .line 450
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    return-void
.end method

.method public static setTouchEnabled(IZ)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 420
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 421
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetTouchEnabled;-><init>(IZ)V

    .line 420
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method public static setVisibility(IZ)V
    .locals 4
    .param p0, "textViewId"    # I
    .param p1, "visible"    # Z

    .prologue
    .line 425
    sget-object v0, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/UnityTextViewPlugin/TextViewWrapper;->sHandler:Landroid/os/Handler;

    sget v2, Lcom/UnityTextViewPlugin/TextViewWrapper;->sMessageId:I

    .line 426
    new-instance v3, Lcom/UnityTextViewPlugin/MessageSetVisibility;

    invoke-direct {v3, p0, p1}, Lcom/UnityTextViewPlugin/MessageSetVisibility;-><init>(IZ)V

    .line 425
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method
