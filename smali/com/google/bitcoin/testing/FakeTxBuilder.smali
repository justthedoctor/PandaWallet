.class public Lcom/google/bitcoin/testing/FakeTxBuilder;
.super Ljava/lang/Object;
.source "FakeTxBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;,
        Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static varargs createFakeBlock(Lcom/google/bitcoin/store/BlockStore;J[Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
    .locals 11
    .param p0, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .param p1, "timeSeconds"    # J
    .param p3, "transactions"    # [Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 160
    :try_start_0
    invoke-interface {p0}, Lcom/google/bitcoin/store/BlockStore;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    .line 161
    .local v2, "chainHead":Lcom/google/bitcoin/core/Block;
    new-instance v9, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v9}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v7

    .line 162
    .local v7, "to":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v2, v7, p1, p2}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;J)Lcom/google/bitcoin/core/Block;

    move-result-object v1

    .line 164
    .local v1, "b":Lcom/google/bitcoin/core/Block;
    move-object v0, p3

    .local v0, "arr$":[Lcom/google/bitcoin/core/Transaction;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v0, v4

    .line 165
    .local v8, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v9

    sget-object v10, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v9, v10}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 166
    invoke-virtual {v1, v8}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->solve()V

    .line 169
    new-instance v6, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;

    invoke-direct {v6}, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;-><init>()V

    .line 170
    .local v6, "pair":Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
    iput-object v1, v6, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->block:Lcom/google/bitcoin/core/Block;

    .line 171
    invoke-interface {p0}, Lcom/google/bitcoin/store/BlockStore;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/bitcoin/core/StoredBlock;->build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v9

    iput-object v9, v6, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 172
    iget-object v9, v6, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-interface {p0, v9}, Lcom/google/bitcoin/store/BlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 173
    iget-object v9, v6, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-interface {p0, v9}, Lcom/google/bitcoin/store/BlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    return-object v6

    .line 175
    .end local v0    # "arr$":[Lcom/google/bitcoin/core/Transaction;
    .end local v1    # "b":Lcom/google/bitcoin/core/Block;
    .end local v2    # "chainHead":Lcom/google/bitcoin/core/Block;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pair":Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
    .end local v7    # "to":Lcom/google/bitcoin/core/Address;
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 177
    .end local v3    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static varargs createFakeBlock(Lcom/google/bitcoin/store/BlockStore;[Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
    .locals 2
    .param p0, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .param p1, "transactions"    # [Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 183
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeBlock(Lcom/google/bitcoin/store/BlockStore;J[Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;

    move-result-object v0

    return-object v0
.end method

.method public static createFakeDoubleSpendTxns(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;
    .locals 9
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 125
    new-instance v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;

    invoke-direct {v0}, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;-><init>()V

    .line 126
    .local v0, "doubleSpends":Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    .line 127
    .local v6, "value":Ljava/math/BigInteger;
    new-instance v7, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v7}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v7, p0}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v5

    .line 129
    .local v5, "someBadGuy":Lcom/google/bitcoin/core/Address;
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v7, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    .line 130
    new-instance v2, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v2, p0, v7, v6, p1}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 131
    .local v2, "o1":Lcom/google/bitcoin/core/TransactionOutput;
    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v2}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 133
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v7, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->prevTx:Lcom/google/bitcoin/core/Transaction;

    .line 134
    new-instance v4, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->prevTx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v4, p0, v7, v6, v5}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 135
    .local v4, "prevOut":Lcom/google/bitcoin/core/TransactionOutput;
    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->prevTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v4}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 136
    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v4}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 138
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v7, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;

    .line 139
    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v4}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 140
    new-instance v3, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v3, p0, v7, v6, v5}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 141
    .local v3, "o2":Lcom/google/bitcoin/core/TransactionOutput;
    iget-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v3}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 144
    :try_start_0
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    iget-object v8, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    iput-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t1:Lcom/google/bitcoin/core/Transaction;

    .line 145
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    iget-object v8, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    iput-object v7, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;->t2:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "nanocoins"    # Ljava/math/BigInteger;
    .param p2, "to"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 49
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v0}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeTxWithChangeAddress(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public static createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/Transaction;
    .locals 7
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "nanocoins"    # Ljava/math/BigInteger;
    .param p2, "to"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 55
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v4, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 56
    .local v4, "t":Lcom/google/bitcoin/core/Transaction;
    new-instance v1, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v1, p0, v4, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)V

    .line 57
    .local v1, "outputToMe":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v4, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 58
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-static {v5, v6}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v6, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v6}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)V

    .line 59
    .local v0, "change":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v4, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 62
    new-instance v3, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v3, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 63
    .local v3, "prevTx":Lcom/google/bitcoin/core/Transaction;
    new-instance v2, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)V

    .line 64
    .local v2, "prevOut":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v3, v2}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 66
    invoke-virtual {v4, v2}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 68
    invoke-static {p0, v4}, Lcom/google/bitcoin/testing/FakeTxBuilder;->roundTripTransaction(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    return-object v5
.end method

.method public static createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/Address;)[Lcom/google/bitcoin/core/Transaction;
    .locals 11
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "nanocoins"    # Ljava/math/BigInteger;
    .param p2, "to"    # Lcom/google/bitcoin/core/Address;
    .param p3, "from"    # Lcom/google/bitcoin/core/Address;

    .prologue
    const/4 v10, 0x1

    .line 78
    new-instance v6, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v6, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 79
    .local v6, "t":Lcom/google/bitcoin/core/Transaction;
    new-instance v3, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v3, p0, v6, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 80
    .local v3, "outputToMe":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v6, v3}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 81
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    const/16 v7, 0xb

    invoke-static {v10, v7}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v8}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v8, p0}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    invoke-direct {v0, p0, v6, v7, v8}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 82
    .local v0, "change":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v6, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 85
    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 86
    .local v2, "feederTx":Lcom/google/bitcoin/core/Transaction;
    new-instance v1, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v1, p0, v2, p1, p3}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 87
    .local v1, "feederOut":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 90
    new-instance v5, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v5, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 91
    .local v5, "prevTx":Lcom/google/bitcoin/core/Transaction;
    new-instance v4, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 92
    .local v4, "prevOut":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v5, v4}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 95
    invoke-virtual {v5, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 96
    invoke-virtual {v6, v4}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 99
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/bitcoin/core/Transaction;

    const/4 v8, 0x0

    invoke-static {p0, v5}, Lcom/google/bitcoin/testing/FakeTxBuilder;->roundTripTransaction(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p0, v6}, Lcom/google/bitcoin/testing/FakeTxBuilder;->roundTripTransaction(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v8

    aput-object v8, v7, v10

    return-object v7
.end method

.method public static createFakeTxWithChangeAddress(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Transaction;
    .locals 7
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "nanocoins"    # Ljava/math/BigInteger;
    .param p2, "to"    # Lcom/google/bitcoin/core/Address;
    .param p3, "changeOutput"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 32
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v4, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 33
    .local v4, "t":Lcom/google/bitcoin/core/Transaction;
    new-instance v1, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v1, p0, v4, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 34
    .local v1, "outputToMe":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v4, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 35
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-static {v5, v6}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v0, p0, v4, v5, p3}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 36
    .local v0, "change":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v4, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 39
    new-instance v3, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v3, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 40
    .local v3, "prevTx":Lcom/google/bitcoin/core/Transaction;
    new-instance v2, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 41
    .local v2, "prevOut":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v3, v2}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 43
    invoke-virtual {v4, v2}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 45
    invoke-static {p0, v4}, Lcom/google/bitcoin/testing/FakeTxBuilder;->roundTripTransaction(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    return-object v5
.end method

.method public static varargs makeSolvedTestBlock(Lcom/google/bitcoin/core/Block;[Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Block;
    .locals 8
    .param p0, "prev"    # Lcom/google/bitcoin/core/Block;
    .param p1, "transactions"    # [Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v6, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v6}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v4

    .line 194
    .local v4, "to":Lcom/google/bitcoin/core/Address;
    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Block;

    move-result-object v1

    .line 196
    .local v1, "b":Lcom/google/bitcoin/core/Block;
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/bitcoin/core/Transaction;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 197
    .local v5, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1, v5}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->solve()V

    .line 200
    return-object v1
.end method

.method public static makeSolvedTestBlock(Lcom/google/bitcoin/store/BlockStore;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Block;
    .locals 2
    .param p0, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .param p1, "coinsTo"    # Lcom/google/bitcoin/core/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-interface {p0}, Lcom/google/bitcoin/store/BlockStore;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    .line 188
    .local v0, "b":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->solve()V

    .line 189
    return-object v0
.end method

.method public static roundTripTransaction(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;
    .locals 4
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/core/BitcoinSerializer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 108
    .local v1, "bs":Lcom/google/bitcoin/core/BitcoinSerializer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, p1, v0}, Lcom/google/bitcoin/core/BitcoinSerializer;->serialize(Lcom/google/bitcoin/core/Message;Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/bitcoin/core/BitcoinSerializer;->deserialize(Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 111
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bs":Lcom/google/bitcoin/core/BitcoinSerializer;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
