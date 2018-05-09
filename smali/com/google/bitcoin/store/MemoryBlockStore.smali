.class public Lcom/google/bitcoin/store/MemoryBlockStore;
.super Ljava/lang/Object;
.source "MemoryBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/BlockStore;


# instance fields
.field private blockMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field private chainHead:Lcom/google/bitcoin/core/StoredBlock;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 5
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v3, Lcom/google/bitcoin/store/MemoryBlockStore$1;

    invoke-direct {v3, p0}, Lcom/google/bitcoin/store/MemoryBlockStore$1;-><init>(Lcom/google/bitcoin/store/MemoryBlockStore;)V

    iput-object v3, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    .line 40
    .local v1, "genesisHeader":Lcom/google/bitcoin/core/Block;
    new-instance v2, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    .line 41
    .local v2, "storedGenesis":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/MemoryBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/MemoryBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    return-void

    .line 43
    .end local v1    # "genesisHeader":Lcom/google/bitcoin/core/Block;
    .end local v2    # "storedGenesis":Lcom/google/bitcoin/core/StoredBlock;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 45
    .end local v0    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/google/bitcoin/store/MemoryBlockStore;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/store/MemoryBlockStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    .line 73
    return-void
.end method

.method public declared-synchronized get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "MemoryBlockStore is closed"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/StoredBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "MemoryBlockStore is closed"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    return-object v0
.end method

.method public declared-synchronized put(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 3
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "MemoryBlockStore is closed"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 53
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v1, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-void
.end method

.method public setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 2
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "MemoryBlockStore is closed"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/store/MemoryBlockStore;->chainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 69
    return-void
.end method
