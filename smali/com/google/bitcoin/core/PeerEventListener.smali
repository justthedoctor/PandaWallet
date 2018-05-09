.class public interface abstract Lcom/google/bitcoin/core/PeerEventListener;
.super Ljava/lang/Object;
.source "PeerEventListener.java"


# virtual methods
.method public abstract getData(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
.end method

.method public abstract onChainDownloadStarted(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public abstract onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public abstract onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public abstract onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
.end method

.method public abstract onTransaction(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Transaction;)V
.end method
