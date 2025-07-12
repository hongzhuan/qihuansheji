.class public interface abstract Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
.super Ljava/lang/Object;
.source "ExecuteServiceAIDL.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;
    }
.end annotation


# virtual methods
.method public abstract doCommand(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract paymentActionInit(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract paymentActionInitial(Ljava/lang/String;)V
.end method

.method public abstract registerCallBack(Ljava/lang/String;Lcom/vivo/plugin/aidl/IAccountCallBack;Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;ILcom/vivo/plugin/aidl/ISinglePayCallBack;)V
.end method

.method public abstract registerClient(Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract registerProcessDeath(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract startAssistService(Ljava/lang/String;)V
.end method

.method public abstract stopAssistService()V
.end method

.method public abstract unregisterClient(Ljava/lang/String;I)V
.end method

.method public abstract vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
