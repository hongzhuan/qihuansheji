.class public Lcom/vivo/unionsdk/a/c$c;
.super Landroid/os/AsyncTask;
.source "ResourceInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private 始:Z

.field final synthetic 驶:Lcom/vivo/unionsdk/a/c;


# direct methods
.method private constructor <init>(Lcom/vivo/unionsdk/a/c;Z)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/unionsdk/a/c$c;->始:Z

    .line 255
    iput-boolean p2, p0, Lcom/vivo/unionsdk/a/c$c;->始:Z

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/unionsdk/a/c;ZLcom/vivo/unionsdk/a/d;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/vivo/unionsdk/a/c$c;-><init>(Lcom/vivo/unionsdk/a/c;Z)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/a/c$c;->驶([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/a/c$c;->驶(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs 驶([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    const-string v0, "ResourceInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResourceInstallTask --- doInBackground, mReinstall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/unionsdk/a/c$c;->始:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "vivounionsdk"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 268
    :goto_0
    if-eqz v4, :cond_0

    array-length v0, v4

    if-gtz v0, :cond_1

    .line 311
    :cond_0
    :goto_1
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_0

    .line 271
    :cond_1
    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_7

    aget-object v0, v4, v3

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 275
    :cond_3
    const-string v6, ".res"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    :goto_3
    const-string v3, "ResourceInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResourceInstallTask --- doInBackground, fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    iget-boolean v3, p0, Lcom/vivo/unionsdk/a/c$c;->始:Z

    if-nez v3, :cond_5

    .line 288
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v5}, Lcom/vivo/unionsdk/a/c;->始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    const/4 v2, 0x1

    .line 292
    :cond_4
    const-string v3, "ResourceInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground, check apk exist, resApkExist =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_5
    if-eqz v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    iget-object v3, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v5}, Lcom/vivo/unionsdk/a/c;->始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;Ljava/lang/String;)Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;Lcom/vivo/unionsdk/a/c$a;)Lcom/vivo/unionsdk/a/c$a;

    goto/16 :goto_1

    .line 301
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v3}, Lcom/vivo/unionsdk/a/c;->始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static {v2}, Lcom/vivo/unionsdk/a/c;->驶(Ljava/io/File;)V

    .line 304
    iget-object v2, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v2}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v5}, Lcom/vivo/unionsdk/a/c;->始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/vivo/unionsdk/a/c;->驶(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 306
    const-string v3, "ResourceInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground, copyResApk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    iget-object v3, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v5}, Lcom/vivo/unionsdk/a/c;->始(Lcom/vivo/unionsdk/a/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;Ljava/lang/String;)Lcom/vivo/unionsdk/a/c$a;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/a/c;->驶(Lcom/vivo/unionsdk/a/c;Lcom/vivo/unionsdk/a/c$a;)Lcom/vivo/unionsdk/a/c$a;

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_3
.end method

.method protected 驶(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 317
    const-string v0, "ResourceInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceInstallTask -- onPostExecute, mExtraPackageInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v2}, Lcom/vivo/unionsdk/a/c;->式(Lcom/vivo/unionsdk/a/c;)Lcom/vivo/unionsdk/a/c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/c;->士(Lcom/vivo/unionsdk/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/unionsdk/a/e;

    invoke-direct {v1, p0}, Lcom/vivo/unionsdk/a/e;-><init>(Lcom/vivo/unionsdk/a/c$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
