.class public Lcom/google/bitcoin/core/AbstractBlockChainListener;
.super Ljava/lang/Object;
.source "AbstractBlockChainListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/BlockChainListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 0
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method public notifyTransactionIsInBlock(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .locals 0
    .param p1, "txHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p4, "relativityOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public receiveFromBlock(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .locals 0
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p4, "relativityOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public reorganize(Lcom/google/bitcoin/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "splitPoint"    # Lcom/google/bitcoin/core/StoredBlock;
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

    .prologue
    .line 31
    .local p2, "oldBlocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    .local p3, "newBlocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    return-void
.end method
