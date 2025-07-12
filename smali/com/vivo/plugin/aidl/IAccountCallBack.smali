.class public interface abstract Lcom/vivo/plugin/aidl/IAccountCallBack;
.super Ljava/lang/Object;
.source "IAccountCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract loginCancel()V
.end method

.method public abstract loginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateCancel()V
.end method
