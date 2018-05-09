.class public interface abstract Lcom/google/bitcoin/wallet/CoinSelector;
.super Ljava/lang/Object;
.source "CoinSelector.java"


# virtual methods
.method public abstract select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;
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
.end method
