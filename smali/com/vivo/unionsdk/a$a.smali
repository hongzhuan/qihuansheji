.class Lcom/vivo/unionsdk/a$a;
.super Landroid/os/AsyncTask;
.source "ApkInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/unionsdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a;


# direct methods
.method private constructor <init>(Lcom/vivo/unionsdk/a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/unionsdk/a;Lcom/vivo/unionsdk/b;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/a$a;-><init>(Lcom/vivo/unionsdk/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/a$a;->驶([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/a$a;->驶(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 84
    return-void
.end method

.method protected varargs 驶([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 94
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->始(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "vivounionsdk"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 100
    :goto_0
    if-eqz v3, :cond_0

    array-length v0, v3

    if-gtz v0, :cond_1

    .line 118
    :cond_0
    :goto_1
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0

    .line 103
    :cond_1
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 107
    :cond_3
    const-string v5, ".vua"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    :goto_3
    const-string v2, "ApkInstallActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResourceInstallTask --- doInBackground, fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-static {v2}, Lcom/vivo/unionsdk/a;->式(Lcom/vivo/unionsdk/a;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-static {v5}, Lcom/vivo/unionsdk/a;->示(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

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

    .line 117
    iget-object v2, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-static {v4}, Lcom/vivo/unionsdk/a;->示(Lcom/vivo/unionsdk/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected 驶(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vivo/unionsdk/a$a;->驶:Lcom/vivo/unionsdk/a;

    invoke-static {v0}, Lcom/vivo/unionsdk/a;->驶(Lcom/vivo/unionsdk/a;)V

    .line 89
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
