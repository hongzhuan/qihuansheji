.class Lcom/vivo/unionsdk/c/f;
.super Landroid/os/AsyncTask;
.source "SelfTestTask.java"


# instance fields
.field private 始:Ljava/util/ArrayList;

.field private 驶:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/unionsdk/c/f;->驶:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private 士(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    .locals 6

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->藛()Ljava/util/ArrayList;

    move-result-object v0

    .line 360
    invoke-virtual {p2}, Lcom/vivo/unionsdk/n;->士()Landroid/os/Bundle;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    return-void

    .line 366
    :cond_1
    if-nez v1, :cond_2

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/c;

    .line 368
    iget-object v2, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meta-data missed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/c;->式()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/c;

    .line 372
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/c;->式()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/c;->驶()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 376
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meta-data missed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meta-data value error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private 始(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    .locals 6

    .prologue
    .line 191
    invoke-virtual {p2}, Lcom/vivo/unionsdk/n;->始()Ljava/util/Map;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->式()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    .line 194
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/a;->式()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver unnecessary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method private 式(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    .locals 6

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/vivo/unionsdk/n;->式()Ljava/util/Map;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->示()Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/g;

    .line 208
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/g;->式()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/g;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service unnecessary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method private 示(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p2}, Lcom/vivo/unionsdk/n;->示()Ljava/util/Map;

    move-result-object v1

    .line 220
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->士()Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/g;

    .line 222
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/g;->式()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/g;

    .line 224
    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission missed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_1
    return-void
.end method

.method private 驶()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 386
    const-string v0, ".res"

    .line 387
    const/4 v2, 0x0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->驶:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "vivounionsdk"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 393
    :goto_0
    if-nez v2, :cond_1

    .line 394
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset file error: vivounionsdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v3, "SelfTest"

    const-string v4, "verifyAssets exception: "

    invoke-static {v3, v4, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    :cond_1
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 398
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 397
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 401
    :cond_3
    const-string v5, ".res"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 405
    :cond_4
    const-string v1, "SelfTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyAssets, resCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset file error: vivounionsdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private 驶(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    .locals 8

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->驶()Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/vivo/unionsdk/c/b;->始()Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    invoke-virtual {p2}, Lcom/vivo/unionsdk/n;->驶()Ljava/util/Map;

    move-result-object v3

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    .line 162
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/a;->式()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/unionsdk/c/a;

    .line 165
    if-nez v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity missed: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/a;->驶()I

    move-result v6

    invoke-virtual {v1}, Lcom/vivo/unionsdk/c/a;->驶()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 171
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity theme error: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/a;->始()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Lcom/vivo/unionsdk/c/a;->始()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/vivo/unionsdk/c/f;->驶(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    .line 180
    invoke-virtual {v0}, Lcom/vivo/unionsdk/c/a;->式()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    .line 182
    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity unnecessary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_4
    return-void
.end method

.method private 驶(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 238
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 239
    if-nez v8, :cond_3

    .line 240
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity intent-filter error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    return-void

    .line 241
    :cond_3
    if-nez v9, :cond_4

    .line 242
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v5, v4

    .line 246
    :goto_1
    if-ge v5, v8, :cond_0

    .line 247
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    move v3, v4

    move v2, v4

    .line 249
    :goto_2
    if-ge v3, v9, :cond_7

    .line 250
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 252
    const/4 v2, 0x1

    .line 254
    :cond_5
    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 258
    :cond_7
    if-eqz v2, :cond_8

    .line 259
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1
.end method

.method private 驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/4 v2, 0x2

    invoke-direct {p0, p1, p2, v2}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const/4 v2, 0x4

    invoke-direct {p0, p1, p2, v2}, Lcom/vivo/unionsdk/c/f;->驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 290
    goto :goto_0
.end method

.method private 驶(Landroid/content/IntentFilter;Landroid/content/IntentFilter;I)Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 294
    .line 296
    if-nez p3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 298
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    move v7, v0

    move v8, v1

    .line 312
    :goto_0
    if-eq v8, v7, :cond_5

    move v2, v4

    .line 345
    :cond_0
    :goto_1
    return v2

    .line 299
    :cond_1
    if-ne p3, v2, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 301
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_0

    .line 302
    :cond_2
    if-ne p3, v9, :cond_3

    .line 303
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 304
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_0

    .line 305
    :cond_3
    if-ne p3, v10, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 307
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_0

    .line 308
    :cond_4
    if-ne p3, v11, :cond_e

    .line 309
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 310
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_5
    move v6, v4

    .line 316
    :goto_2
    if-ge v6, v8, :cond_0

    move v5, v4

    move v3, v4

    .line 318
    :goto_3
    if-ge v5, v7, :cond_b

    .line 319
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    if-nez p3, :cond_7

    .line 322
    invoke-virtual {p1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_6
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 318
    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v0

    goto :goto_3

    .line 324
    :cond_7
    if-ne p3, v2, :cond_8

    .line 325
    invoke-virtual {p1, v6}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 327
    :cond_8
    if-ne p3, v9, :cond_9

    .line 328
    invoke-virtual {p1, v6}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 330
    :cond_9
    if-ne p3, v10, :cond_a

    .line 331
    invoke-virtual {p1, v6}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 333
    :cond_a
    if-ne p3, v11, :cond_6

    .line 334
    invoke-virtual {p1, v6}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 341
    :cond_b
    if-nez v3, :cond_c

    move v2, v4

    .line 342
    goto/16 :goto_1

    .line 316
    :cond_c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    move v7, v4

    move v8, v4

    goto/16 :goto_0
.end method

.method private static 驶(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 352
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 353
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/c/f;->驶([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/unionsdk/c/f;->驶(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs 驶([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->驶:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "vivounionsdk/vivounionchecklist.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 70
    :goto_0
    if-nez v2, :cond_1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    const-string v3, "Not found file \'vivounionchecklist\'."

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 130
    :cond_0
    :goto_1
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_3
    const-string v2, "SelfTest"

    const-string v3, "selfTest exception: "

    invoke-static {v2, v3, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    goto :goto_0

    .line 78
    :cond_1
    :try_start_4
    invoke-static {v2}, Lcom/vivo/unionsdk/c/f;->驶(Ljava/io/InputStream;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 82
    :goto_2
    if-nez v0, :cond_2

    .line 83
    :try_start_5
    const-string v0, "SelfTest"

    const-string v3, "Failed trans from stream to byte."

    invoke-static {v0, v3}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    :try_start_7
    const-string v3, "SelfTest"

    const-string v4, "selfTest exception: "

    invoke-static {v3, v4, v0}, Lcom/vivo/unionsdk/m;->示(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/vivo/unionsdk/c/f;->驶:Landroid/content/Context;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/c/h;->驶(Landroid/content/Context;Ljava/io/InputStream;)Lcom/vivo/unionsdk/c/b;

    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    const-string v3, "Check list parse error."

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 125
    :catch_3
    move-exception v0

    goto :goto_1

    .line 103
    :cond_3
    :try_start_9
    iget-object v3, p0, Lcom/vivo/unionsdk/c/f;->驶:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/unionsdk/c/d;->驶(Landroid/content/Context;)Lcom/vivo/unionsdk/n;

    move-result-object v3

    .line 104
    if-nez v3, :cond_4

    .line 105
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    const-string v3, "Package parse error."

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 125
    :catch_4
    move-exception v0

    goto :goto_1

    .line 110
    :cond_4
    :try_start_b
    invoke-direct {p0, v0, v3}, Lcom/vivo/unionsdk/c/f;->驶(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V

    .line 112
    invoke-direct {p0, v0, v3}, Lcom/vivo/unionsdk/c/f;->式(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V

    .line 114
    invoke-direct {p0, v0, v3}, Lcom/vivo/unionsdk/c/f;->始(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V

    .line 116
    invoke-direct {p0, v0, v3}, Lcom/vivo/unionsdk/c/f;->示(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V

    .line 118
    invoke-direct {p0, v0, v3}, Lcom/vivo/unionsdk/c/f;->士(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V

    .line 120
    invoke-direct {p0}, Lcom/vivo/unionsdk/c/f;->驶()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_1

    .line 125
    :catch_5
    move-exception v0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    .line 124
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 126
    :cond_5
    :goto_4
    throw v0

    .line 125
    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_4

    .line 122
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method protected 驶(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "Pass!\n\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    const-string v0, "SelfTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nSelf Check Result Report:\n\t**********************************************\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "**********************************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v0, v2}, Lcom/vivo/unionsdk/m;->驶(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/vivo/unionsdk/c/f;->始:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nSelf Check Result Report:\n\t**********************************************\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "**********************************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    return-void
.end method
