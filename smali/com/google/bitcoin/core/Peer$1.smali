.class Lcom/google/bitcoin/core/Peer$1;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->connectionClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$registration:Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$1;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$1;->val$registration:Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$1;->val$registration:Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$1;->this$0:Lcom/google/bitcoin/core/Peer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/PeerEventListener;->onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V

    .line 290
    return-void
.end method
