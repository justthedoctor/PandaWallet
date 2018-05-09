.class public Lcom/google/bitcoin/core/AbstractPeerEventListener;
.super Ljava/lang/Object;
.source "AbstractPeerEventListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/PeerEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/GetDataMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Peer;",
            "Lcom/google/bitcoin/core/GetDataMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .param p3, "blocksLeft"    # I

    .prologue
    .line 27
    return-void
.end method

.method public onChainDownloadStarted(Lcom/google/bitcoin/core/Peer;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "blocksLeft"    # I

    .prologue
    .line 31
    return-void
.end method

.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 35
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/Message;

    .prologue
    .line 44
    return-object p2
.end method

.method public onTransaction(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "t"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 49
    return-void
.end method
