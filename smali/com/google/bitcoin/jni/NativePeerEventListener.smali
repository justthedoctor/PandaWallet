.class public Lcom/google/bitcoin/jni/NativePeerEventListener;
.super Ljava/lang/Object;
.source "NativePeerEventListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/PeerEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getData(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
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
.end method

.method public native onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
.end method

.method public native onChainDownloadStarted(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public native onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public native onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
.end method

.method public native onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
.end method

.method public native onTransaction(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Transaction;)V
.end method
