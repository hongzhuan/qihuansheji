.class public Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
.super Ljava/lang/Object;
.source "VivoPayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/open/VivoPayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/vivo/unionsdk/open/VivoPayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivo/unionsdk/open/VivoPayInfo;-><init>(Lcom/vivo/unionsdk/open/VivoPayInfo$1;)V

    iput-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 169
    return-void
.end method


# virtual methods
.method public build()Lcom/vivo/unionsdk/open/VivoPayInfo;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$602(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public setBalance(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$902(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setExtInfo(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1602(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setParty(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1202(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setProductDes(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$402(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$302(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setProductPrice(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$502(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setRoleId(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1302(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setRoleLevel(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1102(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public setRoleName(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1402(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1502(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$802(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setTransNo(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$102(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$702(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setVipLevel(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$1002(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setVivoSignature(Ljava/lang/String;)Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vivo/unionsdk/open/VivoPayInfo$Builder;->mPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-static {v0, p1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->access$202(Lcom/vivo/unionsdk/open/VivoPayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    return-object p0
.end method
