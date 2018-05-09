.class public Lcom/google/bitcoin/testing/MockTransactionBroadcaster;
.super Ljava/lang/Object;
.source "MockTransactionBroadcaster.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionBroadcaster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;
    }
.end annotation


# instance fields
.field private final broadcasts:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "mock tx broadcaster"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcasts:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Wallet;->setTransactionBroadcaster(Lcom/google/bitcoin/core/TransactionBroadcaster;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getPendingTransactions()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/bitcoin/testing/MockTransactionBroadcaster;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/testing/MockTransactionBroadcaster;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "x0"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method public broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 4
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 78
    .local v1, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v2, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcasts:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v3, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;

    invoke-direct {v3, p1, v1}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;-><init>(Lcom/google/bitcoin/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 79
    new-instance v2, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;-><init>(Lcom/google/bitcoin/testing/MockTransactionBroadcaster;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v2, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 94
    .end local v1    # "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcasts:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public waitForTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->waitForTxFuture()Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;

    move-result-object v0

    iget-object v0, v0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;->tx:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method public waitForTxFuture()Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcasts:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
