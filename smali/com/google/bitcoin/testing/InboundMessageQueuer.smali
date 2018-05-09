.class public abstract Lcom/google/bitcoin/testing/InboundMessageQueuer;
.super Lcom/google/bitcoin/core/PeerSocketHandler;
.source "InboundMessageQueuer.java"


# instance fields
.field public final inboundMessages:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/bitcoin/core/Message;",
            ">;"
        }
    .end annotation
.end field

.field public lastReceivedFilter:Lcom/google/bitcoin/core/BloomFilter;

.field public final mapPingFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public peer:Lcom/google/bitcoin/core/Peer;


# direct methods
.method protected constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 23
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/PeerSocketHandler;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/net/InetSocketAddress;)V

    .line 16
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->inboundMessages:Ljava/util/concurrent/BlockingQueue;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->mapPingFutures:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public nextMessage()Lcom/google/bitcoin/core/Message;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->inboundMessages:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Message;

    return-object v0
.end method

.method public nextMessageBlocking()Lcom/google/bitcoin/core/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->inboundMessages:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Message;

    return-object v0
.end method

.method protected processMessage(Lcom/google/bitcoin/core/Message;)V
    .locals 5
    .param p1, "m"    # Lcom/google/bitcoin/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    instance-of v1, p1, Lcom/google/bitcoin/core/Ping;

    if-eqz v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->mapPingFutures:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/google/bitcoin/core/Ping;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Ping;->getNonce()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 38
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 47
    .end local v0    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/google/bitcoin/core/BloomFilter;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 44
    check-cast v1, Lcom/google/bitcoin/core/BloomFilter;

    iput-object v1, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->lastReceivedFilter:Lcom/google/bitcoin/core/BloomFilter;

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/testing/InboundMessageQueuer;->inboundMessages:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
