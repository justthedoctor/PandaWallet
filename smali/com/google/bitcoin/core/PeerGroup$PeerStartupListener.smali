.class Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerStartupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method private constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/PeerGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/PeerGroup;
    .param p2, "x1"    # Lcom/google/bitcoin/core/PeerGroup$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/PeerGroup;->handleNewPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 231
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/PeerGroup;->handlePeerDeath(Lcom/google/bitcoin/core/Peer;)V

    .line 237
    return-void
.end method
