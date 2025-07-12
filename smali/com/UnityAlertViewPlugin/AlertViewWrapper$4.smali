.class Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;
.super Ljava/lang/Object;
.source "AlertViewWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UnityAlertViewPlugin/AlertViewWrapper;->doShowEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UnityAlertViewPlugin/AlertViewWrapper;

.field private final synthetic val$callbackGameObjectName:Ljava/lang/String;

.field private final synthetic val$tmp:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;->this$0:Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    iput-object p2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;->val$callbackGameObjectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;->val$tmp:Landroid/widget/EditText;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;->val$callbackGameObjectName:Ljava/lang/String;

    .line 122
    const-string v1, "onClickFromEditView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/UnityAlertViewPlugin/AlertViewWrapper;->access$0()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$4;->val$tmp:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
