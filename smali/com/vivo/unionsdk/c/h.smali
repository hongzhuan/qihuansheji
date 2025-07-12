.class public Lcom/vivo/unionsdk/c/h;
.super Ljava/lang/Object;
.source "XmlParser.java"


# direct methods
.method public static 驶(Landroid/content/Context;Ljava/io/InputStream;)Lcom/vivo/unionsdk/c/b;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-object v1

    .line 49
    :cond_0
    new-instance v3, Lcom/vivo/unionsdk/c/b;

    invoke-direct {v3}, Lcom/vivo/unionsdk/c/b;-><init>()V

    .line 53
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 54
    const-string v2, "UTF-8"

    invoke-interface {v7, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 56
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move-object v6, v1

    move v11, v2

    move-object v2, v1

    move v1, v11

    .line 57
    :goto_1
    if-eq v1, v10, :cond_13

    .line 58
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    packed-switch v1, :pswitch_data_0

    :cond_1
    move-object v4, v2

    move-object v2, v6

    .line 144
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move-object v6, v2

    move-object v2, v4

    .line 145
    goto :goto_1

    .line 61
    :pswitch_0
    const-string v1, "activity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    const-string v2, "@_pkg_@"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_2
    new-instance v2, Lcom/vivo/unionsdk/c/a;

    invoke-direct {v2, v1}, Lcom/vivo/unionsdk/c/a;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    const-string v4, "include"

    .line 69
    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 68
    invoke-static {v1, v4}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;Z)Z

    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/vivo/unionsdk/c/b;->始(Lcom/vivo/unionsdk/c/a;)V

    :goto_3
    move-object v4, v2

    move-object v2, v6

    .line 86
    goto :goto_2

    .line 73
    :cond_3
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/vivo/unionsdk/c/b;->驶(Lcom/vivo/unionsdk/c/a;)V

    .line 75
    const/4 v1, 0x0

    const-string v4, "theme"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 79
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v8, "style"

    const-string v9, "android"

    invoke-virtual {v4, v1, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 84
    :goto_4
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lcom/vivo/unionsdk/c/a;->驶(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 146
    :catch_0
    move-exception v1

    .line 147
    :try_start_1
    const-string v2, "XmlParser"

    const-string v4, "TraceXmlParserTask exception:"

    invoke-static {v2, v4, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz p1, :cond_4

    .line 151
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_5
    move-object v1, v3

    .line 156
    goto/16 :goto_0

    .line 86
    :cond_5
    :try_start_3
    const-string v1, "receiver"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/vivo/unionsdk/c/a;

    invoke-direct {v2, v1}, Lcom/vivo/unionsdk/c/a;-><init>(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    const-string v4, "include"

    .line 91
    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 90
    invoke-static {v1, v4}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;Z)Z

    move-result v1

    .line 92
    if-nez v1, :cond_6

    .line 93
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/vivo/unionsdk/c/b;->式(Lcom/vivo/unionsdk/c/a;)V

    :cond_6
    move-object v4, v2

    move-object v2, v6

    .line 95
    goto/16 :goto_2

    :cond_7
    const-string v1, "service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 96
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/vivo/unionsdk/c/g;

    invoke-direct {v2, v1}, Lcom/vivo/unionsdk/c/g;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    const-string v4, "include"

    .line 100
    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 99
    invoke-static {v1, v4}, Lcom/vivo/unionsdk/j;->驶(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    if-nez v1, :cond_8

    .line 102
    invoke-virtual {v3, v2}, Lcom/vivo/unionsdk/c/b;->驶(Lcom/vivo/unionsdk/c/g;)V

    :cond_8
    move-object v4, v2

    move-object v2, v6

    .line 104
    goto/16 :goto_2

    :cond_9
    const-string v1, "intent-filter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 105
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/a;

    move-object v1, v0

    invoke-virtual {v1, v6}, Lcom/vivo/unionsdk/c/a;->驶(Landroid/content/IntentFilter;)V

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_2

    .line 107
    :cond_a
    const-string v1, "action"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 108
    const/4 v1, 0x0

    const-string v4, "name"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_2

    .line 109
    :cond_b
    const-string v1, "category"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 110
    const/4 v1, 0x0

    const-string v4, "name"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_2

    .line 111
    :cond_c
    const-string v1, "data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 112
    const/4 v1, 0x0

    const-string v4, "scheme"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 114
    const-string v4, "@_pkg_@"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 117
    :cond_d
    const/4 v1, 0x0

    const-string v4, "host"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 119
    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_e
    const/4 v1, 0x0

    const-string v4, "path"

    invoke-interface {v7, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 123
    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_f
    move-object v4, v2

    move-object v2, v6

    .line 125
    goto/16 :goto_2

    :cond_10
    const-string v1, "uses-permission"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 126
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/vivo/unionsdk/c/g;

    invoke-direct {v2, v1}, Lcom/vivo/unionsdk/c/g;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v2}, Lcom/vivo/unionsdk/c/b;->始(Lcom/vivo/unionsdk/c/g;)V

    move-object v4, v2

    move-object v2, v6

    .line 129
    goto/16 :goto_2

    :cond_11
    const-string v1, "meta-data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "vivo_union_sdk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 133
    const-string v1, "4.2.4.0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_12
    new-instance v2, Lcom/vivo/unionsdk/c/c;

    invoke-direct {v2, v4, v1}, Lcom/vivo/unionsdk/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object v0, v2

    check-cast v0, Lcom/vivo/unionsdk/c/c;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/vivo/unionsdk/c/b;->驶(Lcom/vivo/unionsdk/c/c;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    move-object v2, v6

    .line 137
    goto/16 :goto_2

    :pswitch_1
    move-object v4, v2

    move-object v2, v6

    .line 140
    goto/16 :goto_2

    .line 149
    :cond_13
    if-eqz p1, :cond_4

    .line 151
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 152
    :catch_1
    move-exception v1

    goto/16 :goto_5

    .line 149
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_14

    .line 151
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 153
    :cond_14
    :goto_6
    throw v1

    .line 152
    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catch_3
    move-exception v2

    goto :goto_6

    :cond_15
    move v4, v5

    goto/16 :goto_4

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
