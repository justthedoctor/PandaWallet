.class Lcom/google/bitcoin/core/PeerGroup$9;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->handleNewPeer(Lcom/google/bitcoin/core/Peer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;

.field final synthetic val$fNewSize:I

.field final synthetic val$peer:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Peer;I)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$9;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    iput-object p2, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$peer:Lcom/google/bitcoin/core/Peer;

    iput p4, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$fNewSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$peer:Lcom/google/bitcoin/core/Peer;

    iget v2, p0, Lcom/google/bitcoin/core/PeerGroup$9;->val$fNewSize:I

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/PeerEventListener;->onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V

    .line 1096
    return-void
.end method
