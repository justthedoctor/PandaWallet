.class Lcom/google/bitcoin/core/PeerGroup$12;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->waitForPeers(I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$numPeers:I


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$12;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    iput p2, p0, Lcom/google/bitcoin/core/PeerGroup$12;->val$numPeers:I

    iput-object p3, p0, Lcom/google/bitcoin/core/PeerGroup$12;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 2
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 1319
    iget v0, p0, Lcom/google/bitcoin/core/PeerGroup$12;->val$numPeers:I

    if-lt p2, v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$12;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$12;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1321
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$12;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/PeerGroup;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 1323
    :cond_0
    return-void
.end method
