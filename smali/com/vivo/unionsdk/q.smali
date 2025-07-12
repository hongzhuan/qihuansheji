.class Lcom/vivo/unionsdk/q;
.super Ljava/lang/Object;
.source "PlayTimeRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/p;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/p;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vivo/unionsdk/q;->驶:Lcom/vivo/unionsdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/unionsdk/q;->驶:Lcom/vivo/unionsdk/p;

    invoke-static {v0}, Lcom/vivo/unionsdk/p;->驶(Lcom/vivo/unionsdk/p;)V

    .line 33
    iget-object v0, p0, Lcom/vivo/unionsdk/q;->驶:Lcom/vivo/unionsdk/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/p;->驶(Lcom/vivo/unionsdk/p;J)J

    .line 34
    iget-object v0, p0, Lcom/vivo/unionsdk/q;->驶:Lcom/vivo/unionsdk/p;

    invoke-static {v0}, Lcom/vivo/unionsdk/p;->始(Lcom/vivo/unionsdk/p;)V

    .line 35
    return-void
.end method
