.class Lcom/google/bitcoin/net/AbstractTimeoutHandler$1;
.super Ljava/util/TimerTask;
.source "AbstractTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/net/AbstractTimeoutHandler;->resetTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/AbstractTimeoutHandler;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/AbstractTimeoutHandler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler$1;->this$0:Lcom/google/bitcoin/net/AbstractTimeoutHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler$1;->this$0:Lcom/google/bitcoin/net/AbstractTimeoutHandler;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutOccurred()V

    .line 76
    return-void
.end method
