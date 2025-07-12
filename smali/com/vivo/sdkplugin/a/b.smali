.class public Lcom/vivo/sdkplugin/a/b;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field protected 士:Ljava/lang/String;

.field protected 始:Ljava/lang/String;

.field protected 式:Ljava/lang/String;

.field protected 示:Ljava/lang/String;

.field protected 藛:Ljava/lang/String;

.field protected 藞:Ljava/lang/String;

.field protected 藟:Ljava/lang/String;

.field protected 藠:Ljava/lang/String;

.field protected 藡:Ljava/lang/String;

.field protected 藥:Ljava/lang/String;

.field protected 藦:Ljava/util/ArrayList;

.field protected 藨:Ljava/lang/String;

.field protected 驶:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static 始(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v0, "%;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static 藨(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 273
    :cond_0
    return-object v0

    .line 261
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const-string v1, "%;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 264
    array-length v3, v2

    .line 265
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 266
    aget-object v4, v2, v1

    .line 267
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static 驶(Ljava/util/Map;Lcom/vivo/sdkplugin/a/b;)V
    .locals 2

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v0, "openId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->驶(Ljava/lang/String;)V

    .line 189
    :cond_2
    const-string v0, "parentOpenId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 191
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->始(Ljava/lang/String;)V

    .line 193
    :cond_3
    const-string v0, "uuid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->式(Ljava/lang/String;)V

    .line 197
    :cond_4
    const-string v0, "userId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 199
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->示(Ljava/lang/String;)V

    .line 201
    :cond_5
    const-string v0, "authToken"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 203
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->士(Ljava/lang/String;)V

    .line 205
    :cond_6
    const-string v0, "sk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 207
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藞(Ljava/lang/String;)V

    .line 209
    :cond_7
    const-string v0, "userName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 211
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藟(Ljava/lang/String;)V

    .line 213
    :cond_8
    const-string v0, "pwd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 215
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藠(Ljava/lang/String;)V

    .line 217
    :cond_9
    const-string v0, "nickName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 219
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藡(Ljava/lang/String;)V

    .line 221
    :cond_a
    const-string v0, "PhoneNum"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 223
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藥(Ljava/lang/String;)V

    .line 225
    :cond_b
    const-string v0, "email"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 227
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藦(Ljava/lang/String;)V

    .line 229
    :cond_c
    const-string v0, "questions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 231
    invoke-static {v0}, Lcom/vivo/sdkplugin/a/b;->藨(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 233
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->驶(Ljava/util/ArrayList;)V

    .line 236
    :cond_d
    const-string v0, "opentoken"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {p1, v0}, Lcom/vivo/sdkplugin/a/b;->藛(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public 士()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藨:Ljava/lang/String;

    return-object v0
.end method

.method public 士(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->士:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public 始()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    return-object v0
.end method

.method public 始(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public 式()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->士:Ljava/lang/String;

    return-object v0
.end method

.method public 式(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->式:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public 示()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/d;->式()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->士:Ljava/lang/String;

    goto :goto_0
.end method

.method public 示(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->示:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public 藛()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/vivo/sdkplugin/a/c;->驶()Lcom/vivo/sdkplugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/a/c;->驶(Ljava/lang/String;)Lcom/vivo/sdkplugin/a/d;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a/b;->藛()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藞:Ljava/lang/String;

    goto :goto_0
.end method

.method public 藛(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藨:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public 藞(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藛:Ljava/lang/String;

    goto :goto_0
.end method

.method public 藟(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藞:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public 藠(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藟:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public 藡(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藠:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public 藥(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藡:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public 藦(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藥:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public 驶()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->驶:Ljava/lang/String;

    return-object v0
.end method

.method public 驶(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->驶:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public 驶(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vivo/sdkplugin/a/b;->藦:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method protected 驶(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->驶:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "openId"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->驶:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, "parentOpenId"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->始:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->式:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->式:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->示:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    const-string v0, "userId"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->示:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->士:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    const-string v0, "authToken"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->士:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藛:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    const-string v0, "sk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藛:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藞:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 158
    const-string v0, "userName"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藞:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藟:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 161
    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藟:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藠:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 164
    const-string v0, "nickName"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藠:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藡:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 167
    const-string v0, "PhoneNum"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藡:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藥:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 170
    const-string v0, "email"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藥:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藦:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vivo/sdkplugin/a/b;->始(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 174
    const-string v1, "questions"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/vivo/sdkplugin/a/b;->藨:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 177
    const-string v0, "opentoken"

    iget-object v1, p0, Lcom/vivo/sdkplugin/a/b;->藨:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_c
    return-void
.end method
