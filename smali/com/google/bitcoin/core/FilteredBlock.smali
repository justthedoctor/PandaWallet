.class public Lcom/google/bitcoin/core/FilteredBlock;
.super Lcom/google/bitcoin/core/Message;
.source "FilteredBlock.java"


# static fields
.field public static final MIN_PROTOCOL_VERSION:I = 0x11170


# instance fields
.field private associatedTransactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private cachedTransactionHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lcom/google/bitcoin/core/Block;

.field private merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->cachedTransactionHashes:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->associatedTransactions:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    iget-object v0, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/Block;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/PartialMerkleTree;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    .line 50
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/Block;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public getAssociatedTransactions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->associatedTransactions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHeader()Lcom/google/bitcoin/core/Block;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;

    iget v0, v0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    return v0
.end method

.method public getTransactionHashes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->cachedTransactionHashes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->cachedTransactionHashes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 76
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 77
    .local v0, "hashesMatched":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/FilteredBlock;->merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;

    invoke-virtual {v2, v0}, Lcom/google/bitcoin/core/PartialMerkleTree;->getTxnHashAndMerkleRoot(Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iput-object v0, p0, Lcom/google/bitcoin/core/FilteredBlock;->cachedTransactionHashes:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->cachedTransactionHashes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lcom/google/bitcoin/core/VerificationException;

    const-string v2, "Merkle root of block header does not match merkle root of partial merkle tree."

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x50

    .line 54
    new-array v0, v4, [B

    .line 55
    .local v0, "headerBytes":[B
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->bytes:[B

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v1, Lcom/google/bitcoin/core/Block;

    iget-object v2, p0, Lcom/google/bitcoin/core/FilteredBlock;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v2, v0}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    iput-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->header:Lcom/google/bitcoin/core/Block;

    .line 58
    new-instance v1, Lcom/google/bitcoin/core/PartialMerkleTree;

    iget-object v2, p0, Lcom/google/bitcoin/core/FilteredBlock;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v3, p0, Lcom/google/bitcoin/core/FilteredBlock;->bytes:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/google/bitcoin/core/PartialMerkleTree;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    iput-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;

    .line 60
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->merkleTree:Lcom/google/bitcoin/core/PartialMerkleTree;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PartialMerkleTree;->getMessageSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    iput v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->length:I

    .line 61
    return-void
.end method

.method protected parseLite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public provideTransaction(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 102
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/FilteredBlock;->getTransactionHashes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/bitcoin/core/FilteredBlock;->associatedTransactions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
