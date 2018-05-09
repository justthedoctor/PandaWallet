.class Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "PeerDBDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->listenForPeers(Lcom/google/bitcoin/core/PeerGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 3
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$300(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->connected()V

    .line 271
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 3
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$300(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->disconnected()V

    .line 283
    return-void
.end method

.method public onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
    .locals 4
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/Message;

    .prologue
    .line 260
    instance-of v2, p2, Lcom/google/bitcoin/core/AddressMessage;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 261
    check-cast v2, Lcom/google/bitcoin/core/AddressMessage;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/AddressMessage;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 262
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    iget-object v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$300(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    goto :goto_0

    .line 264
    .end local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p2
.end method
