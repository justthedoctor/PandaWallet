.class public Lcom/google/bitcoin/core/TransactionConfidence;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/TransactionConfidence$3;,
        Lcom/google/bitcoin/core/TransactionConfidence$Listener;,
        Lcom/google/bitcoin/core/TransactionConfidence$Source;,
        Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3f880a1d1e49439cL


# instance fields
.field private appearedAtChainHeight:I

.field private broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field private depth:I

.field private transient listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/utils/ListenerRegistration",
            "<",
            "Lcom/google/bitcoin/core/TransactionConfidence$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private overridingTransaction:Lcom/google/bitcoin/core/Transaction;

.field private source:Lcom/google/bitcoin/core/TransactionConfidence$Source;

.field private final transaction:Lcom/google/bitcoin/core/Transaction;

.field private workDone:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;

    .line 117
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 135
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->source:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    .line 139
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->transaction:Lcom/google/bitcoin/core/Transaction;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/core/TransactionConfidence;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionConfidence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->transaction:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    .prologue
    .line 205
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;Ljava/util/concurrent/Executor;)V

    .line 206
    return-void
.end method

.method public addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {v1, p1, p2}, Lcom/google/bitcoin/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public declared-synchronized duplicate()Lcom/google/bitcoin/core/TransactionConfidence;
    .locals 3

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->transaction:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/TransactionConfidence;-><init>(Lcom/google/bitcoin/core/Transaction;)V

    .line 407
    .local v0, "c":Lcom/google/bitcoin/core/TransactionConfidence;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    iget-object v1, v0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    iput-object v1, v0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 410
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->overridingTransaction:Lcom/google/bitcoin/core/Transaction;

    iput-object v1, v0, Lcom/google/bitcoin/core/TransactionConfidence;->overridingTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 411
    iget v1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I

    iput v1, v0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 412
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 413
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    .end local v0    # "c":Lcom/google/bitcoin/core/TransactionConfidence;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppearedAtChainHeight()I
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confidence type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not BUILDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public getBroadcastBy()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDepthFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "depth"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 460
    .local v0, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->transaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/TransactionConfidence$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/bitcoin/core/TransactionConfidence$2;-><init>(Lcom/google/bitcoin/core/TransactionConfidence;ILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, v1, p2}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-object v0

    .line 459
    .end local v0    # "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDepthInBlocks()I
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOverridingTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 3

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confidence type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not OVERRIDDEN_BY_DOUBLE_SPEND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->overridingTransaction:Lcom/google/bitcoin/core/Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->source:Lcom/google/bitcoin/core/TransactionConfidence$Source;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorkDone()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markBroadcastBy(Lcom/google/bitcoin/core/PeerAddress;)Z
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 275
    :goto_0
    monitor-exit p0

    return v0

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_1

    .line 273
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyWorkDone(Lcom/google/bitcoin/core/Block;)Z
    .locals 2
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 338
    :goto_0
    monitor-exit p0

    return v0

    .line 336
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I

    .line 337
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numBroadcastPeers()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public queueListeners(Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 4
    .param p1, "reason"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .prologue
    .line 423
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 424
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/TransactionConfidence$Listener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/TransactionConfidence$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/bitcoin/core/TransactionConfidence$1;-><init>(Lcom/google/bitcoin/core/TransactionConfidence;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 431
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/TransactionConfidence$Listener;>;"
    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lcom/google/bitcoin/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setAppearedAtChainHeight(I)V
    .locals 2
    .param p1, "appearedAtChainHeight"    # I

    .prologue
    .line 228
    monitor-enter p0

    if-gez p1, :cond_0

    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appearedAtChainHeight out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I

    .line 232
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V
    .locals 1
    .param p1, "confidenceType"    # Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 250
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq p1, v0, :cond_2

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->overridingTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 253
    :cond_2
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne p1, v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 256
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDepthInBlocks(I)V
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->depth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOverridingTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "overridingTransaction"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->overridingTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 400
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V
    .locals 1
    .param p1, "source"    # Lcom/google/bitcoin/core/TransactionConfidence$Source;

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->source:Lcom/google/bitcoin/core/TransactionConfidence$Source;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkDone(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "workDone"    # Ljava/math/BigInteger;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence;->workDone:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 299
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v1

    .line 301
    .local v1, "peers":I
    if-lez v1, :cond_0

    .line 302
    const-string v2, "Seen by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    if-le v1, v3, :cond_1

    .line 305
    const-string v2, " peers. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    :goto_0
    sget-object v2, Lcom/google/bitcoin/core/TransactionConfidence$3;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$ConfidenceType:[I

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 324
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 307
    :cond_1
    :try_start_1
    const-string v2, " peer. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "peers":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 311
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "peers":I
    :pswitch_0
    :try_start_2
    const-string v2, "Unknown confidence level."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 314
    :pswitch_1
    const-string v2, "Dead: overridden by double spend and will not confirm."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :pswitch_2
    const-string v2, "Pending/unconfirmed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :pswitch_3
    const-string v2, "Appeared in best chain at height %d, depth %d, work done %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionConfidence;->getWorkDone()Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public wasBroadcastBy(Lcom/google/bitcoin/core/PeerAddress;)Z
    .locals 1
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
