.class Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;
.super Ljava/lang/Object;
.source "AlertViewWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UnityAlertViewPlugin/AlertViewWrapper;->doShowAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/UnityAlertViewPlugin/AlertViewWrapper;

.field private final synthetic val$callbackGameObjectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/UnityAlertViewPlugin/AlertViewWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;->this$0:Lcom/UnityAlertViewPlugin/AlertViewWrapper;

    iput-object p2, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;->val$callbackGameObjectName:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/UnityAlertViewPlugin/AlertViewWrapper$2;->val$callbackGameObjectName:Ljava/lang/String;

    .line 84
    const-string v1, "onClick"

    const-string v2, "1"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
