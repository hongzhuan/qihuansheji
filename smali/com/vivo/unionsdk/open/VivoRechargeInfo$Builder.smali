.class public Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
.super Ljava/lang/Object;
.source "VivoRechargeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/open/VivoRechargeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;-><init>(Lcom/vivo/unionsdk/open/VivoRechargeInfo$1;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    .line 81
    return-void
.end method


# virtual methods
.method public build()Lcom/vivo/unionsdk/open/VivoRechargeInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->access$402(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public setOpenId(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->access$102(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setSk(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->access$202(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->access$302(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setTransNo(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoRechargeInfo$Builder;->mRechargeInfo:Lcom/vivo/unionsdk/open/VivoRechargeInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoRechargeInfo;->access$502(Lcom/vivo/unionsdk/open/VivoRechargeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    return-object p0
.end method
