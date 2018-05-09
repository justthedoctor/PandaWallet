.class public interface abstract Lcom/google/bitcoin/core/BlockChainListener;
.super Ljava/lang/Object;
.source "BlockChainListener.java"


# virtual methods
.method public abstract isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation
.end method

.method public abstract notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method

.method public abstract notifyTransactionIsInBlock(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method

.method public abstract receiveFromBlock(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method

.method public abstract reorganize(Lcom/google/bitcoin/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation
.end method
