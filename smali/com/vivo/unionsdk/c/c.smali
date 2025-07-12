.class public Lcom/vivo/unionsdk/c/c;
.super Lcom/vivo/unionsdk/c/g;
.source "MetaDataCase.java"


# instance fields
.field private 驶:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vivo/unionsdk/c/g;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/vivo/unionsdk/c/c;->驶:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public 驶()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vivo/unionsdk/c/c;->驶:Ljava/lang/String;

    return-object v0
.end method
