.class final Lcom/google/bitcoin/wallet/DefaultCoinSelector$1;
.super Ljava/lang/Object;
.source "DefaultCoinSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/wallet/DefaultCoinSelector;->sortOutputs(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/bitcoin/core/TransactionOutput;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/TransactionOutput;Lcom/google/bitcoin/core/TransactionOutput;)I
    .locals 14
    .param p1, "a"    # Lcom/google/bitcoin/core/TransactionOutput;
    .param p2, "b"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 48
    const/4 v10, 0x0

    .line 49
    .local v10, "depth1":I
    const/4 v11, 0x0

    .line 50
    .local v11, "depth2":I
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v8

    .line 51
    .local v8, "conf1":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v9

    .line 52
    .local v9, "conf2":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v12

    sget-object v13, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v12, v13, :cond_0

    .line 53
    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v10

    .line 54
    :cond_0
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v12

    sget-object v13, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v12, v13, :cond_1

    .line 55
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v11

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    .local v2, "aValue":Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 58
    .local v5, "bValue":Ljava/math/BigInteger;
    int-to-long v12, v10

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    .local v0, "aCoinDepth":Ljava/math/BigInteger;
    int-to-long v12, v11

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 60
    .local v3, "bCoinDepth":Ljava/math/BigInteger;
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    .line 61
    .local v6, "c1":I
    if-eqz v6, :cond_2

    .line 68
    .end local v6    # "c1":I
    :goto_0
    return v6

    .line 63
    .restart local v6    # "c1":I
    :cond_2
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    .line 64
    .local v7, "c2":I
    if-eqz v7, :cond_3

    move v6, v7

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 67
    .local v1, "aHash":Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 68
    .local v4, "bHash":Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/google/bitcoin/core/TransactionOutput;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/TransactionOutput;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/wallet/DefaultCoinSelector$1;->compare(Lcom/google/bitcoin/core/TransactionOutput;Lcom/google/bitcoin/core/TransactionOutput;)I

    move-result v0

    return v0
.end method
