.class public abstract Lcom/google/bitcoin/core/AbstractWalletEventListener;
.super Ljava/lang/Object;
.source "AbstractWalletEventListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/WalletEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 31
    return-void
.end method

.method public onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 36
    return-void
.end method

.method public onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
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

    .prologue
    .line 50
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 51
    return-void
.end method

.method public onReorganize(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 41
    return-void
.end method

.method public onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
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

    .prologue
    .line 55
    .local p2, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 56
    return-void
.end method

.method public onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 46
    return-void
.end method

.method public onWalletChanged(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;->onChange()V

    .line 61
    return-void
.end method
