.class public interface abstract Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
.super Ljava/lang/Object;
.source "IPayAndRechargeCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
