.class public interface abstract Lcom/google/bitcoin/store/FullPrunedBlockStore;
.super Ljava/lang/Object;
.source "FullPrunedBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/BlockStore;


# virtual methods
.method public abstract abortDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract beginDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract commitDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getOnceUndoableStoredBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getVerifiedChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract hasUnspentOutputs(Lcom/google/bitcoin/core/Sha256Hash;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method
