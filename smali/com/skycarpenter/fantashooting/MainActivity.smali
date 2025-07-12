.class public Lcom/skycarpenter/fantashooting/MainActivity;
.super Lcom/skycarpenter/fantashooting/UnityPlayerNativeActivity;
.source "MainActivity.java"


# static fields
.field public static channelID:I

.field public static context:Lcom/skycarpenter/fantashooting/MainActivity;


# instance fields
.field final AD_BANNER:I

.field final AD_INTERVAL:I

.field final AD_MEDIA:I

.field mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/skycarpenter/fantashooting/MainActivity;->context:Lcom/skycarpenter/fantashooting/MainActivity;

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/skycarpenter/fantashooting/MainActivity;->channelID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/skycarpenter/fantashooting/UnityPlayerNativeActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->AD_BANNER:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->AD_INTERVAL:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->AD_MEDIA:I

    .line 20
    return-void
.end method


# virtual methods
.method public exitGame()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$1;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->exit(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoExitCallback;)V

    .line 76
    return-void
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 80
    sget v4, Lcom/skycarpenter/fantashooting/MainActivity;->channelID:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 82
    :try_start_0
    const-string v3, ""

    .line 83
    .local v3, "strChannelString":Ljava/lang/String;
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 84
    .local v0, "buffer":[B
    sget-object v4, Lcom/skycarpenter/fantashooting/MainActivity;->context:Lcom/skycarpenter/fantashooting/MainActivity;

    invoke-virtual {v4}, Lcom/skycarpenter/fantashooting/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "Channel.txt"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 85
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 86
    new-instance v3, Ljava/lang/String;

    .end local v3    # "strChannelString":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 87
    .restart local v3    # "strChannelString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/skycarpenter/fantashooting/MainActivity;->channelID:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "strChannelString":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v4, Lcom/skycarpenter/fantashooting/MainActivity;->channelID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 89
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideAd(II)V
    .locals 2
    .param p1, "adType"    # I
    .param p2, "sdkIndex"    # I

    .prologue
    .line 188
    const-string v0, "mylog"

    const-string v1, "\u9690\u85cf\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 191
    :pswitch_1
    if-eqz p2, :cond_0

    .line 196
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$8;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$9;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/skycarpenter/fantashooting/UnityPlayerNativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    .line 33
    sput-object p0, Lcom/skycarpenter/fantashooting/MainActivity;->context:Lcom/skycarpenter/fantashooting/MainActivity;

    .line 34
    return-void
.end method

.method public showAd(II)V
    .locals 4
    .param p1, "adType"    # I
    .param p2, "sdkIndex"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 99
    const-string v0, "mylog"

    const-string v1, "\u5c55\u793a\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-string v0, "AdManager"

    const-string v1, "ShowBannerAD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p2, :cond_0

    .line 108
    if-ne p2, v2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$2;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    :cond_1
    if-ne p2, v3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$3;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 129
    :pswitch_1
    const-string v0, "AdManager"

    const-string v1, "ShowIntervalAD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz p2, :cond_0

    .line 135
    if-ne p2, v2, :cond_2

    .line 137
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$4;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 145
    :cond_2
    if-ne p2, v3, :cond_0

    .line 147
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$5;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v0, "AdManager"

    const-string v1, "ShowMediaAD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p2, :cond_0

    .line 162
    if-ne p2, v2, :cond_3

    .line 164
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$6;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :cond_3
    if-ne p2, v3, :cond_0

    .line 174
    iget-object v0, p0, Lcom/skycarpenter/fantashooting/MainActivity;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/skycarpenter/fantashooting/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/skycarpenter/fantashooting/MainActivity$7;-><init>(Lcom/skycarpenter/fantashooting/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public skipWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "addId"    # Ljava/lang/String;
    .param p2, "miniId"    # Ljava/lang/String;
    .param p3, "miniUrl"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "mylog"

    const-string v1, "\u8df3\u8f6c\u5fae\u4fe1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
