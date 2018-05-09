.class Lde/schildbach/wallet/service/BlockchainServiceImpl$2;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V
    .locals 3

    .prologue
    .line 322
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    .line 323
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 340
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$2;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$900(Lde/schildbach/wallet/service/BlockchainServiceImpl$2;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl$2;

    .prologue
    .line 322
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
    .locals 7
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .param p3, "blocksLeft"    # I

    .prologue
    const-wide/16 v5, 0x3e8

    .line 328
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v3}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)I

    move-result v3

    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v4}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/BlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$202(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)I

    .line 330
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$800(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 334
    .local v0, "now":J
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 335
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$800(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$800(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
