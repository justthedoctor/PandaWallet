.class Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "LitecoinPeerDBDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/litecoin/LitecoinPeerDBDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedEventListener"
.end annotation


# instance fields
.field params:Lcom/google/bitcoin/core/NetworkParameters;

.field parent:Lcom/google/bitcoin/core/PeerEventListener;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerEventListener;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 43
    iput-object p2, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->parent:Lcom/google/bitcoin/core/PeerEventListener;

    .line 44
    return-void
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 1
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->parent:Lcom/google/bitcoin/core/PeerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/bitcoin/core/PeerEventListener;->onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V

    .line 63
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 1
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->parent:Lcom/google/bitcoin/core/PeerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/bitcoin/core/PeerEventListener;->onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V

    .line 69
    return-void
.end method

.method public onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
    .locals 4
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/Message;

    .prologue
    .line 47
    instance-of v3, p2, Lcom/google/bitcoin/core/AddressMessage;

    if-eqz v3, :cond_1

    .line 48
    new-instance v2, Lcom/google/bitcoin/core/AddressMessage;

    iget-object v3, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/AddressMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 49
    .local v2, "newMessage":Lcom/google/bitcoin/core/AddressMessage;
    check-cast p2, Lcom/google/bitcoin/core/AddressMessage;

    .end local p2    # "m":Lcom/google/bitcoin/core/Message;
    invoke-virtual {p2}, Lcom/google/bitcoin/core/AddressMessage;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 51
    .local v0, "addr":Lcom/google/bitcoin/core/PeerAddress;
    invoke-virtual {v2, v0}, Lcom/google/bitcoin/core/AddressMessage;->addAddress(Lcom/google/bitcoin/core/PeerAddress;)V

    goto :goto_0

    .line 52
    .end local v0    # "addr":Lcom/google/bitcoin/core/PeerAddress;
    :cond_0
    iget-object v3, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;->parent:Lcom/google/bitcoin/core/PeerEventListener;

    invoke-interface {v3, p1, v2}, Lcom/google/bitcoin/core/PeerEventListener;->onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;

    move-result-object p2

    .line 54
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newMessage":Lcom/google/bitcoin/core/AddressMessage;
    :cond_1
    return-object p2
.end method
