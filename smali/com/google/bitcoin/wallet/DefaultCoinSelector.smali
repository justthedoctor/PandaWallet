.class public Lcom/google/bitcoin/wallet/DefaultCoinSelector;
.super Ljava/lang/Object;
.source "DefaultCoinSelector.java"

# interfaces
.implements Lcom/google/bitcoin/wallet/CoinSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSelectable(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 5
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    .line 81
    .local v0, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    .line 82
    .local v1, "type":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v1, v3}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v1, v3}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v3

    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v3

    if-gt v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v3

    invoke-static {}, Lcom/google/bitcoin/params/RegTestParams;->get()Lcom/google/bitcoin/params/RegTestParams;

    move-result-object v4

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static sortOutputs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultCoinSelector$1;

    invoke-direct {v0}, Lcom/google/bitcoin/wallet/DefaultCoinSelector$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    return-void
.end method


# virtual methods
.method public select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;
    .locals 10
    .param p1, "biTarget"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;)",
            "Lcom/google/bitcoin/wallet/CoinSelection;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 21
    .local v4, "target":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 24
    .local v2, "selected":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/bitcoin/core/TransactionOutput;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .local v3, "sortedOutputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    sget-object v8, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 28
    invoke-static {v3}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;->sortOutputs(Ljava/util/ArrayList;)V

    .line 32
    :cond_0
    const-wide/16 v6, 0x0

    .line 33
    .local v6, "total":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 34
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    cmp-long v8, v6, v4

    if-ltz v8, :cond_3

    .line 42
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_2
    new-instance v8, Lcom/google/bitcoin/wallet/CoinSelection;

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/google/bitcoin/wallet/CoinSelection;-><init>(Ljava/math/BigInteger;Ljava/util/Collection;)V

    return-object v8

    .line 36
    .restart local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_3
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;->shouldSelect(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0
.end method

.method protected shouldSelect(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;->isSelectable(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v0

    return v0
.end method
