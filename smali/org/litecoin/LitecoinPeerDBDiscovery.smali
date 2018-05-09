.class public Lorg/litecoin/LitecoinPeerDBDiscovery;
.super Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;
.source "LitecoinPeerDBDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/litecoin/LitecoinPeerDBDiscovery$1;,
        Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;,
        Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "db"    # Ljava/io/File;
    .param p3, "group"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 87
    new-instance v0, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerGroup;Lorg/litecoin/LitecoinPeerDBDiscovery$1;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;Lcom/google/bitcoin/core/PeerGroup;)V

    .line 88
    return-void
.end method
