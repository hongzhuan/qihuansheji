.class Lcom/vivo/unionsdk/a/e;
.super Ljava/lang/Object;
.source "ResourceInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 驶:Lcom/vivo/unionsdk/a/c$c;


# direct methods
.method constructor <init>(Lcom/vivo/unionsdk/a/c$c;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/vivo/unionsdk/a/e;->驶:Lcom/vivo/unionsdk/a/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vivo/unionsdk/a/e;->驶:Lcom/vivo/unionsdk/a/c$c;

    iget-object v0, v0, Lcom/vivo/unionsdk/a/c$c;->驶:Lcom/vivo/unionsdk/a/c;

    invoke-static {v0}, Lcom/vivo/unionsdk/a/c;->示(Lcom/vivo/unionsdk/a/c;)V

    .line 322
    return-void
.end method
