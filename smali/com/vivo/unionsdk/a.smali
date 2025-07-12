.class public Lcom/vivo/unionsdk/a;
.super Lcom/vivo/unionsdk/ui/a;
.source "ApkInstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/unionsdk/a$a;
    }
.end annotation


# instance fields
.field private 藛:Ljava/lang/String;

.field private 藞:Ljava/lang/String;

.field private 藟:Ljava/lang/String;

.field private 藠:Z

.field private 藡:I

.field private 藥:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/vivo/unionsdk/ui/a;-><init>(Landroid/app/Activity;Ljava/util/Map;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vivounionapk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a;->藛:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/unionsdk/a;->藡:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/unionsdk/a;->藥:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic 俅(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method private 俅()V
    .locals 5

    .prologue
    .line 165
    new-instance v1, Lcom/vivo/unionsdk/ui/g;

    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/vivo/unionsdk/ui/g;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v1, p0}, Lcom/vivo/unionsdk/ui/g;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    const-string v0, "vivo_apk_install_dlg_title"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;)V

    .line 168
    const-string v0, "vivo_apk_install_title_color"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->式(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/ui/g;->驶(I)V

    .line 169
    const-string v0, "vivo_union_apk_install"

    invoke-virtual {v1, v0}, Lcom/vivo/unionsdk/ui/g;->式(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 170
    const-string v2, "vivo_apk_install_version"

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vivo_apk_install_version"

    invoke-static {v3}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/unionsdk/a;->藟:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget v0, p0, Lcom/vivo/unionsdk/a;->藡:I

    if-ltz v0, :cond_1

    .line 174
    const-string v0, "vivo_apk_install_update_ok"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    new-instance v2, Lcom/vivo/unionsdk/d;

    invoke-direct {v2, p0, v1}, Lcom/vivo/unionsdk/d;-><init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 195
    iget-boolean v0, p0, Lcom/vivo/unionsdk/a;->藠:Z

    if-eqz v0, :cond_2

    const-string v0, "vivo_apk_install_dlg_cancel_force"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_1
    new-instance v2, Lcom/vivo/unionsdk/e;

    invoke-direct {v2, p0, v1}, Lcom/vivo/unionsdk/e;-><init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V

    invoke-virtual {v1, v0, v2}, Lcom/vivo/unionsdk/ui/g;->始(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v1}, Lcom/vivo/unionsdk/ui/g;->show()V

    .line 217
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->始(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->藞()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a;->藥:Ljava/lang/String;

    .line 221
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    const-string v1, "key"

    const-string v2, "023"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "value"

    const-string v2, "--"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    iget v2, p0, Lcom/vivo/unionsdk/a;->示:I

    iget-object v3, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/unionsdk/a;->藥:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    .line 176
    :cond_1
    const-string v0, "vivo_apk_install_ok"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    const-string v0, "vivo_apk_install_dlg_cancel_btn"

    .line 196
    invoke-static {v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic 士(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 始(Lcom/vivo/unionsdk/a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/a;->驶(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic 岽(Lcom/vivo/unionsdk/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 式(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 示(Lcom/vivo/unionsdk/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->藛:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 藛(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 藞(Lcom/vivo/unionsdk/a;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/unionsdk/a;->藡:I

    return v0
.end method

.method static synthetic 藟(Lcom/vivo/unionsdk/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 藠(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 藡(Lcom/vivo/unionsdk/a;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/unionsdk/a;->示:I

    return v0
.end method

.method static synthetic 藥(Lcom/vivo/unionsdk/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 藦(Lcom/vivo/unionsdk/a;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/unionsdk/a;->藠:Z

    return v0
.end method

.method static synthetic 藨(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic 讬(Lcom/vivo/unionsdk/a;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/unionsdk/a;->示:I

    return v0
.end method

.method private 讬()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/vivo/unionsdk/a;->賭()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/a;->驶(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/a;->藟:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/vivo/unionsdk/a;->俅()V

    goto :goto_0
.end method

.method static synthetic 賭(Lcom/vivo/unionsdk/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    return-object v0
.end method

.method private 賭()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/vivo/unionsdk/ui/g;

    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/vivo/unionsdk/ui/g;-><init>(Landroid/content/Context;)V

    .line 135
    const-string v1, "vivo_apk_download_title"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;)V

    .line 136
    const-string v1, "vivo_apk_download_msg"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->始(Ljava/lang/String;)V

    .line 137
    const-string v1, "vivo_apk_download_cancel"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/b;

    invoke-direct {v2, p0, v0}, Lcom/vivo/unionsdk/b;-><init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/ui/g;->始(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 144
    const-string v1, "vivo_apk_download_now"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/c;

    invoke-direct {v2, p0, v0}, Lcom/vivo/unionsdk/c;-><init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/ui/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->setCancelable(Z)V

    .line 156
    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->show()V

    .line 157
    return-void
.end method

.method static synthetic 釔(Lcom/vivo/unionsdk/a;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/unionsdk/a;->示:I

    return v0
.end method

.method private static 驶(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vivo/unionsdk/a;->讬()V

    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/a;ZI)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vivo/unionsdk/a;->驶(ZI)V

    return-void
.end method

.method private 驶(ZI)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/unionsdk/a;->藠:Z

    invoke-virtual {v0, p1, v1, p2}, Lcom/vivo/unionsdk/w;->驶(ZZI)V

    .line 264
    if-eqz p1, :cond_1

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    const-string v1, "key"

    const-string v2, "141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "issuc"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    iget v2, p0, Lcom/vivo/unionsdk/a;->示:I

    iget-object v3, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/unionsdk/a;->藥()V

    .line 278
    return-void

    .line 271
    :cond_1
    const/4 v0, -0x5

    if-eq p2, v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    const-string v1, "key"

    const-string v2, "141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "issuc"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    iget v2, p0, Lcom/vivo/unionsdk/a;->示:I

    iget-object v3, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 驶(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 229
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v1, "ApkInstallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installApk, apkPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vivo/unionsdk/j;->驶(Z)Z

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return v4

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, -0x3

    invoke-direct {p0, v0, v1}, Lcom/vivo/unionsdk/a;->驶(ZI)V

    .line 162
    return-void
.end method

.method protected 始()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/vivo/unionsdk/ui/a;->始()V

    .line 60
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vivo/unionsdk/o;->驶(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/unionsdk/a;->藠:Z

    .line 62
    invoke-static {}, Lcom/vivo/unionsdk/w;->驶()Lcom/vivo/unionsdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/unionsdk/w;->藡()V

    .line 63
    invoke-virtual {p0}, Lcom/vivo/unionsdk/a;->藥()V

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->始:Ljava/util/Map;

    const-string v1, "apkPath"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->始:Ljava/util/Map;

    const-string v1, "forceInstall"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/a;->藠:Z

    .line 68
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/unionsdk/a;->藡:I

    .line 69
    const-string v0, "ApkInstallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, mApkPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForceInstall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/unionsdk/a;->藠:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/unionsdk/a;->藡:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->藞:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/vivo/unionsdk/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/unionsdk/a$a;-><init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/b;)V

    .line 74
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/vivo/unionsdk/a;->讬()V

    goto :goto_0
.end method

.method protected 驶()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected 驶(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    const-string v1, "com.vivo.sdkplugin"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/j;->驶(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 246
    const-string v1, "ApkInstallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApkInstallActivity, install finish, newVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/unionsdk/a;->藡:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget v1, p0, Lcom/vivo/unionsdk/a;->藡:I

    if-le v0, v1, :cond_1

    .line 249
    invoke-direct {p0, v5, v4}, Lcom/vivo/unionsdk/a;->驶(ZI)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, -0x5

    invoke-direct {p0, v4, v0}, Lcom/vivo/unionsdk/a;->驶(ZI)V

    .line 252
    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    if-ne p2, v5, :cond_0

    .line 253
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    const-string v1, "key"

    const-string v2, "141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "issuc"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "reason"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/vivo/unionsdk/a;->驶:Landroid/app/Activity;

    iget v2, p0, Lcom/vivo/unionsdk/a;->示:I

    iget-object v3, p0, Lcom/vivo/unionsdk/a;->式:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vivo/unionsdk/d/d;->驶(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
