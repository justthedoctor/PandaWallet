.class Lcom/google/bitcoin/core/Peer$8;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->invokeOnBlocksDownloaded(Lcom/google/bitcoin/core/Block;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$blocksLeft:I

.field final synthetic val$m:Lcom/google/bitcoin/core/Block;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Block;I)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$8;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$8;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/Peer$8;->val$m:Lcom/google/bitcoin/core/Block;

    iput p4, p0, Lcom/google/bitcoin/core/Peer$8;->val$blocksLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$8;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$8;->this$0:Lcom/google/bitcoin/core/Peer;

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer$8;->val$m:Lcom/google/bitcoin/core/Block;

    iget v3, p0, Lcom/google/bitcoin/core/Peer$8;->val$blocksLeft:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/bitcoin/core/PeerEventListener;->onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V

    .line 973
    return-void
.end method
