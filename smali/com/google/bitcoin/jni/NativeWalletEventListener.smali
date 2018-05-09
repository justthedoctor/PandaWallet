.class public Lcom/google/bitcoin/jni/NativeWalletEventListener;
.super Ljava/lang/Object;
.source "NativeWalletEventListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/WalletEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method public native onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method public native onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
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

.method public native onReorganize(Lcom/google/bitcoin/core/Wallet;)V
.end method

.method public native onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
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

.method public native onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
.end method

.method public native onWalletChanged(Lcom/google/bitcoin/core/Wallet;)V
.end method
