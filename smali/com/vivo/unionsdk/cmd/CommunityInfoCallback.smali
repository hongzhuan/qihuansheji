.class public Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;
.super Lcom/vivo/unionsdk/cmd/Callback;
.source "CommunityInfoCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x4e26

    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/cmd/Callback;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method protected doExec(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 17
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v1

    const-string v2, "communityNickname"

    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "communityAvatar"

    invoke-virtual {p0, v3}, Lcom/vivo/unionsdk/cmd/CommunityInfoCallback;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/unionsdk/w;->驶(ZLjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
