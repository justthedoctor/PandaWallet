.class public Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/FullPrunedBlockStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    }
.end annotation


# instance fields
.field private blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/store/TransactionalHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;",
            ">;"
        }
    .end annotation
.end field

.field private chainHead:Lcom/google/bitcoin/core/StoredBlock;

.field private fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            "Lcom/google/bitcoin/core/StoredUndoableBlock;",
            ">;"
        }
    .end annotation
.end field

.field private fullStoreDepth:I

.field private transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/store/TransactionalHashMap",
            "<",
            "Lcom/google/bitcoin/store/StoredTransactionOutPoint;",
            "Lcom/google/bitcoin/core/StoredTransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private verifiedChainHead:Lcom/google/bitcoin/core/StoredBlock;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;I)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "fullStoreDepth"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v4, Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-direct {v4}, Lcom/google/bitcoin/store/TransactionalHashMap;-><init>()V

    iput-object v4, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    .line 246
    new-instance v4, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-direct {v4}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;-><init>()V

    iput-object v4, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    .line 247
    new-instance v4, Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-direct {v4}, Lcom/google/bitcoin/store/TransactionalHashMap;-><init>()V

    iput-object v4, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    .line 248
    if-lez p2, :cond_0

    .end local p2    # "fullStoreDepth":I
    :goto_0
    iput p2, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullStoreDepth:I

    .line 251
    :try_start_0
    new-instance v3, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    .line 253
    .local v3, "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 254
    .local v1, "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v2, Lcom/google/bitcoin/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V

    .line 255
    .local v2, "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    invoke-virtual {p0, v3, v2}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V

    .line 256
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    return-void

    .line 248
    .end local v1    # "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v2    # "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v3    # "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    .restart local p2    # "fullStoreDepth":I
    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    .line 258
    .end local p2    # "fullStoreDepth":I
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 260
    .end local v0    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public declared-synchronized abortDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->abortDatabaseBatchWrite()V

    .line 360
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->AbortTransaction()V

    .line 361
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->abortDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 2
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    new-instance v1, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;-><init>(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/bitcoin/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized beginDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->beginDatabaseBatchWrite()V

    .line 348
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->BeginTransaction()V

    .line 349
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->beginDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    .line 325
    iput-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    .line 326
    iput-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    .line 327
    return-void
.end method

.method public declared-synchronized commitDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->commitDatabaseBatchWrite()V

    .line 354
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->CommitTransaction()V

    .line 355
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->commitDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 3
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v2, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .local v0, "storedBlock":Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    .end local v0    # "storedBlock":Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->chainHead:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnceUndoableStoredBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 3
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v2, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    .line 289
    .local v0, "storedBlock":Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->wasUndoable:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 287
    .end local v0    # "storedBlock":Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    new-instance v1, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;-><init>(Lcom/google/bitcoin/core/Sha256Hash;J)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/StoredTransactionOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/StoredUndoableBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVerifiedChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->verifiedChainHead:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasUnspentOutputs(Lcom/google/bitcoin/core/Sha256Hash;I)Z
    .locals 3
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "numOutputs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 366
    int-to-long v1, v0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x1

    .line 368
    :goto_1
    monitor-exit p0

    return v1

    .line 365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 4
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v2, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 268
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    new-instance v2, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;-><init>(Lcom/google/bitcoin/core/StoredBlock;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/google/bitcoin/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 266
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V
    .locals 4
    .param p1, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "undoableBlock"    # Lcom/google/bitcoin/core/StoredUndoableBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v2, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 274
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    new-instance v2, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;-><init>(Lcom/google/bitcoin/core/StoredBlock;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/google/bitcoin/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 272
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 2
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    new-instance v1, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;-><init>(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/store/TransactionalHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "Tried to remove a StoredTransactionOutput from MemoryFullPrunedBlockStore that it didn\'t have!"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 344
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 2
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput-object p1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->chainHead:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 3
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->blockMap:Lcom/google/bitcoin/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iput-object p1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->verifiedChainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 316
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->removeByMultiKey(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
