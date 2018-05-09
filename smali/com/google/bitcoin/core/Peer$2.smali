.class Lcom/google/bitcoin/core/Peer$2;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->processMessage(Lcom/google/bitcoin/core/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$2;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$2;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$2;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$2;->this$0:Lcom/google/bitcoin/core/Peer;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/PeerEventListener;->onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V

    .line 383
    return-void
.end method
