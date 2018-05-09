.class public interface abstract Lcom/google/bitcoin/net/discovery/PeerDiscovery;
.super Ljava/lang/Object;
.source "PeerDiscovery.java"


# virtual methods
.method public abstract getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
