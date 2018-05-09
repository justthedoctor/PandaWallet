.class Lde/schildbach/wallet/service/BlockchainServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
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
.field private final activityHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private lastChainHeight:I

.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V
    .locals 1

    .prologue
    .line 543
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->lastChainHeight:I

    .line 545
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 550
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v10}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/bitcoin/core/BlockChain;->getBestChainHeight()I

    move-result v2

    .line 552
    .local v2, "chainHeight":I
    iget v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->lastChainHeight:I

    if-lez v10, :cond_5

    .line 554
    iget v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->lastChainHeight:I

    sub-int v7, v2, v10

    .line 555
    .local v7, "numBlocksDownloaded":I
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v10}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$000(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v8

    .line 558
    .local v8, "numTransactionsReceived":I
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    const/4 v11, 0x0

    new-instance v12, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;

    invoke-direct {v12, v8, v7}, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;-><init>(II)V

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 561
    :goto_0
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1700()I

    move-result v11

    if-le v10, v11, :cond_0

    .line 562
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    iget-object v11, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;

    .line 568
    .local v3, "entry":Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 569
    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 572
    .end local v3    # "entry":Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
    :cond_2
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "History of transactions/blocks: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 575
    const/4 v6, 0x0

    .line 576
    .local v6, "isIdle":Z
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    .line 578
    const/4 v6, 0x1

    .line 579
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 581
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->activityHistory:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;

    .line 582
    .restart local v3    # "entry":Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
    iget v10, v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numBlocksDownloaded:I

    if-lez v10, :cond_6

    const/4 v10, 0x2

    if-gt v4, v10, :cond_6

    const/4 v0, 0x1

    .line 583
    .local v0, "blocksActive":Z
    :goto_3
    iget v10, v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numTransactionsReceived:I

    if-lez v10, :cond_7

    const/16 v10, 0x9

    if-gt v4, v10, :cond_7

    const/4 v9, 0x1

    .line 585
    .local v9, "transactionsActive":Z
    :goto_4
    if-nez v0, :cond_3

    if-eqz v9, :cond_8

    .line 587
    :cond_3
    const/4 v6, 0x0

    .line 594
    .end local v0    # "blocksActive":Z
    .end local v3    # "entry":Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
    .end local v4    # "i":I
    .end local v9    # "transactionsActive":Z
    :cond_4
    if-eqz v6, :cond_5

    .line 596
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v10

    const-string v11, "idling detected, stopping service"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 598
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-virtual {v10}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->stopSelf()V

    .line 602
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isIdle":Z
    .end local v7    # "numBlocksDownloaded":I
    .end local v8    # "numTransactionsReceived":I
    :cond_5
    iput v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;->lastChainHeight:I

    .line 603
    return-void

    .line 582
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "entry":Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "isIdle":Z
    .restart local v7    # "numBlocksDownloaded":I
    .restart local v8    # "numTransactionsReceived":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 583
    .restart local v0    # "blocksActive":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 579
    .restart local v9    # "transactionsActive":Z
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
