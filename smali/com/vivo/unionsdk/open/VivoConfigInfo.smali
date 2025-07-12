.class public Lcom/vivo/unionsdk/open/VivoConfigInfo;
.super Ljava/lang/Object;
.source "VivoConfigInfo.java"


# instance fields
.field private mAppType:I

.field private mIsShowAssit:Z

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mAppType:I

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mIsShowAssit:Z

    return-void
.end method


# virtual methods
.method public getAppType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mAppType:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAssit()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mIsShowAssit:Z

    return v0
.end method

.method public setAppType(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mAppType:I

    .line 26
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mProcessName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setShowAssit(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/vivo/unionsdk/open/VivoConfigInfo;->mIsShowAssit:Z

    .line 34
    return-void
.end method
