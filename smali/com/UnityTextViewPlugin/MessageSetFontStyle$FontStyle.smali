.class final Lcom/UnityTextViewPlugin/MessageSetFontStyle$FontStyle;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/UnityTextViewPlugin/MessageSetFontStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FontStyle"
.end annotation


# static fields
.field public static final Bold:I = 0x1

.field public static final BoldAndItalic:I = 0x3

.field public static final Italic:I = 0x2

.field public static final Normal:I


# instance fields
.field final synthetic this$0:Lcom/UnityTextViewPlugin/MessageSetFontStyle;


# direct methods
.method constructor <init>(Lcom/UnityTextViewPlugin/MessageSetFontStyle;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/UnityTextViewPlugin/MessageSetFontStyle$FontStyle;->this$0:Lcom/UnityTextViewPlugin/MessageSetFontStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
