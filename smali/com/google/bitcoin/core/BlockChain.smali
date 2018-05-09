.class public Lcom/google/bitcoin/core/BlockChain;
.super Lcom/google/bitcoin/core/AbstractBlockChain;
.source "BlockChain.java"


# instance fields
.field protected final blockStore:Lcom/google/bitcoin/store/BlockStore;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/store/BlockStore;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/BlockChain;->addWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/store/BlockStore;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V
    .locals 0
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
    .line 63
    .local p2, "wallets":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/BlockChainListener;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/AbstractBlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/store/BlockStore;)V

    .line 64
    iput-object p3, p0, Lcom/google/bitcoin/core/BlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    .line 65
    return-void
.end method


# virtual methods
.method public add(Lcom/google/bitcoin/core/FilteredBlock;)Z
    .locals 2
    .param p1, "block"    # Lcom/google/bitcoin/core/FilteredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/PrunedException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/FilteredBlock;)Z

    move-result v0

    .line 124
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getTransactionCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/BlockChain;->trackFilteredTransactions(I)V

    .line 127
    :cond_0
    return v0
.end method

.method protected addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "blockHeader"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 79
    .local v0, "newBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v1, p0, Lcom/google/bitcoin/core/BlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v1, v0}, Lcom/google/bitcoin/store/BlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 80
    return-object v0
.end method

.method protected addToBlockStore(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/TransactionOutputChanges;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .param p1, "storedPrev"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "blockHeader"    # Lcom/google/bitcoin/core/Block;
    .param p3, "txOutChanges"    # Lcom/google/bitcoin/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 71
    .local v0, "newBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v1, p0, Lcom/google/bitcoin/core/BlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v1, v0}, Lcom/google/bitcoin/store/BlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 72
    return-object v0
.end method

.method protected connectTransactions(ILcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .locals 1
    .param p1, "height"    # I
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected connectTransactions(Lcom/google/bitcoin/core/StoredBlock;)Lcom/google/bitcoin/core/TransactionOutputChanges;
    .locals 1
    .param p1, "newBlock"    # Lcom/google/bitcoin/core/StoredBlock;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected disconnectTransactions(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 108
    iget-object v0, p0, Lcom/google/bitcoin/core/BlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/store/BlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 109
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
    .line 118
    iget-object v0, p0, Lcom/google/bitcoin/core/BlockChain;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method protected notSettingChainHead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method protected shouldVerifyTransactions()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
