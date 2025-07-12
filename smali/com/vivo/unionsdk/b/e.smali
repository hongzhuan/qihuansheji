.class public Lcom/vivo/unionsdk/b/e;
.super Landroid/os/AsyncTask;
.source "NetworkTask.java"


# instance fields
.field private 始:Ljava/lang/String;

.field private 式:Lcom/vivo/unionsdk/b/b;

.field private 示:Lcom/vivo/unionsdk/b/c;

.field private 驶:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/vivo/unionsdk/b/b;Lcom/vivo/unionsdk/b/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vivo/unionsdk/b/e;->驶:Ljava/util/HashMap;

    .line 37
    iput-object p2, p0, Lcom/vivo/unionsdk/b/e;->始:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    .line 39
    iput-object p4, p0, Lcom/vivo/unionsdk/b/e;->示:Lcom/vivo/unionsdk/b/c;

    .line 40
    return-void
.end method

.method private 驶(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 162
    :cond_0
    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 44
    const/4 v4, 0x0

    .line 47
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->始:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 52
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->驶:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->驶:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vivo/unionsdk/ar;->驶(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    array-length v3, v1

    if-le v3, v5, :cond_c

    .line 57
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 58
    const/4 v5, 0x1

    aget-object v1, v1, v5

    .line 60
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    iget-object v5, p0, Lcom/vivo/unionsdk/b/e;->驶:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iget-object v3, p0, Lcom/vivo/unionsdk/b/e;->驶:Ljava/util/HashMap;

    const-string v5, "utf-8"

    invoke-direct {p0, v3, v5}, Lcom/vivo/unionsdk/b/e;->驶(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 70
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    .line 73
    :try_start_2
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->示:Lcom/vivo/unionsdk/b/c;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/vivo/unionsdk/b/c;->驶(Lorg/json/JSONObject;)Lcom/vivo/unionsdk/b/f;

    move-result-object v1

    .line 74
    iget-object v3, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    invoke-interface {v3, v1}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 98
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    :cond_4
    :goto_3
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    :try_start_4
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    new-instance v3, Lcom/vivo/unionsdk/b/a;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/vivo/unionsdk/b/a;-><init>(I)V

    invoke-interface {v1, v3}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 85
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 86
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 87
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    new-instance v3, Lcom/vivo/unionsdk/b/a;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/vivo/unionsdk/b/a;-><init>(I)V

    invoke-interface {v0, v3}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 97
    :cond_5
    if-eqz v2, :cond_6

    .line 98
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 106
    :cond_6
    :goto_5
    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 80
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    new-instance v3, Lcom/vivo/unionsdk/b/a;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lcom/vivo/unionsdk/b/a;-><init>(I)V

    invoke-interface {v1, v3}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 90
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 91
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    new-instance v3, Lcom/vivo/unionsdk/b/a;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/vivo/unionsdk/b/a;-><init>(I)V

    invoke-interface {v0, v3}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 97
    :cond_8
    if-eqz v2, :cond_9

    .line 98
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 106
    :cond_9
    :goto_7
    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 100
    :catch_3
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    invoke-interface {v1, v2}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V

    goto :goto_2

    .line 100
    :catch_4
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    invoke-interface {v0, v2}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V

    goto :goto_5

    .line 100
    :catch_5
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    invoke-interface {v0, v2}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V

    goto :goto_7

    .line 96
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 97
    :goto_8
    if-eqz v2, :cond_a

    .line 98
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 106
    :cond_a
    :goto_9
    if-eqz v1, :cond_b

    .line 107
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v0

    .line 100
    :catch_6
    move-exception v3

    .line 101
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    iget-object v3, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    if-eqz v3, :cond_a

    .line 103
    iget-object v3, p0, Lcom/vivo/unionsdk/b/e;->式:Lcom/vivo/unionsdk/b/b;

    invoke-interface {v3, v2}, Lcom/vivo/unionsdk/b/b;->驶(Lcom/vivo/unionsdk/b/a;)V

    goto :goto_9

    .line 96
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 90
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 85
    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_c
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0
.end method
