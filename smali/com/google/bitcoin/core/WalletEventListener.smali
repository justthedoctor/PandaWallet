.class public interface abstract Lcom/google/bitcoin/core/WalletEventListener;
.super Ljava/lang/Object;
.source "WalletEventListener.java"


# virtual methods
.method public abstract onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method public abstract onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method public abstract onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReorganize(Lcom/google/bitcoin/core/Wallet;)V
.end method

.method public abstract onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
.end method

.method public abstract onWalletChanged(Lcom/google/bitcoin/core/Wallet;)V
.end method
