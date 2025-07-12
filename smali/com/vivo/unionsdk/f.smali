.class Lcom/vivo/unionsdk/f;
.super Ljava/lang/Object;
.source "AppChecker.java"


# instance fields
.field private 士:Lcom/vivo/unionsdk/open/VivoPayInfo;

.field private 始:Landroid/app/Activity;

.field private 式:I

.field private 示:Z

.field private 藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field private 藞:I

.field private 藟:Z

.field private 藠:Z

.field private 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/vivo/unionsdk/f;->式:I

    .line 34
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->示:Z

    .line 38
    iput v1, p0, Lcom/vivo/unionsdk/f;->藞:I

    .line 40
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藟:Z

    .line 41
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藠:Z

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private 士()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 284
    if-gez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private 式()V
    .locals 5

    .prologue
    .line 232
    const-string v0, "AppChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSucc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/unionsdk/f;->式:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 234
    const-string v0, "AppChecker"

    const-string v1, "actionSuccess, but mActivity is null!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/vivo/unionsdk/f;->式:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_1
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->藛()V

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;)V

    goto :goto_1

    .line 242
    :pswitch_1
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v3, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    goto :goto_1

    .line 245
    :pswitch_2
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v3, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget v4, p0, Lcom/vivo/unionsdk/f;->藞:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/w;->驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)V

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private 示()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 254
    iget v0, p0, Lcom/vivo/unionsdk/f;->式:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->藛()V

    .line 279
    return-void

    .line 256
    :pswitch_0
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藛()V

    .line 257
    iput-boolean v3, p0, Lcom/vivo/unionsdk/f;->藟:Z

    .line 258
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v1, "vivo_apk_install_failed"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget-object v1, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-interface {v0, v1, v3, v2}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 265
    :cond_0
    iput-boolean v3, p0, Lcom/vivo/unionsdk/f;->示:Z

    .line 266
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v1, "vivo_apk_install_failed"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    iget-object v1, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    invoke-virtual {v1}, Lcom/vivo/unionsdk/open/VivoPayInfo;->getTransNo()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-interface {v0, v1, v3, v2}, Lcom/vivo/unionsdk/open/VivoPayCallback;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v1, "vivo_apk_install_failed"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private 藛()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 309
    iput v1, p0, Lcom/vivo/unionsdk/f;->式:I

    .line 310
    iput-object v0, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 311
    iput-object v0, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 312
    iput v1, p0, Lcom/vivo/unionsdk/f;->藞:I

    .line 313
    iput-object v0, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    .line 315
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 316
    if-gtz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/vivo/unionsdk/f;->始()V

    .line 319
    :cond_0
    return-void
.end method

.method private 驶(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/vivo/unionsdk/cmd/JumpCommand;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/vivo/unionsdk/cmd/JumpCommand;-><init>(Landroid/app/Activity;ILjava/util/Map;)V

    .line 165
    invoke-static {}, Lcom/vivo/unionsdk/cmd/CommandClient;->getInstance()Lcom/vivo/unionsdk/cmd/CommandClient;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vivo/unionsdk/cmd/CommandClient;->sendCommandToServer(Ljava/lang/String;Lcom/vivo/unionsdk/cmd/BaseCommand;)V

    .line 166
    return-void
.end method

.method private 驶(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 296
    if-gez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    if-nez p1, :cond_0

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 301
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public 始()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藟:Z

    .line 323
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->示:Z

    .line 324
    return-void
.end method

.method 驶()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "AppChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSdkInitFinished, mCheckedAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/unionsdk/f;->式:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInstallFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/unionsdk/f;->藠:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p0, Lcom/vivo/unionsdk/f;->藠:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->式()V

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藠:Z

    .line 229
    return-void
.end method

.method 驶(IZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "AppChecker"

    const-string v1, "onAppChecked, but mActivity is null!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    .line 174
    const-string v1, "AppChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppChecked, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", forceInstall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheckedAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/unionsdk/f;->式:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activityFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 180
    :cond_1
    if-nez p1, :cond_2

    .line 181
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->示()Ljava/lang/String;

    move-result-object p3

    .line 184
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-string v1, "j_type"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "apkPath"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "forceInstall"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "vivounion://union.vivo.com/openjump"

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/ar;->驶(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpToClientInstallActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto/16 :goto_0

    .line 191
    :cond_3
    if-eqz p2, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->示()V

    goto/16 :goto_0

    .line 196
    :cond_4
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->式()V

    goto/16 :goto_0
.end method

.method 驶(ZZI)V
    .locals 3

    .prologue
    .line 202
    const-string v0, "AppChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApkInstalled, success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceInstall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-nez p1, :cond_2

    .line 204
    if-eqz p2, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->示()V

    .line 209
    :goto_0
    if-nez p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/unionsdk/g;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/g;->驶(J)V

    .line 221
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->式()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->式()Lcom/vivo/unionsdk/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/vivo/unionsdk/a/f;

    if-eqz v0, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->式()V

    .line 219
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藠:Z

    goto :goto_1
.end method

.method public 驶(Landroid/app/Activity;I)Z
    .locals 6

    .prologue
    const/16 v5, 0x258

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    const-string v2, "AppChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForLogin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->藛()V

    .line 53
    iput-boolean v1, p0, Lcom/vivo/unionsdk/f;->藠:Z

    .line 54
    iget-boolean v2, p0, Lcom/vivo/unionsdk/f;->藟:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->士()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->藟:Z

    .line 58
    iput v1, p0, Lcom/vivo/unionsdk/f;->式:I

    .line 59
    iput-object p1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    .line 61
    iget-object v2, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v3, "com.vivo.sdkplugin"

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 62
    if-ltz v2, :cond_4

    if-nez p2, :cond_2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    if-lt v2, v5, :cond_4

    .line 65
    :cond_3
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v3

    if-nez v3, :cond_6

    if-ge v2, v5, :cond_6

    .line 69
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/vivo/unionsdk/f;->驶(IZLjava/lang/String;)V

    .line 70
    const-string v0, "AppChecker"

    const-string v2, "checkForLogin === 1"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    move v0, v1

    .line 80
    goto :goto_0

    .line 71
    :cond_6
    if-ge v2, v5, :cond_7

    .line 73
    const-string v1, "AppChecker"

    const-string v2, "checkForLogin === 2"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_7
    if-lt v2, v5, :cond_5

    .line 76
    const-string v0, "AppChecker"

    const-string v2, "checkForLogin === 3"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/f;->驶(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x258

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->藛()V

    .line 88
    iput-boolean v1, p0, Lcom/vivo/unionsdk/f;->藠:Z

    .line 89
    iget-boolean v2, p0, Lcom/vivo/unionsdk/f;->示:Z

    if-nez v2, :cond_0

    .line 90
    invoke-direct {p0, p4}, Lcom/vivo/unionsdk/f;->驶(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/vivo/unionsdk/f;->示:Z

    .line 94
    iput v0, p0, Lcom/vivo/unionsdk/f;->式:I

    .line 95
    iput-object p1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    .line 96
    iput-object p2, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 97
    iput-object p3, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 99
    iget-object v2, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v3, "com.vivo.sdkplugin"

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 100
    if-ltz v2, :cond_4

    if-nez p4, :cond_2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    :cond_2
    const/4 v3, 0x2

    if-ne p4, v3, :cond_3

    if-lt v2, v4, :cond_4

    .line 103
    :cond_3
    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v3

    if-nez v3, :cond_6

    if-ge v2, v4, :cond_6

    .line 107
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/vivo/unionsdk/f;->驶(IZLjava/lang/String;)V

    .line 108
    const-string v0, "AppChecker"

    const-string v2, "checkForLogin === 1"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    move v0, v1

    .line 118
    goto :goto_0

    .line 109
    :cond_6
    if-ge v2, v4, :cond_7

    .line 111
    const-string v1, "AppChecker"

    const-string v2, "checkForLogin === 2"

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_7
    if-lt v2, v4, :cond_5

    .line 114
    const-string v0, "AppChecker"

    const-string v2, "checkForLogin === 3"

    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/f;->驶(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public 驶(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;IIZ)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-direct {p0}, Lcom/vivo/unionsdk/f;->藛()V

    .line 127
    iput-boolean v2, p0, Lcom/vivo/unionsdk/f;->藠:Z

    .line 129
    iget-object v0, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    const-string v3, "com.vivo.sdkplugin"

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 131
    const-string v0, "AppChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreAppCheckForPayNow, apkVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v0, 0x15

    if-ge v3, v0, :cond_3

    move v0, v1

    .line 135
    :goto_0
    const/16 v4, 0x258

    if-ge v3, v4, :cond_0

    invoke-static {}, Lcom/vivo/unionsdk/j;->驶()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 138
    :cond_0
    if-eqz p6, :cond_1

    const/16 v4, 0x5dc

    if-ge v3, v4, :cond_1

    move v0, v1

    .line 142
    :cond_1
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/unionsdk/w;->始()Landroid/app/Activity;

    move-result-object v3

    .line 143
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/unionsdk/f;->式:I

    .line 145
    iput-object p1, p0, Lcom/vivo/unionsdk/f;->始:Landroid/app/Activity;

    .line 146
    iput-object p2, p0, Lcom/vivo/unionsdk/f;->士:Lcom/vivo/unionsdk/open/VivoPayInfo;

    .line 147
    iput-object p3, p0, Lcom/vivo/unionsdk/f;->藛:Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 148
    iput p4, p0, Lcom/vivo/unionsdk/f;->藞:I

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v4, "j_type"

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v4, "apkPath"

    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/unionsdk/w;->示()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v4, "forceInstall"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "vivounion://union.vivo.com/openjump"

    invoke-static {v1, v0}, Lcom/vivo/unionsdk/ar;->驶(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/vivo/unionsdk/f;->驶:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/vivo/unionsdk/cmd/JumpUtils;->jumpToClientInstallActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move v1, v2

    .line 160
    :goto_1
    return v1

    .line 158
    :cond_2
    const-string v2, "AppChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceInstall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", topActivity = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/m;->式(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method
