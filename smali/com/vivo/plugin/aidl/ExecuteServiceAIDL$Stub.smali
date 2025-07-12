.class public abstract Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;
.super Landroid/os/Binder;
.source "ExecuteServiceAIDL.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.plugin.aidl.ExecuteServiceAIDL"

.field static final TRANSACTION_doCommand:I = 0x7

.field static final TRANSACTION_paymentActionInit:I = 0x4

.field static final TRANSACTION_paymentActionInitial:I = 0x5

.field static final TRANSACTION_registerCallBack:I = 0x1

.field static final TRANSACTION_registerClient:I = 0x8

.field static final TRANSACTION_registerProcessDeath:I = 0xa

.field static final TRANSACTION_startAssistService:I = 0x3

.field static final TRANSACTION_stopAssistService:I = 0x2

.field static final TRANSACTION_unregisterClient:I = 0x9

.field static final TRANSACTION_vivoAccountreportRoleInfo:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IAccountCallBack;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    move-result-object v3

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    move-result-object v5

    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->registerCallBack(Ljava/lang/String;Lcom/vivo/plugin/aidl/IAccountCallBack;Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;ILcom/vivo/plugin/aidl/ISinglePayCallBack;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 60
    goto :goto_0

    .line 64
    :sswitch_2
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->stopAssistService()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 67
    goto :goto_0

    .line 71
    :sswitch_3
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->startAssistService(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 76
    goto :goto_0

    .line 80
    :sswitch_4
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->paymentActionInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 87
    goto :goto_0

    .line 91
    :sswitch_5
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->paymentActionInitial(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 96
    goto :goto_0

    .line 100
    :sswitch_6
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 113
    goto/16 :goto_0

    .line 117
    :sswitch_7
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->doCommand(ILjava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 128
    goto/16 :goto_0

    .line 132
    :sswitch_8
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/IClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IClient;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->registerClient(Lcom/vivo/plugin/aidl/IClient;Ljava/lang/String;Ljava/lang/String;II)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 145
    goto/16 :goto_0

    .line 149
    :sswitch_9
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->unregisterClient(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 156
    goto/16 :goto_0

    .line 160
    :sswitch_a
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->registerProcessDeath(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 167
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
