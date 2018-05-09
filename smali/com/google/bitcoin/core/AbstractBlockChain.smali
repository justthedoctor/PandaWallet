.class public abstract Lcom/google/bitcoin/core/AbstractBlockChain;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;,
        Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    }
.end annotation


# static fields
.field public static final FP_ESTIMATOR_ALPHA:D = 1.0E-4

.field public static final FP_ESTIMATOR_BETA:D = 0.01

.field private static final log:Lorg/slf4j/Logger;

.field private static final testnetDiffDate:Ljava/util/Date;


# instance fields
.field private final blockStore:Lcom/google/bitcoin/store/BlockStore;

.field protected chainHead:Lcom/google/bitcoin/core/StoredBlock;

.field private final chainHeadLock:Ljava/lang/Object;

.field private falsePositiveRate:D

.field private falsePositiveTrend:D

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/utils/ListenerRegistration",
            "<",
            "Lcom/google/bitcoin/core/BlockChainListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final orphanBlocks:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected final params:Lcom/google/bitcoin/core/NetworkParameters;

.field private previousFalsePositiveRate:D

.field private statsBlocksAdded:J

.field private statsLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-class v0, Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    .line 795
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x1357e4efc00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->testnetDiffDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V
    .locals 6
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p3, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/BlockChainListener;",
            ">;",
            "Lcom/google/bitcoin/store/BlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/BlockChainListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v2, "blockchain"

    invoke-static {v2}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 105
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsLastTime:J

    .line 146
    iput-object p3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    .line 147
    invoke-interface {p3}, Lcom/google/bitcoin/store/BlockStore;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 148
    sget-object v2, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v3, "chain head is at height {}:\n{}"

    iget-object v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 150
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 151
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/BlockChainListener;

    .local v1, "l":Lcom/google/bitcoin/core/BlockChainListener;
    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->addListener(Lcom/google/bitcoin/core/BlockChainListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 152
    .end local v1    # "l":Lcom/google/bitcoin/core/BlockChainListener;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/core/BlockChainListener;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Block;
    .param p1, "x1"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/google/bitcoin/core/BlockChainListener;
    .param p7, "x7"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static/range {p0 .. p7}, Lcom/google/bitcoin/core/AbstractBlockChain;->informListenerForNewTransactions(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/core/BlockChainListener;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private add(Lcom/google/bitcoin/core/Block;ZLjava/util/List;Ljava/util/Map;)Z
    .locals 8
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .param p2, "tryConnecting"    # Z
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Block;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 333
    .local p3, "filteredTxHashList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .local p4, "filteredTxn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 336
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsLastTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 338
    iget-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsBlocksAdded:J

    const-wide/16 v3, 0x1

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 339
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "{} blocks per second"

    iget-wide v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsBlocksAdded:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsLastTime:J

    .line 341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsBlocksAdded:J

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Block;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const/4 v0, 0x1

    .line 407
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 348
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 353
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_4

    .line 354
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Got a block header while running in full-block mode"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 358
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    .line 359
    const/4 v0, 0x1

    .line 407
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 365
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v6

    .line 366
    .local v6, "contentsImportant":Z
    iget-object v0, p1, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 367
    if-nez v6, :cond_6

    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->containsRelevantTransactions(Lcom/google/bitcoin/core/Block;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    const/4 v6, 0x1

    .line 375
    :cond_7
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->verifyHeader()V

    .line 376
    if-eqz v6, :cond_8

    .line 377
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->verifyTransactions()V
    :try_end_5
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 385
    :cond_8
    :try_start_6
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getStoredBlockInCurrentScope(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v2

    .line 387
    .local v2, "storedPrev":Lcom/google/bitcoin/core/StoredBlock;
    if-nez v2, :cond_a

    .line 391
    const-string v0, "bug in tryConnectingOrphans"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 392
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Block does not connect: {} prev {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    new-instance v3, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;

    invoke-direct {v3, p0, p1, p3, p4}, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;-><init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/Block;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 367
    .end local v2    # "storedPrev":Lcom/google/bitcoin/core/StoredBlock;
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v7

    .line 379
    .local v7, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_7
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to verify block: "

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 381
    throw v7

    .line 397
    .end local v7    # "e":Lcom/google/bitcoin/core/VerificationException;
    .restart local v2    # "storedPrev":Lcom/google/bitcoin/core/StoredBlock;
    :cond_a
    invoke-direct {p0, v2, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->checkDifficultyTransitions(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)V

    .line 398
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/AbstractBlockChain;->connectBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/StoredBlock;ZLjava/util/List;Ljava/util/Map;)V

    .line 401
    if-eqz p2, :cond_b

    .line 402
    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->tryConnectingOrphans()V

    .line 404
    :cond_b
    iget-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsBlocksAdded:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->statsBlocksAdded:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 405
    const/4 v0, 0x1

    .line 407
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method private checkDifficultyTransitions(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)V
    .locals 2
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "nextBlock"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 802
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    .line 804
    .local v0, "prev":Lcom/google/bitcoin/core/Block;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/bitcoin/core/CoinDefinition;->blockHeight:I

    .line 806
    return-void
.end method

.method private checkDifficultyTransitionsNew(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)V
    .locals 23
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "nextBlock"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v15

    .line 905
    .local v15, "prev":Lcom/google/bitcoin/core/Block;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    add-int/lit8 v20, v19, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v22, v0

    const-string v22, "org.pandacoin.test"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/CoinDefinition;->getInterval(IZ)I

    move-result v19

    rem-int v19, v20, v19

    if-eqz v19, :cond_3

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v19

    const-string v20, "org.pandacoin.test"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getTime()Ljava/util/Date;

    move-result-object v19

    sget-object v20, Lcom/google/bitcoin/core/AbstractBlockChain;->testnetDiffDate:Ljava/util/Date;

    invoke-virtual/range {v19 .. v20}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->checkTestnetDifficulty(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/Block;)V

    .line 971
    :cond_0
    return-void

    .line 905
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_0

    .line 917
    new-instance v19, Lcom/google/bitcoin/core/VerificationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unexpected change in difficulty at height "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " vs "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 925
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 926
    .local v13, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v5

    .line 927
    .local v5, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getInterval()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v8, v0, :cond_5

    .line 928
    if-nez v5, :cond_4

    .line 930
    new-instance v19, Lcom/google/bitcoin/core/VerificationException;

    const-string v20, "Difficulty transition point but we did not find a way back to the genesis block."

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 933
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v5

    .line 927
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 935
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, v19, v13

    .line 936
    .local v6, "elapsed":J
    const-wide/16 v19, 0x32

    cmp-long v19, v6, v19

    if-lez v19, :cond_6

    .line 937
    sget-object v19, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v20, "Difficulty transition traversal took {}msec"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    :cond_6
    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    .line 940
    .local v4, "blockIntervalAgo":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v19

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v21

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v18, v0

    .line 942
    .local v18, "timespan":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    add-int/lit8 v20, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v21, v0

    const-string v21, "org.pandacoin.test"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/CoinDefinition;->getTargetTimespan(IZ)I

    move-result v17

    .line 944
    .local v17, "targetTimespan":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    add-int/lit8 v20, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v21, v0

    const-string v21, "org.pandacoin.test"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/CoinDefinition;->getMaxTimeSpan(IIZ)I

    move-result v10

    .line 945
    .local v10, "maxActualTimeSpan":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    add-int/lit8 v20, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v21, v0

    const-string v21, "org.pandacoin.test"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/CoinDefinition;->getMinTimeSpan(IIZ)I

    move-result v11

    .line 947
    .local v11, "minActualTimeSpan":I
    move/from16 v0, v18

    if-ge v0, v11, :cond_7

    .line 948
    move/from16 v18, v11

    .line 949
    :cond_7
    move/from16 v0, v18

    if-le v0, v10, :cond_8

    .line 950
    move/from16 v18, v10

    .line 952
    :cond_8
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/google/bitcoin/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 953
    .local v12, "newDifficulty":Ljava/math/BigInteger;
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 954
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getProofOfWorkLimit()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-lez v19, :cond_9

    .line 957
    sget-object v19, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v20, "Difficulty hit proof of work limit: {}"

    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getProofOfWorkLimit()Ljava/math/BigInteger;

    move-result-object v12

    .line 961
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    const/16 v21, 0x18

    ushr-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int/lit8 v3, v19, -0x3

    .line 962
    .local v3, "accuracyBytes":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v16

    .line 965
    .local v16, "receivedDifficulty":Ljava/math/BigInteger;
    const-wide/32 v19, 0xffffff

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    mul-int/lit8 v20, v3, 0x8

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 966
    .local v9, "mask":Ljava/math/BigInteger;
    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 968
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-eqz v19, :cond_0

    .line 969
    new-instance v19, Lcom/google/bitcoin/core/VerificationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Network provided difficulty bits do not match what was calculated: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " vs "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 942
    .end local v3    # "accuracyBytes":I
    .end local v9    # "mask":Ljava/math/BigInteger;
    .end local v10    # "maxActualTimeSpan":I
    .end local v11    # "minActualTimeSpan":I
    .end local v12    # "newDifficulty":Ljava/math/BigInteger;
    .end local v16    # "receivedDifficulty":Ljava/math/BigInteger;
    .end local v17    # "targetTimespan":I
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 944
    .restart local v17    # "targetTimespan":I
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 945
    .restart local v10    # "maxActualTimeSpan":I
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_4
.end method

.method private checkDifficultyTransitions_original(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)V
    .locals 21
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "nextBlock"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 974
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v13

    .line 977
    .local v13, "prev":Lcom/google/bitcoin/core/Block;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/NetworkParameters;->getInterval()I

    move-result v18

    rem-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "org.pandacoin.test"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getTime()Ljava/util/Date;

    move-result-object v17

    sget-object v18, Lcom/google/bitcoin/core/AbstractBlockChain;->testnetDiffDate:Ljava/util/Date;

    invoke-virtual/range {v17 .. v18}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 983
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->checkTestnetDifficulty(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/Block;)V

    .line 1039
    :cond_0
    return-void

    .line 988
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v17

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_0

    .line 989
    new-instance v17, Lcom/google/bitcoin/core/VerificationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected change in difficulty at height "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 997
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 998
    .local v11, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v5

    .line 999
    .local v5, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getInterval()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 1000
    if-nez v5, :cond_3

    .line 1002
    new-instance v17, Lcom/google/bitcoin/core/VerificationException;

    const-string v18, "Difficulty transition point but we did not find a way back to the genesis block."

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1005
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v5

    .line 999
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1007
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v6, v17, v11

    .line 1008
    .local v6, "elapsed":J
    const-wide/16 v17, 0x32

    cmp-long v17, v6, v17

    if-lez v17, :cond_5

    .line 1009
    sget-object v17, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v18, "Difficulty transition traversal took {}msec"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    :cond_5
    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    .line 1012
    .local v4, "blockIntervalAgo":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v17

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v16, v0

    .line 1014
    .local v16, "timespan":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getTargetTimespan()I

    move-result v15

    .line 1015
    .local v15, "targetTimespan":I
    div-int/lit8 v17, v15, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1016
    div-int/lit8 v16, v15, 0x4

    .line 1017
    :cond_6
    mul-int/lit8 v17, v15, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 1018
    mul-int/lit8 v16, v15, 0x4

    .line 1020
    :cond_7
    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/bitcoin/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 1021
    .local v10, "newDifficulty":Ljava/math/BigInteger;
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1022
    int-to-long v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getProofOfWorkLimit()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-lez v17, :cond_8

    .line 1025
    sget-object v17, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v18, "Difficulty hit proof of work limit: {}"

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getProofOfWorkLimit()Ljava/math/BigInteger;

    move-result-object v10

    .line 1029
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v17

    const/16 v19, 0x18

    ushr-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v3, v17, -0x3

    .line 1030
    .local v3, "accuracyBytes":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v14

    .line 1033
    .local v14, "receivedDifficulty":Ljava/math/BigInteger;
    const-wide/32 v17, 0xffffff

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    mul-int/lit8 v18, v3, 0x8

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 1034
    .local v9, "mask":Ljava/math/BigInteger;
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1036
    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-eqz v17, :cond_0

    .line 1037
    new-instance v17, Lcom/google/bitcoin/core/VerificationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Network provided difficulty bits do not match what was calculated: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method private checkTestnetDifficulty(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/Block;)V
    .locals 9
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "prev"    # Lcom/google/bitcoin/core/Block;
    .param p3, "next"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v5, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1046
    invoke-virtual {p3}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 1049
    .local v3, "timeDelta":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide/16 v5, 0x78

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 1052
    move-object v0, p1

    .line 1053
    .local v0, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    :goto_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/Block;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/NetworkParameters;->getInterval()I

    move-result v6

    rem-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/NetworkParameters;->getProofOfWorkLimit()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1056
    iget-object v5, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-virtual {v0, v5}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 1058
    .local v1, "cursorDifficulty":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 1059
    .local v2, "newDifficulty":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1060
    new-instance v5, Lcom/google/bitcoin/core/VerificationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Testnet block transition that is not allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/google/bitcoin/core/Block;->getDifficultyTarget()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1064
    .end local v0    # "cursor":Lcom/google/bitcoin/core/StoredBlock;
    .end local v1    # "cursorDifficulty":Ljava/math/BigInteger;
    .end local v2    # "newDifficulty":Ljava/math/BigInteger;
    :cond_1
    return-void
.end method

.method private connectBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/StoredBlock;ZLjava/util/List;Ljava/util/Map;)V
    .locals 26
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .param p2, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "expensiveChecks"    # Z
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Block;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 417
    .local p4, "filteredTxHashList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .local p5, "filteredTxn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 418
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/16 v16, 0x1

    .line 420
    .local v16, "filtered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/bitcoin/core/NetworkParameters;->passesCheckpoint(ILcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Block failed checkpoint lockin at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    .end local v16    # "filtered":Z
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 422
    .restart local v16    # "filtered":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/bitcoin/core/Transaction;

    .line 425
    .local v24, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/bitcoin/core/Transaction;->isFinal(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 426
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block contains non-final transaction"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v19

    .line 430
    .local v19, "head":Lcom/google/bitcoin/core/StoredBlock;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 431
    if-eqz v16, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 432
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Block {} connects to top of best chain with {} transaction(s) of which we were sent {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/bitcoin/core/Sha256Hash;

    .local v17, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "  matched tx {}"

    move-object/from16 v0, v17

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 436
    .end local v17    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/google/bitcoin/core/AbstractBlockChain;->getMedianTimestampOfRecentBlocks(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 437
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block\'s timestamp is too early"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_5
    const/16 v25, 0x0

    .line 441
    .local v25, "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 442
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/google/bitcoin/core/AbstractBlockChain;->connectTransactions(ILcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v25

    .line 443
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v4, :cond_8

    move-object/from16 v4, p1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/TransactionOutputChanges;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v9

    .line 445
    .local v9, "newStoredBlock":Lcom/google/bitcoin/core/StoredBlock;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/bitcoin/core/AbstractBlockChain;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 446
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Chain is now {} blocks high, running listeners"

    invoke-virtual {v9}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    sget-object v6, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/bitcoin/core/AbstractBlockChain;->informListenersForNewBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;)V

    .line 492
    .end local v9    # "newStoredBlock":Lcom/google/bitcoin/core/StoredBlock;
    .end local v25    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :cond_7
    :goto_3
    return-void

    .line 443
    .restart local v25    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    goto :goto_2

    .line 453
    .end local v25    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v15

    .line 454
    .local v15, "newBlock":Lcom/google/bitcoin/core/StoredBlock;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/StoredBlock;->moreWorkThan(Lcom/google/bitcoin/core/StoredBlock;)Z

    move-result v18

    .line 455
    .local v18, "haveNewBestChain":Z
    if-eqz v18, :cond_c

    .line 456
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Block is causing a re-organize"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 485
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v4, :cond_a

    if-eqz v16, :cond_b

    .line 486
    :cond_a
    sget-object v12, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->SIDE_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v10 .. v15}, Lcom/google/bitcoin/core/AbstractBlockChain;->informListenersForNewBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;)V

    .line 489
    :cond_b
    if-eqz v18, :cond_7

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/bitcoin/core/AbstractBlockChain;->handleNewBestChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Z)V

    goto :goto_3

    .line 458
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v0, v19

    invoke-static {v15, v0, v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->findSplit(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v21

    .line 459
    .local v21, "splitPoint":Lcom/google/bitcoin/core/StoredBlock;
    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/google/bitcoin/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 463
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Saw duplicated block in main chain at height {}: {}"

    invoke-virtual {v15}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 467
    :cond_d
    if-nez v21, :cond_e

    .line 471
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block forks the chain but splitPoint is null"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    .line 475
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v23

    .line 476
    .local v23, "splitPointHeight":I
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v22

    .line 477
    .local v22, "splitPointHash":Ljava/lang/String;
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Block forks the chain at height {}/block {}, but it did not cause a reorganize:\n{}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v22, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v15}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private containsRelevantTransactions(Lcom/google/bitcoin/core/Block;)Z
    .locals 8
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;

    .prologue
    .line 1071
    iget-object v5, p1, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Transaction;

    .line 1073
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 1074
    .local v3, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    iget-object v5, v3, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v6, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v5, v6, :cond_1

    .line 1075
    iget-object v5, v3, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v5, Lcom/google/bitcoin/core/BlockChainListener;

    invoke-interface {v5, v4}, Lcom/google/bitcoin/core/BlockChainListener;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 1083
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :goto_1
    return v5

    .line 1077
    .restart local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    sget-object v5, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse a script: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/bitcoin/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    .end local v0    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static findSplit(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 4
    .param p0, "newChainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p1, "oldChainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "store"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 693
    move-object v0, p1

    .line 694
    .local v0, "currentChainCursor":Lcom/google/bitcoin/core/StoredBlock;
    move-object v1, p0

    .line 701
    .local v1, "newChainCursor":Lcom/google/bitcoin/core/StoredBlock;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 702
    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 703
    invoke-virtual {v0, p2}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 704
    const-string v2, "Attempt to follow an orphan chain"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {v1, p2}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v1

    .line 707
    const-string v2, "Attempt to follow an orphan chain"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 710
    :cond_1
    return-object v0
.end method

.method private static getMedianTimestampOfRecentBlocks(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)J
    .locals 7
    .param p0, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p1, "store"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    .line 575
    new-array v0, v6, [J

    .line 576
    .local v0, "timestamps":[J
    const/16 v1, 0x9

    .line 577
    .local v1, "unused":I
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    aput-wide v4, v0, v3

    move v2, v1

    .line 578
    .end local v1    # "unused":I
    .local v2, "unused":I
    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 579
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "unused":I
    .restart local v1    # "unused":I
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v3

    aput-wide v3, v0, v2

    move v2, v1

    .end local v1    # "unused":I
    .restart local v2    # "unused":I
    goto :goto_0

    .line 581
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3, v6}, Ljava/util/Arrays;->sort([JII)V

    .line 582
    rsub-int/lit8 v3, v2, 0xb

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    aget-wide v3, v0, v3

    return-wide v3
.end method

.method private static getPartialChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Ljava/util/LinkedList;
    .locals 4
    .param p0, "higher"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p1, "lower"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "store"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Lcom/google/bitcoin/store/BlockStore;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v3, "higher and lower are reversed"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 676
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 677
    .local v1, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredBlock;>;"
    move-object v0, p0

    .line 679
    .local v0, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {v0, p2}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v2

    const-string v3, "Ran off the end of the chain"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lcom/google/bitcoin/core/StoredBlock;
    check-cast v0, Lcom/google/bitcoin/core/StoredBlock;

    .line 681
    .restart local v0    # "cursor":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    return-object v1

    .line 675
    .end local v0    # "cursor":Lcom/google/bitcoin/core/StoredBlock;
    .end local v1    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredBlock;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleNewBestChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Z)V
    .locals 18
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "newChainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "block"    # Lcom/google/bitcoin/core/Block;
    .param p4, "expensiveChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v10

    .line 607
    .local v10, "head":Lcom/google/bitcoin/core/StoredBlock;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v0, p2

    invoke-static {v0, v10, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->findSplit(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v5

    .line 608
    .local v5, "splitPoint":Lcom/google/bitcoin/core/StoredBlock;
    sget-object v2, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v3, "Re-organize after split at height {}"

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    sget-object v2, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v3, "Old chain head: {}"

    invoke-virtual {v10}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    sget-object v2, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v3, "New chain head: {}"

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    sget-object v2, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v3, "Split at block: {}"

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-static {v10, v5, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getPartialChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Ljava/util/LinkedList;

    move-result-object v6

    .line 614
    .local v6, "oldBlocks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredBlock;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getPartialChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)Ljava/util/LinkedList;

    move-result-object v7

    .line 616
    .local v7, "newBlocks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredBlock;>;"
    move-object v14, v5

    .line 617
    .local v14, "storedNewHead":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/bitcoin/core/StoredBlock;

    .line 620
    .local v13, "oldBlock":Lcom/google/bitcoin/core/StoredBlock;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/bitcoin/core/AbstractBlockChain;->disconnectTransactions(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v9

    .line 626
    .local v9, "e":Lcom/google/bitcoin/core/PrunedException;
    throw v9

    .line 631
    .end local v9    # "e":Lcom/google/bitcoin/core/PrunedException;
    .end local v13    # "oldBlock":Lcom/google/bitcoin/core/StoredBlock;
    :cond_0
    invoke-virtual {v7}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/StoredBlock;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 632
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/StoredBlock;

    .line 633
    .local v8, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    if-eqz p4, :cond_1

    invoke-virtual {v8}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/google/bitcoin/core/AbstractBlockChain;->getMedianTimestampOfRecentBlocks(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/store/BlockStore;)J

    move-result-wide v16

    cmp-long v2, v2, v16

    if-gtz v2, :cond_1

    .line 634
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Block\'s timestamp is too early during reorg"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_1
    move-object/from16 v0, p2

    if-ne v8, v0, :cond_2

    if-nez p3, :cond_3

    .line 637
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/bitcoin/core/AbstractBlockChain;->connectTransactions(Lcom/google/bitcoin/core/StoredBlock;)Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v15

    .line 640
    .local v15, "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :goto_2
    invoke-virtual {v8}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v15}, Lcom/google/bitcoin/core/AbstractBlockChain;->addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/TransactionOutputChanges;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v14

    .line 641
    goto :goto_1

    .line 639
    .end local v15    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/google/bitcoin/core/AbstractBlockChain;->connectTransactions(ILcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v15

    .restart local v15    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    goto :goto_2

    .line 644
    .end local v8    # "cursor":Lcom/google/bitcoin/core/StoredBlock;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/StoredBlock;>;"
    .end local v15    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v14

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 650
    .local v4, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    iget-object v2, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v2, v3, :cond_6

    .line 653
    iget-object v2, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lcom/google/bitcoin/core/BlockChainListener;

    invoke-interface {v2, v5, v6, v7}, Lcom/google/bitcoin/core/BlockChainListener;->reorganize(Lcom/google/bitcoin/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 655
    :cond_6
    iget-object v0, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v16, v0

    new-instance v2, Lcom/google/bitcoin/core/AbstractBlockChain$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/bitcoin/core/AbstractBlockChain$2;-><init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/StoredBlock;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 668
    .end local v4    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/bitcoin/core/AbstractBlockChain;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 669
    return-void
.end method

.method private static informListenerForNewTransactions(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/core/BlockChainListener;Ljava/util/Set;)V
    .locals 11
    .param p0, "block"    # Lcom/google/bitcoin/core/Block;
    .param p1, "newBlockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "newStoredBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p5, "first"    # Z
    .param p6, "listener"    # Lcom/google/bitcoin/core/BlockChainListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Block;",
            "Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Z",
            "Lcom/google/bitcoin/core/BlockChainListener;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "filteredTxHashList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .local p3, "filteredTxn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    .local p7, "falsePositives":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 550
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez p5, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object v1, p4

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/bitcoin/core/AbstractBlockChain;->sendTransactionsToListener(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Lcom/google/bitcoin/core/BlockChainListener;ILjava/util/List;ZLjava/util/Set;)V

    .line 568
    :cond_0
    return-void

    .line 550
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 552
    :cond_2
    if-eqz p2, :cond_0

    .line 553
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, "relativityOffset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/Sha256Hash;

    .line 559
    .local v8, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/Transaction;

    .line 560
    .local v10, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz v10, :cond_4

    .line 561
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/bitcoin/core/Transaction;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-nez p5, :cond_3

    const/4 v6, 0x1

    :goto_2
    move-object v1, p4

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/bitcoin/core/AbstractBlockChain;->sendTransactionsToListener(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Lcom/google/bitcoin/core/BlockChainListener;ILjava/util/List;ZLjava/util/Set;)V

    .line 565
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 566
    goto :goto_1

    .line 561
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 564
    :cond_4
    move-object/from16 v0, p6

    invoke-interface {v0, v8, p4, p1, v4}, Lcom/google/bitcoin/core/BlockChainListener;->notifyTransactionIsInBlock(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V

    goto :goto_3
.end method

.method private informListenersForNewBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 19
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .param p2, "newBlockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "newStoredBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Block;",
            "Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 501
    .local p3, "filteredTxHashList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .local p4, "filteredTxn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v6, 0x1

    .line 502
    .local v6, "first":Z
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 503
    .local v8, "falsePositives":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 505
    .local v17, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v1, v2, :cond_2

    .line 506
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v7, Lcom/google/bitcoin/core/BlockChainListener;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/google/bitcoin/core/AbstractBlockChain;->informListenerForNewTransactions(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/core/BlockChainListener;Ljava/util/Set;)V

    .line 508
    sget-object v1, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 509
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v1, Lcom/google/bitcoin/core/BlockChainListener;

    move-object/from16 v0, p5

    invoke-interface {v1, v0}, Lcom/google/bitcoin/core/BlockChainListener;->notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 532
    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 512
    :cond_2
    if-nez v6, :cond_3

    const/16 v16, 0x1

    .line 513
    .local v16, "notFirst":Z
    :goto_2
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/bitcoin/core/AbstractBlockChain$1;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v17}, Lcom/google/bitcoin/core/AbstractBlockChain$1;-><init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/utils/ListenerRegistration;)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 512
    .end local v16    # "notFirst":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 535
    .end local v17    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/BlockChainListener;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/AbstractBlockChain;->trackFalsePositives(I)V

    .line 536
    return-void
.end method

.method private static sendTransactionsToListener(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Lcom/google/bitcoin/core/BlockChainListener;ILjava/util/List;ZLjava/util/Set;)V
    .locals 8
    .param p0, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p1, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p2, "listener"    # Lcom/google/bitcoin/core/BlockChainListener;
    .param p3, "relativityOffset"    # I
    .param p5, "clone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;",
            "Lcom/google/bitcoin/core/BlockChainListener;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 731
    .local p4, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .local p6, "falsePositives":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Transaction;

    .line 733
    .local v3, "tx":Lcom/google/bitcoin/core/Transaction;
    :try_start_0
    invoke-interface {p2, v3}, Lcom/google/bitcoin/core/BlockChainListener;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    invoke-interface {p6, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 735
    if-eqz p5, :cond_1

    .line 736
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    iget-object v5, v3, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    move-object v3, v4

    .line 737
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "relativityOffset":I
    .local v2, "relativityOffset":I
    :try_start_1
    invoke-interface {p2, v3, p0, p1, p3}, Lcom/google/bitcoin/core/BlockChainListener;->receiveFromBlock(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    move p3, v2

    .end local v2    # "relativityOffset":I
    .restart local p3    # "relativityOffset":I
    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    :goto_1
    sget-object v5, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse a script: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/bitcoin/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v0    # "e":Lcom/google/bitcoin/core/ScriptException;
    :catch_1
    move-exception v0

    .line 745
    .local v0, "e":Lcom/google/bitcoin/core/ProtocolException;
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 748
    .end local v0    # "e":Lcom/google/bitcoin/core/ProtocolException;
    .end local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    return-void

    .line 743
    .end local p3    # "relativityOffset":I
    .restart local v2    # "relativityOffset":I
    .restart local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_2
    move-exception v0

    move p3, v2

    .end local v2    # "relativityOffset":I
    .restart local p3    # "relativityOffset":I
    goto :goto_2

    .line 739
    .end local p3    # "relativityOffset":I
    .restart local v2    # "relativityOffset":I
    :catch_3
    move-exception v0

    move p3, v2

    .end local v2    # "relativityOffset":I
    .restart local p3    # "relativityOffset":I
    goto :goto_1
.end method

.method private tryConnectingOrphans()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 761
    iget-object v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 770
    :cond_0
    const/4 v0, 0x0

    .line 771
    .local v0, "blocksConnectedThisRound":I
    iget-object v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 772
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 773
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;

    .line 774
    .local v2, "orphanBlock":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Trying to connect {}"

    iget-object v6, v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    iget-object v4, v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->getStoredBlockInCurrentScope(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    .line 777
    .local v3, "prev":Lcom/google/bitcoin/core/StoredBlock;
    if-nez v3, :cond_1

    .line 779
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "  but it is not connectable right now"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v4, v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->filteredTxHashes:Ljava/util/List;

    iget-object v7, v2, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->filteredTxn:Ljava/util/Map;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/Block;ZLjava/util/List;Ljava/util/Map;)Z

    .line 785
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 786
    add-int/lit8 v0, v0, 0x1

    .line 787
    goto :goto_0

    .line 788
    .end local v2    # "orphanBlock":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    .end local v3    # "prev":Lcom/google/bitcoin/core/StoredBlock;
    :cond_2
    if-lez v0, :cond_3

    .line 789
    sget-object v4, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "Connected {} orphan blocks."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    :cond_3
    if-gtz v0, :cond_0

    .line 792
    return-void
.end method


# virtual methods
.method public add(Lcom/google/bitcoin/core/Block;)Z
    .locals 5
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/Block;ZLjava/util/List;Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 257
    .end local v0    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->notSettingChainHead()V
    :try_end_1
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_2

    .line 263
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not verify block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 260
    :catch_2
    move-exception v1

    .line 261
    .local v1, "e1":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public add(Lcom/google/bitcoin/core/FilteredBlock;)Z
    .locals 6
    .param p1, "block"    # Lcom/google/bitcoin/core/FilteredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getBlockHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getTransactionHashes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getAssociatedTransactions()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/Block;ZLjava/util/List;Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 286
    .end local v0    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->notSettingChainHead()V
    :try_end_1
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_2

    .line 292
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not verify block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    :catch_2
    move-exception v1

    .line 290
    .local v1, "e1":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addListener(Lcom/google/bitcoin/core/BlockChainListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/BlockChainListener;

    .prologue
    .line 177
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/AbstractBlockChain;->addListener(Lcom/google/bitcoin/core/BlockChainListener;Ljava/util/concurrent/Executor;)V

    .line 178
    return-void
.end method

.method public addListener(Lcom/google/bitcoin/core/BlockChainListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/bitcoin/core/BlockChainListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {v1, p1, p2}, Lcom/google/bitcoin/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method protected abstract addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method

.method protected abstract addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/TransactionOutputChanges;)Lcom/google/bitcoin/core/StoredBlock;
    .param p3    # Lcom/google/bitcoin/core/TransactionOutputChanges;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method

.method public addWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 4
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 161
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/AbstractBlockChain;->addListener(Lcom/google/bitcoin/core/BlockChainListener;Ljava/util/concurrent/Executor;)V

    .line 162
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Wallet/chain height mismatch: {} vs {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Hashes: {} vs {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected abstract connectTransactions(ILcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected abstract connectTransactions(Lcom/google/bitcoin/core/StoredBlock;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation
.end method

.method protected abstract disconnectTransactions(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/PrunedException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected abstract doSetChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public estimateBlockTime(I)Ljava/util/Date;
    .locals 12
    .param p1, "height"    # I

    .prologue
    .line 1140
    iget-object v7, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1141
    :try_start_0
    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    int-to-long v4, v6

    .line 1142
    .local v4, "offset":J
    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v2

    .line 1143
    .local v2, "headTime":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    const-wide/32 v10, 0x927c0

    mul-long/2addr v10, v4

    add-long v0, v8, v10

    .line 1144
    .local v0, "estimated":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    monitor-exit v7

    return-object v6

    .line 1145
    .end local v0    # "estimated":J
    .end local v2    # "headTime":J
    .end local v4    # "offset":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getBestChainHeight()I
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBlockStore()Lcom/google/bitcoin/store/BlockStore;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    return-object v0
.end method

.method public getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 2

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    monitor-exit v1

    return-object v0

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFalsePositiveRate()D
    .locals 2

    .prologue
    .line 1175
    iget-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    return-wide v0
.end method

.method public getHeightFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1154
    .local v0, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/StoredBlock;>;"
    new-instance v1, Lcom/google/bitcoin/core/AbstractBlockChain$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/bitcoin/core/AbstractBlockChain$3;-><init>(Lcom/google/bitcoin/core/AbstractBlockChain;ILcom/google/common/util/concurrent/SettableFuture;)V

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->addListener(Lcom/google/bitcoin/core/BlockChainListener;Ljava/util/concurrent/Executor;)V

    .line 1163
    return-object v0
.end method

.method public getOrphanRoot(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Block;
    .locals 4
    .param p1, "from"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1106
    iget-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1108
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    .local v0, "cursor":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    if-nez v0, :cond_0

    .line 1110
    const/4 v2, 0x0

    .line 1118
    iget-object v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v2

    .line 1112
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;

    .local v1, "tmp":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    if-eqz v1, :cond_1

    .line 1113
    move-object v0, v1

    goto :goto_1

    .line 1115
    :cond_1
    iget-object v2, v0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    iget-object v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "cursor":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    .end local v1    # "tmp":Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected abstract getStoredBlockInCurrentScope(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public isOrphan(Lcom/google/bitcoin/core/Sha256Hash;)Z
    .locals 2
    .param p1, "block"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1129
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected abstract notSettingChainHead()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public removeListener(Lcom/google/bitcoin/core/BlockChainListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/BlockChainListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lcom/google/bitcoin/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    .line 192
    return-void
.end method

.method public removeWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->removeListener(Lcom/google/bitcoin/core/BlockChainListener;)V

    .line 171
    return-void
.end method

.method public resetFalsePositiveEstimate()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1222
    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1223
    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveTrend:D

    .line 1224
    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->previousFalsePositiveRate:D

    .line 1225
    return-void
.end method

.method protected setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 2
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->doSetChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 752
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 753
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 754
    monitor-exit v1

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract shouldVerifyTransactions()Z
.end method

.method trackFalsePositives(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1216
    if-lez p1, :cond_0

    .line 1217
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "{} false positives, current rate = {} trend = {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveTrend:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    :cond_0
    return-void
.end method

.method protected trackFilteredTransactions(I)V
    .locals 10
    .param p1, "count"    # I

    .prologue
    .line 1192
    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 1195
    .local v0, "alphaDecay":D
    iget-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1197
    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1200
    .local v2, "betaDecay":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    int-to-double v6, p1

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    iget-wide v8, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->previousFalsePositiveRate:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveTrend:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveTrend:D

    .line 1205
    iget-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    iget-wide v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveTrend:D

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1208
    iget-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->falsePositiveRate:D

    iput-wide v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain;->previousFalsePositiveRate:D

    .line 1209
    return-void
.end method
