.class public Lcom/vivo/unionsdk/Wave;
.super Ljava/lang/Object;
.source "Wave.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    :try_start_0
    const-string v0, "vivo_account_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v0, "Wave"

    const-string v1, "loadLibrary error!!!"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native waveStringNet(Ljava/lang/String;)J
.end method

.method public static 驶(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const-string v0, ""

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 70
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v2}, Lcom/vivo/unionsdk/Wave;->驶([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    return-object v0
.end method

.method private static varargs 驶([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 108
    if-eqz p0, :cond_2

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/vivo/unionsdk/Wave;->驶([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    if-eqz v2, :cond_1

    .line 114
    array-length v4, v2

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 116
    aget-object v0, v2, v1

    .line 117
    if-nez v0, :cond_0

    .line 118
    const-string v0, ""

    .line 120
    :cond_0
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/unionsdk/Wave;->waveStringNet(Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_1
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static 驶([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 135
    aget-object v1, p0, v0

    .line 136
    if-nez v1, :cond_0

    .line 137
    const-string v1, ""

    .line 139
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-object v2
.end method
