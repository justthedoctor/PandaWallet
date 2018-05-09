.class public Lcom/google/bitcoin/core/MemoryPool;
.super Ljava/lang/Object;
.source "MemoryPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/MemoryPool$Entry;,
        Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x3e8

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private memoryPool:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/MemoryPool$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/bitcoin/core/MemoryPool;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/MemoryPool;-><init>(I)V

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "mempool"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    new-instance v0, Lcom/google/bitcoin/core/MemoryPool$1;

    invoke-direct {v0, p0, p1}, Lcom/google/bitcoin/core/MemoryPool$1;-><init>(Lcom/google/bitcoin/core/MemoryPool;I)V

    iput-object v0, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    .line 101
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/MemoryPool;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 102
    return-void
.end method

.method private cleanPool()V
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/google/bitcoin/core/Transaction;>;"
    if-eqz v1, :cond_0

    .line 124
    move-object v0, v1

    check-cast v0, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    move-object v2, v0

    .line 126
    .local v2, "txRef":Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/google/bitcoin/core/Transaction;>;"
    .end local v2    # "txRef":Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 131
    return-void
.end method

.method private markBroadcast(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "byPeer"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 278
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    .line 279
    .local v0, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/TransactionConfidence;->markBroadcastBy(Lcom/google/bitcoin/core/PeerAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/TransactionConfidence;->queueListeners(Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;
    .locals 4
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/MemoryPool$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v0, "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    if-nez v0, :cond_0

    .line 300
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 294
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 295
    :cond_1
    :try_start_2
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_3
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 297
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public intern(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;
    .locals 11
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 172
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/MemoryPool;->cleanPool()V

    .line 175
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/MemoryPool$Entry;

    .line 176
    .local v3, "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    if-eqz v3, :cond_4

    .line 178
    iget-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    if-eqz v7, :cond_2

    .line 180
    iget-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 183
    iget-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v5, "transaction":Lcom/google/bitcoin/core/Transaction;
    if-eqz v5, :cond_0

    .line 186
    move-object p1, v5

    .line 213
    :cond_0
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, p1

    .end local v5    # "transaction":Lcom/google/bitcoin/core/Transaction;
    .end local p1    # "tx":Lcom/google/bitcoin/core/Transaction;
    .local v6, "tx":Lcom/google/bitcoin/core/Transaction;
    :goto_1
    return-object v6

    .line 180
    .end local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local p1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    iget-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v7, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    iget-object v8, p0, Lcom/google/bitcoin/core/MemoryPool;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v7, p1, v8}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;-><init>(Lcom/google/bitcoin/core/Transaction;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    .line 193
    iget-object v1, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    .line 194
    .local v1, "addrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/PeerAddress;>;"
    const/4 v7, 0x0

    iput-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    .line 195
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    .line 196
    .local v2, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    sget-object v7, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    const-string v8, "Adding tx [{}] {} to the memory pool"

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 199
    .local v0, "a":Lcom/google/bitcoin/core/PeerAddress;
    invoke-direct {p0, v0, p1}, Lcom/google/bitcoin/core/MemoryPool;->markBroadcast(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 213
    .end local v0    # "a":Lcom/google/bitcoin/core/PeerAddress;
    .end local v1    # "addrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/PeerAddress;>;"
    .end local v2    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .end local v3    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .restart local v1    # "addrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/PeerAddress;>;"
    .restart local v2    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .restart local v3    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, p1

    .end local p1    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    goto :goto_1

    .line 206
    .end local v1    # "addrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/PeerAddress;>;"
    .end local v2    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local p1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    :try_start_2
    sget-object v7, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    const-string v8, "Provided with a downloaded transaction we didn\'t see announced yet: {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    new-instance v3, Lcom/google/bitcoin/core/MemoryPool$Entry;

    .end local v3    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/google/bitcoin/core/MemoryPool$Entry;-><init>(Lcom/google/bitcoin/core/MemoryPool$1;)V

    .line 208
    .restart local v3    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    new-instance v7, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    iget-object v8, p0, Lcom/google/bitcoin/core/MemoryPool;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v7, p1, v8}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;-><init>(Lcom/google/bitcoin/core/Transaction;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v7, v3, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    .line 209
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    iget-object v7, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, p1

    .end local p1    # "tx":Lcom/google/bitcoin/core/Transaction;
    .restart local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    goto :goto_1
.end method

.method public maybeWasSeen(Lcom/google/bitcoin/core/Sha256Hash;)Z
    .locals 3
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/MemoryPool$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .local v0, "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 315
    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 313
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 315
    .end local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public numBroadcastPeers(Lcom/google/bitcoin/core/Sha256Hash;)I
    .locals 4
    .param p1, "txHash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/MemoryPool;->cleanPool()V

    .line 140
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/MemoryPool$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .local v0, "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    if-nez v0, :cond_0

    .line 162
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 144
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    if-nez v3, :cond_1

    .line 146
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 162
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 149
    :cond_1
    :try_start_2
    iget-object v3, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 150
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    if-nez v1, :cond_2

    .line 154
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 157
    :cond_2
    :try_start_3
    iget-object v3, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 158
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 162
    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public seen(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/core/Transaction;
    .locals 3
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "byPeer"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/MemoryPool;->intern(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    .line 227
    .local v0, "interned":Lcom/google/bitcoin/core/Transaction;
    invoke-direct {p0, p2, v0}, Lcom/google/bitcoin/core/MemoryPool;->markBroadcast(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "interned":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public seen(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 7
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "byPeer"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    iget-object v4, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/MemoryPool;->cleanPool()V

    .line 242
    iget-object v4, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/MemoryPool$Entry;

    .line 243
    .local v0, "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    if-eqz v0, :cond_3

    .line 245
    iget-object v4, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    if-eqz v4, :cond_2

    .line 246
    iget-object v4, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 247
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 248
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz v1, :cond_0

    .line 249
    invoke-direct {p0, p2, v1}, Lcom/google/bitcoin/core/MemoryPool;->markBroadcast(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/Transaction;)V

    .line 250
    sget-object v2, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Peer announced transaction we have seen before [{}] {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    return-void

    :cond_1
    move v2, v3

    .line 246
    goto :goto_0

    .line 257
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v2, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Peer announced transaction we have seen announced before [{}] {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    .end local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/MemoryPool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 264
    .restart local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/bitcoin/core/MemoryPool$Entry;

    .end local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/MemoryPool$Entry;-><init>(Lcom/google/bitcoin/core/MemoryPool$1;)V

    .line 266
    .restart local v0    # "entry":Lcom/google/bitcoin/core/MemoryPool$Entry;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    .line 267
    iget-object v2, v0, Lcom/google/bitcoin/core/MemoryPool$Entry;->addresses:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v2, p0, Lcom/google/bitcoin/core/MemoryPool;->memoryPool:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v2, Lcom/google/bitcoin/core/MemoryPool;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Peer announced new transaction [1] {}"

    invoke-interface {v2, v3, p2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
