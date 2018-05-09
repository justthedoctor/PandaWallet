.class public Lcom/google/bitcoin/core/FullPrunedBlockChain;
.super Lcom/google/bitcoin/core/AbstractBlockChain;
.source "FullPrunedBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

.field private runScripts:Z

.field scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/store/FullPrunedBlockStore;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "blockStore"    # Lcom/google/bitcoin/store/FullPrunedBlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/bitcoin/core/FullPrunedBlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/FullPrunedBlockStore;)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/FullPrunedBlockChain;->addWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/store/FullPrunedBlockStore;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "blockStore"    # Lcom/google/bitcoin/store/FullPrunedBlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/bitcoin/core/FullPrunedBlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/FullPrunedBlockStore;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/FullPrunedBlockStore;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p3, "blockStore"    # Lcom/google/bitcoin/store/FullPrunedBlockStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/BlockChainListener;",
            ">;",
            "Lcom/google/bitcoin/store/FullPrunedBlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/BlockChainListener;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/AbstractBlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->runScripts:Z

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p3, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    .line 78
    invoke-interface {p3}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getVerifiedChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 79
    return-void
.end method


# virtual methods
.method protected addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 5
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 93
    .local v0, "newBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v1, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    new-instance v2, Lcom/google/bitcoin/core/StoredUndoableBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    iget-object v4, p2, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V

    invoke-interface {v1, v0, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V

    .line 94
    return-object v0
.end method

.method protected addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/TransactionOutputChanges;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 4
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "header"    # Lcom/google/bitcoin/core/Block;
    .param p3, "txOutChanges"    # Lcom/google/bitcoin/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 85
    .local v0, "newBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v1, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    new-instance v2, Lcom/google/bitcoin/core/StoredUndoableBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/TransactionOutputChanges;)V

    invoke-interface {v1, v0, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V

    .line 86
    return-object v0
.end method

.method protected connectTransactions(ILcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .locals 32
    .param p1, "height"    # I
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 147
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v4, :cond_0

    .line 148
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "connectTransactions called with Block that didn\'t have transactions!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/bitcoin/core/NetworkParameters;->passesCheckpoint(ILcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Block failed checkpoint lockin at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 154
    new-instance v29, Ljava/util/LinkedList;

    invoke-direct/range {v29 .. v29}, Ljava/util/LinkedList;-><init>()V

    .line 155
    .local v29, "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    new-instance v28, Ljava/util/LinkedList;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .local v28, "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    const-wide/16 v23, 0x0

    .line 157
    .local v23, "sigOps":J
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    const-wide/32 v6, 0x4f779a80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    const/4 v12, 0x1

    .line 159
    .local v12, "enforcePayToScriptHash":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v19, "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/bitcoin/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/bitcoin/core/Transaction;

    .line 169
    .local v27, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    .line 172
    .local v3, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->hasUnspentOutputs(Lcom/google/bitcoin/core/Sha256Hash;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block failed BIP30 test!"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v11

    .line 260
    .local v11, "e":Lcom/google/bitcoin/core/VerificationException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 262
    throw v11

    .line 157
    .end local v11    # "e":Lcom/google/bitcoin/core/VerificationException;
    .end local v12    # "enforcePayToScriptHash":Z
    .end local v19    # "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 174
    .restart local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .restart local v12    # "enforcePayToScriptHash":Z
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v19    # "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    .restart local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_5
    if-eqz v12, :cond_3

    .line 175
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getSigOpCount()I

    move-result v4

    int-to-long v4, v4

    add-long v23, v23, v4

    goto :goto_1

    .line 178
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_6
    sget-object v26, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 179
    .local v26, "totalFees":Ljava/math/BigInteger;
    const/4 v10, 0x0

    .line 180
    .local v10, "coinbaseValue":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/bitcoin/core/Transaction;

    .line 181
    .restart local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v8

    .line 182
    .local v8, "isCoinBase":Z
    sget-object v30, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 183
    .local v30, "valueIn":Ljava/math/BigInteger;
    sget-object v31, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 184
    .local v31, "valueOut":Ljava/math/BigInteger;
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 185
    .local v22, "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    if-nez v8, :cond_c

    .line 188
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_c

    .line 189
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/bitcoin/core/TransactionInput;

    .line 190
    .local v17, "in":Lcom/google/bitcoin/core/TransactionInput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;

    move-result-object v21

    .line 192
    .local v21, "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    if-nez v21, :cond_8

    .line 193
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Attempted to spend a non-existent or already spent output!"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    .end local v8    # "isCoinBase":Z
    .end local v10    # "coinbaseValue":Ljava/math/BigInteger;
    .end local v17    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .end local v18    # "index":I
    .end local v21    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v22    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .end local v26    # "totalFees":Ljava/math/BigInteger;
    .end local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v30    # "valueIn":Ljava/math/BigInteger;
    .end local v31    # "valueOut":Ljava/math/BigInteger;
    :catch_1
    move-exception v11

    .line 264
    .local v11, "e":Lcom/google/bitcoin/store/BlockStoreException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 266
    throw v11

    .line 197
    .end local v11    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    .restart local v8    # "isCoinBase":Z
    .restart local v10    # "coinbaseValue":Ljava/math/BigInteger;
    .restart local v17    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v18    # "index":I
    .restart local v21    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .restart local v22    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .restart local v26    # "totalFees":Ljava/math/BigInteger;
    .restart local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local v30    # "valueIn":Ljava/math/BigInteger;
    .restart local v31    # "valueOut":Ljava/math/BigInteger;
    :cond_8
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v4

    sub-int v4, p1, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 198
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to spend coinbase at depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    .line 201
    if-eqz v12, :cond_b

    .line 202
    new-instance v4, Lcom/google/bitcoin/script/Script;

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 203
    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/script/Script;->getP2SHSigOpCount([B)J

    move-result-wide v4

    add-long v23, v23, v4

    .line 204
    :cond_a
    const-wide/16 v4, 0x4e20

    cmp-long v4, v23, v4

    if-lez v4, :cond_b

    .line 205
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Too many P2SH SigOps in block"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_b
    new-instance v4, Lcom/google/bitcoin/script/Script;

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    .line 213
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 216
    .end local v17    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .end local v18    # "index":I
    .end local v21    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    .line 217
    .restart local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/bitcoin/core/TransactionOutput;

    .line 218
    .local v20, "out":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v31

    .line 220
    new-instance v2, Lcom/google/bitcoin/core/StoredTransactionOutput;

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/TransactionOutput;->getIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v9

    move/from16 v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/bitcoin/core/StoredTransactionOutput;-><init>(Lcom/google/bitcoin/core/Sha256Hash;JLjava/math/BigInteger;IZ[B)V

    .line 222
    .local v2, "newOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    .line 223
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 227
    .end local v2    # "newOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v20    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_d
    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_f

    .line 228
    :cond_e
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction output value out of rage"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_f
    if-eqz v8, :cond_10

    .line 230
    move-object/from16 v10, v31

    .line 237
    :goto_5
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->runScripts:Z

    if-eqz v4, :cond_7

    .line 239
    new-instance v14, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1, v12}, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;-><init>(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V

    invoke-direct {v14, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 240
    .local v14, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/bitcoin/core/VerificationException;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 241
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 232
    .end local v14    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/bitcoin/core/VerificationException;>;"
    :cond_10
    invoke-virtual/range {v30 .. v31}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_12

    .line 233
    :cond_11
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction input value out of range"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_12
    invoke-virtual/range {v30 .. v31}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    goto :goto_5

    .line 244
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v8    # "isCoinBase":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v22    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .end local v27    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v30    # "valueIn":Ljava/math/BigInteger;
    .end local v31    # "valueOut":Ljava/math/BigInteger;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_14

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Block;->getBlockInflation(I)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_15

    .line 245
    :cond_14
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction fees out of range"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 246
    :cond_15
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Future;
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    .local v13, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;"
    :try_start_3
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/core/VerificationException;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    .local v11, "e":Lcom/google/bitcoin/core/VerificationException;
    if-eqz v11, :cond_16

    .line 257
    :try_start_4
    throw v11

    .line 250
    .end local v11    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_2
    move-exception v25

    .line 251
    .local v25, "thrownE":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 252
    .end local v25    # "thrownE":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v25

    .line 253
    .local v25, "thrownE":Ljava/util/concurrent/ExecutionException;
    sget-object v4, Lcom/google/bitcoin/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Script.correctlySpends threw a non-normal exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 254
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Bug in Script.correctlySpends, likely script malformed in some new and interesting way."

    move-object/from16 v0, v25

    invoke-direct {v4, v5, v0}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_4 .. :try_end_4} :catch_1

    .line 268
    .end local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;"
    .end local v25    # "thrownE":Ljava/util/concurrent/ExecutionException;
    :cond_17
    new-instance v4, Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v4, v0, v1}, Lcom/google/bitcoin/core/TransactionOutputChanges;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method protected declared-synchronized connectTransactions(Lcom/google/bitcoin/core/StoredBlock;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .locals 36
    .param p1, "newBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/bitcoin/core/NetworkParameters;->passesCheckpoint(ILcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Block failed checkpoint lockin at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 281
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;

    move-result-object v10

    .line 283
    .local v10, "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    if-nez v10, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 286
    new-instance v4, Lcom/google/bitcoin/core/PrunedException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/PrunedException;-><init>(Lcom/google/bitcoin/core/Sha256Hash;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v29

    .line 291
    .local v29, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    if-eqz v29, :cond_16

    .line 292
    new-instance v33, Ljava/util/LinkedList;

    invoke-direct/range {v33 .. v33}, Ljava/util/LinkedList;-><init>()V

    .line 293
    .local v33, "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    new-instance v32, Ljava/util/LinkedList;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedList;-><init>()V

    .line 294
    .local v32, "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    const-wide/16 v25, 0x0

    .line 295
    .local v25, "sigOps":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    const-wide/32 v6, 0x4f779a80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    const/4 v13, 0x1

    .line 296
    .local v13, "enforcePayToScriptHash":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 297
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/bitcoin/core/Transaction;

    .line 298
    .local v30, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    .line 299
    .local v3, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->hasUnspentOutputs(Lcom/google/bitcoin/core/Sha256Hash;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block failed BIP30 test!"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v13    # "enforcePayToScriptHash":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v25    # "sigOps":J
    .end local v29    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v30    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v32    # "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .end local v33    # "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    :catch_0
    move-exception v12

    .line 397
    .local v12, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 399
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .end local v12    # "e":Lcom/google/bitcoin/core/VerificationException;
    .restart local v25    # "sigOps":J
    .restart local v29    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v32    # "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .restart local v33    # "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 303
    .restart local v13    # "enforcePayToScriptHash":Z
    :cond_4
    :try_start_4
    sget-object v28, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 304
    .local v28, "totalFees":Ljava/math/BigInteger;
    const/4 v11, 0x0

    .line 306
    .local v11, "coinbaseValue":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 307
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 308
    :cond_5
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v20, "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/bitcoin/core/Transaction;

    .line 310
    .restart local v30    # "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v8

    .line 311
    .local v8, "isCoinBase":Z
    sget-object v34, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 312
    .local v34, "valueIn":Ljava/math/BigInteger;
    sget-object v35, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 313
    .local v35, "valueOut":Ljava/math/BigInteger;
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 314
    .local v23, "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    if-nez v8, :cond_b

    .line 315
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_2
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    .line 316
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/bitcoin/core/TransactionInput;

    .line 317
    .local v18, "in":Lcom/google/bitcoin/core/TransactionInput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;

    move-result-object v22

    .line 319
    .local v22, "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    if-nez v22, :cond_7

    .line 320
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Attempted spend of a non-existent or already spent output!"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 400
    .end local v8    # "isCoinBase":Z
    .end local v11    # "coinbaseValue":Ljava/math/BigInteger;
    .end local v13    # "enforcePayToScriptHash":Z
    .end local v18    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .end local v19    # "index":I
    .end local v20    # "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    .end local v22    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v23    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .end local v25    # "sigOps":J
    .end local v28    # "totalFees":Ljava/math/BigInteger;
    .end local v29    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v30    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v32    # "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .end local v33    # "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .end local v34    # "valueIn":Ljava/math/BigInteger;
    .end local v35    # "valueOut":Ljava/math/BigInteger;
    :catch_1
    move-exception v12

    .line 401
    .local v12, "e":Lcom/google/bitcoin/store/BlockStoreException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 403
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    .end local v12    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    .restart local v8    # "isCoinBase":Z
    .restart local v11    # "coinbaseValue":Ljava/math/BigInteger;
    .restart local v13    # "enforcePayToScriptHash":Z
    .restart local v18    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v19    # "index":I
    .restart local v20    # "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    .restart local v22    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .restart local v23    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .restart local v25    # "sigOps":J
    .restart local v28    # "totalFees":Ljava/math/BigInteger;
    .restart local v29    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v30    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local v32    # "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .restart local v33    # "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .restart local v34    # "valueIn":Ljava/math/BigInteger;
    .restart local v35    # "valueOut":Ljava/math/BigInteger;
    :cond_7
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 322
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to spend coinbase at depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v34

    .line 324
    if-eqz v13, :cond_a

    .line 325
    new-instance v24, Lcom/google/bitcoin/script/Script;

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 326
    .local v24, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 327
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/script/Script;->getP2SHSigOpCount([B)J

    move-result-wide v4

    add-long v25, v25, v4

    .line 328
    :cond_9
    const-wide/16 v4, 0x4e20

    cmp-long v4, v25, v4

    if-lez v4, :cond_a

    .line 329
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Too many P2SH SigOps in block"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    .end local v24    # "script":Lcom/google/bitcoin/script/Script;
    :cond_a
    new-instance v4, Lcom/google/bitcoin/script/Script;

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    .line 335
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 338
    .end local v18    # "in":Lcom/google/bitcoin/core/TransactionInput;
    .end local v19    # "index":I
    .end local v22    # "prevOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    .line 339
    .restart local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual/range {v30 .. v30}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/TransactionOutput;

    .line 340
    .local v21, "out":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v35

    .line 341
    new-instance v2, Lcom/google/bitcoin/core/StoredTransactionOutput;

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/TransactionOutput;->getIndex()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/bitcoin/core/StoredTransactionOutput;-><init>(Lcom/google/bitcoin/core/Sha256Hash;JLjava/math/BigInteger;IZ[B)V

    .line 344
    .local v2, "newOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v4, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    .line 345
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 349
    .end local v2    # "newOut":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v21    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_c
    invoke-virtual/range {v35 .. v35}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_e

    .line 350
    :cond_d
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction output value out of rage"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :cond_e
    if-eqz v8, :cond_f

    .line 352
    move-object/from16 v11, v35

    .line 359
    :goto_4
    if-nez v8, :cond_6

    .line 361
    new-instance v15, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1, v13}, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;-><init>(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V

    invoke-direct {v15, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 362
    .local v15, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/bitcoin/core/VerificationException;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 363
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 354
    .end local v15    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/bitcoin/core/VerificationException;>;"
    :cond_f
    invoke-virtual/range {v34 .. v35}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_11

    .line 355
    :cond_10
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction input value out of range"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_11
    invoke-virtual/range {v34 .. v35}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    goto :goto_4

    .line 366
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v8    # "isCoinBase":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v23    # "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    .end local v30    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v34    # "valueIn":Ljava/math/BigInteger;
    .end local v35    # "valueOut":Ljava/math/BigInteger;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Block;->getBlockInflation(I)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_14

    .line 368
    :cond_13
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction fees out of range"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    :cond_14
    new-instance v31, Lcom/google/bitcoin/core/TransactionOutputChanges;

    invoke-direct/range {v31 .. v33}, Lcom/google/bitcoin/core/TransactionOutputChanges;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 370
    .local v31, "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Future;
    :try_end_6
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 373
    .local v14, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;"
    :try_start_7
    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/core/VerificationException;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 380
    .local v12, "e":Lcom/google/bitcoin/core/VerificationException;
    if-eqz v12, :cond_15

    .line 381
    :try_start_8
    throw v12

    .line 374
    .end local v12    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_2
    move-exception v27

    .line 375
    .local v27, "thrownE":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 376
    .end local v27    # "thrownE":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v27

    .line 377
    .local v27, "thrownE":Ljava/util/concurrent/ExecutionException;
    sget-object v4, Lcom/google/bitcoin/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Script.correctlySpends threw a non-normal exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 378
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Bug in Script.correctlySpends, likely script malformed in some new and interesting way."

    move-object/from16 v0, v27

    invoke-direct {v4, v5, v0}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 384
    .end local v11    # "coinbaseValue":Ljava/math/BigInteger;
    .end local v13    # "enforcePayToScriptHash":Z
    .end local v14    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "listScriptVerificationResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/google/bitcoin/core/VerificationException;>;>;"
    .end local v25    # "sigOps":J
    .end local v27    # "thrownE":Ljava/util/concurrent/ExecutionException;
    .end local v28    # "totalFees":Ljava/math/BigInteger;
    .end local v31    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    .end local v32    # "txOutsCreated":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .end local v33    # "txOutsSpent":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    :cond_16
    invoke-virtual {v10}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v31

    .line 385
    .restart local v31    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 386
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 387
    .local v21, "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    .line 388
    .restart local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 389
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Block failed BIP30 test!"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 391
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_18
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 392
    .restart local v21    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V

    goto :goto_5

    .line 393
    .end local v21    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_19
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 394
    .restart local v21    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    :try_end_8
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 405
    .end local v21    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_1a
    monitor-exit p0

    return-object v31
.end method

.method protected disconnectTransactions(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 7
    .param p1, "oldBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/PrunedException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 415
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 417
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;

    move-result-object v4

    .line 418
    .local v4, "undoBlock":Lcom/google/bitcoin/core/StoredUndoableBlock;
    if-nez v4, :cond_0

    new-instance v5, Lcom/google/bitcoin/core/PrunedException;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/bitcoin/core/PrunedException;-><init>(Lcom/google/bitcoin/core/Sha256Hash;)V

    throw v5
    :try_end_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    .end local v4    # "undoBlock":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/google/bitcoin/core/PrunedException;
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 426
    throw v0

    .line 419
    .end local v0    # "e":Lcom/google/bitcoin/core/PrunedException;
    .restart local v4    # "undoBlock":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v3

    .line 420
    .local v3, "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    iget-object v5, v3, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 421
    .local v2, "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v5, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 427
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v3    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    .end local v4    # "undoBlock":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :catch_1
    move-exception v0

    .line 428
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v5}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 429
    throw v0

    .line 422
    .end local v0    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "txOutChanges":Lcom/google/bitcoin/core/TransactionOutputChanges;
    .restart local v4    # "undoBlock":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :cond_1
    :try_start_2
    iget-object v5, v3, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 423
    .restart local v2    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    iget-object v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v5, v2}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 431
    .end local v2    # "out":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_2
    return-void
.end method

.method protected doSetChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 1
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 436
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 437
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->commitDatabaseBatchWrite()V

    .line 438
    return-void
.end method

.method protected getStoredBlockInCurrentScope(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 448
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->getOnceUndoableStoredBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method protected notSettingChainHead()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->blockStore:Lcom/google/bitcoin/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lcom/google/bitcoin/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 443
    return-void
.end method

.method public setRunScripts(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain;->runScripts:Z

    .line 111
    return-void
.end method

.method protected shouldVerifyTransactions()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
