.class Lcom/google/bitcoin/core/Peer$9;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->startBlockChainDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$blocksLeft:I

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;I)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$9;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$9;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput p3, p0, Lcom/google/bitcoin/core/Peer$9;->val$blocksLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$9;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$9;->this$0:Lcom/google/bitcoin/core/Peer;

    iget v2, p0, Lcom/google/bitcoin/core/Peer$9;->val$blocksLeft:I

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/PeerEventListener;->onChainDownloadStarted(Lcom/google/bitcoin/core/Peer;I)V

    .line 1290
    return-void
.end method
