.class public Lcom/google/bitcoin/core/Peer;
.super Lcom/google/bitcoin/core/PeerSocketHandler;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/Peer$10;,
        Lcom/google/bitcoin/core/Peer$PendingPing;,
        Lcom/google/bitcoin/core/Peer$GetDataRequest;,
        Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;
    }
.end annotation


# static fields
.field private static final PING_MOVING_AVERAGE_WINDOW:I = 0x14

.field private static final RESEND_BLOOM_FILTER_BLOCK_COUNT:I = 0x61a8

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

.field private final blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

.field private downloadBlockBodies:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final downloadTxDependencies:Z

.field private final eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private fastCatchupTimeSecs:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private filteredBlocksReceived:I

.field private final getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Peer$GetDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private isAcked:Z

.field private lastGetBlocksBegin:Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private lastGetBlocksEnd:Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private lastPingTimes:[J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lastPingTimesLock"
    .end annotation
.end field

.field private final lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final memoryPool:Lcom/google/bitcoin/core/MemoryPool;

.field private final params:Lcom/google/bitcoin/core/NetworkParameters;

.field private final pendingBlockDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Peer$PendingPing;",
            ">;"
        }
    .end annotation
.end field

.field private useFilteredBlocks:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private volatile vBloomFilter:Lcom/google/bitcoin/core/BloomFilter;

.field private volatile vDownloadData:Z

.field private volatile vMinProtocolVersion:I

.field private volatile vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

.field private final versionMessage:Lcom/google/bitcoin/core/VersionMessage;

.field private final wallets:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Wallet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/google/bitcoin/core/Peer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/PeerAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "blockChain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
    .param p3, "peerAddress"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p4, "thisSoftwareName"    # Ljava/lang/String;
    .param p5, "thisSoftwareVersion"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Lcom/google/bitcoin/core/VersionMessage;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/bitcoin/core/Peer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/PeerAddress;)V

    .line 238
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, v1}, Lcom/google/bitcoin/core/VersionMessage;->appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 6
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "ver"    # Lcom/google/bitcoin/core/VersionMessage;
    .param p3, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteAddress"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 169
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/Peer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/MemoryPool;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/MemoryPool;)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "ver"    # Lcom/google/bitcoin/core/VersionMessage;
    .param p3, "remoteAddress"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p4, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mempool"    # Lcom/google/bitcoin/core/MemoryPool;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Peer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/MemoryPool;Z)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/MemoryPool;Z)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "ver"    # Lcom/google/bitcoin/core/VersionMessage;
    .param p3, "remoteAddress"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p4, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mempool"    # Lcom/google/bitcoin/core/MemoryPool;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "downloadTxDependencies"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1, p3}, Lcom/google/bitcoin/core/PeerSocketHandler;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerAddress;)V

    .line 57
    const-string v0, "peer"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    .line 102
    iput-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->useFilteredBlocks:Z

    .line 106
    iput-object v3, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    .line 122
    const v0, 0xea61

    iput v0, p0, Lcom/google/bitcoin/core/Peer;->vMinProtocolVersion:I

    .line 136
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 137
    iput-object v3, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    .line 145
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 209
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/VersionMessage;

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    .line 210
    iput-boolean p6, p0, Lcom/google/bitcoin/core/Peer;->downloadTxDependencies:Z

    .line 211
    iput-object p4, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    .line 212
    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    .line 213
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 214
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Peer;->fastCatchupTimeSecs:J

    .line 216
    iput-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->isAcked:Z

    .line 217
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 218
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 219
    iput-object p5, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    .line 220
    return-void

    :cond_0
    move v0, v2

    .line 212
    goto :goto_0
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Peer;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/Peer;->downloadDependenciesInternal(Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/bitcoin/core/Peer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Peer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/bitcoin/core/Peer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Peer;
    .param p1, "x1"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/Peer;->addPingTimeData(J)V

    return-void
.end method

.method private addPingTimeData(J)V
    .locals 5
    .param p1, "sample"    # J

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    if-nez v0, :cond_0

    .line 1332
    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    .line 1334
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :goto_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1344
    return-void

    .line 1337
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 13
    .param p1, "toHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1192
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    const/16 v8, 0x33

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    .local v0, "blockLocator":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBlockStore()Lcom/google/bitcoin/store/BlockStore;

    move-result-object v7

    .line 1236
    .local v7, "store":Lcom/google/bitcoin/store/BlockStore;
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v1

    .line 1237
    .local v1, "chainHead":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    .line 1239
    .local v2, "chainHeadHash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lastGetBlocksBegin:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {v8, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lastGetBlocksEnd:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {v8, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1240
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "blockChainDownloadLocked({}): ignoring duplicated request"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1273
    :goto_0
    return-void

    .line 1243
    :cond_0
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "{}: blockChainDownloadLocked({}) current head = {}"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    move-object v3, v1

    .line 1246
    .local v3, "cursor":Lcom/google/bitcoin/core/StoredBlock;
    const/16 v5, 0x64

    .local v5, "i":I
    :goto_1
    if-eqz v3, :cond_1

    if-lez v5, :cond_1

    .line 1247
    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :try_start_0
    invoke-virtual {v3, v7}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1246
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1250
    :catch_0
    move-exception v4

    .line 1251
    .local v4, "e":Lcom/google/bitcoin/store/BlockStoreException;
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "Failed to walk the block chain whilst constructing a locator"

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1252
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1256
    .end local v4    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :cond_1
    if-eqz v3, :cond_2

    .line 1257
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_2
    iput-object v2, p0, Lcom/google/bitcoin/core/Peer;->lastGetBlocksBegin:Lcom/google/bitcoin/core/Sha256Hash;

    .line 1263
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer;->lastGetBlocksEnd:Lcom/google/bitcoin/core/Sha256Hash;

    .line 1265
    iget-boolean v8, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    if-eqz v8, :cond_3

    .line 1266
    new-instance v6, Lcom/google/bitcoin/core/GetBlocksMessage;

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v6, v8, v0, p1}, Lcom/google/bitcoin/core/GetBlocksMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1267
    .local v6, "message":Lcom/google/bitcoin/core/GetBlocksMessage;
    invoke-virtual {p0, v6}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    goto :goto_0

    .line 1270
    .end local v6    # "message":Lcom/google/bitcoin/core/GetBlocksMessage;
    :cond_3
    new-instance v6, Lcom/google/bitcoin/core/GetHeadersMessage;

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v6, v8, v0, p1}, Lcom/google/bitcoin/core/GetHeadersMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1271
    .local v6, "message":Lcom/google/bitcoin/core/GetHeadersMessage;
    invoke-virtual {p0, v6}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    goto :goto_0
.end method

.method private downloadDependenciesInternal(Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 22
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "marker"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    const-string v4, "Must have a configured MemoryPool object to download dependencies."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v8

    .line 708
    .local v8, "resultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    .line 716
    .local v5, "rootTxHash":Lcom/google/bitcoin/core/Sha256Hash;
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 717
    .local v10, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v17, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 718
    .local v17, "needToRequest":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Sha256Hash;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/TransactionInput;

    .line 720
    .local v16, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v14

    .line 721
    .local v14, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    invoke-virtual {v3, v14}, Lcom/google/bitcoin/core/MemoryPool;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v9

    .line 722
    .local v9, "dep":Lcom/google/bitcoin/core/Transaction;
    if-nez v9, :cond_0

    .line 723
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    .end local v9    # "dep":Lcom/google/bitcoin/core/Transaction;
    .end local v14    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v16    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_1
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 733
    .local v12, "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;>;"
    new-instance v13, Lcom/google/bitcoin/core/GetDataMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v13, v3}, Lcom/google/bitcoin/core/GetDataMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 734
    .local v13, "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v3, v6

    double-to-long v0, v3

    move-wide/from16 v18, v0

    .line 735
    .local v18, "nonce":J
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 736
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "{}: Requesting {} transactions for dep resolution"

    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 737
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/bitcoin/core/Sha256Hash;

    .line 738
    .restart local v14    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v13, v14}, Lcom/google/bitcoin/core/GetDataMessage;->addTransaction(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 739
    new-instance v20, Lcom/google/bitcoin/core/Peer$GetDataRequest;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/google/bitcoin/core/Peer$GetDataRequest;-><init>(Lcom/google/bitcoin/core/Peer$1;)V

    .line 740
    .local v20, "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    move-object/from16 v0, v20

    iput-object v14, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 741
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Peer;->isNotFoundMessageSupported()Z

    move-result v3

    if-nez v3, :cond_3

    .line 743
    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/bitcoin/core/Peer$GetDataRequest;->nonce:J

    .line 745
    :cond_3
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 807
    .end local v12    # "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;>;"
    .end local v13    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .end local v14    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v18    # "nonce":J
    .end local v20    # "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    :catch_0
    move-exception v11

    .line 808
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "{}: Couldn\'t send getdata in downloadDependencies({})"

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v3, v4, v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 809
    invoke-virtual {v8, v11}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 814
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 749
    .restart local v12    # "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;>;"
    .restart local v13    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .restart local v18    # "nonce":J
    :cond_4
    :try_start_2
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/Transaction;

    .line 750
    .restart local v9    # "dep":Lcom/google/bitcoin/core/Transaction;
    invoke-static {v9}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 812
    .end local v9    # "dep":Lcom/google/bitcoin/core/Transaction;
    .end local v12    # "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;>;"
    .end local v13    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .end local v18    # "nonce":J
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 752
    .restart local v12    # "futures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;>;"
    .restart local v13    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .restart local v18    # "nonce":J
    :cond_5
    :try_start_3
    invoke-static {v12}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v21

    .line 753
    .local v21, "successful":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;>;"
    new-instance v3, Lcom/google/bitcoin/core/Peer$6;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/bitcoin/core/Peer$6;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 788
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Peer;->isNotFoundMessageSupported()Z

    move-result v3

    if-nez v3, :cond_6

    .line 793
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "{}: Dep resolution waiting for a pong with nonce {}"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v3, v4, v0, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 794
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Peer;->ping(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/bitcoin/core/Peer$7;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/google/bitcoin/core/Peer$7;-><init>(Lcom/google/bitcoin/core/Peer;J)V

    sget-object v6, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v4, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 812
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2
.end method

.method private endFilteredBlock(Lcom/google/bitcoin/core/FilteredBlock;)V
    .locals 6
    .param p1, "m"    # Lcom/google/bitcoin/core/FilteredBlock;

    .prologue
    .line 880
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Received broadcast filtered block {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    :cond_0
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    if-nez v2, :cond_1

    .line 884
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Received block we did not ask for: {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 947
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v2, :cond_2

    .line 888
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "Received filtered block but was not configured with an AbstractBlockChain"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getBlockHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 911
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/FilteredBlock;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 913
    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getBlockHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/Peer;->invokeOnBlocksDownloaded(Lcom/google/bitcoin/core/Block;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: FilteredBlock verification failed"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 930
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 932
    :try_start_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/FilteredBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/AbstractBlockChain;->getOrphanRoot(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Block;

    .line 933
    .local v1, "orphanRoot":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    :try_start_3
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 941
    .end local v1    # "orphanRoot":Lcom/google/bitcoin/core/Block;
    :catch_1
    move-exception v0

    .line 945
    .local v0, "e":Lcom/google/bitcoin/core/PrunedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 935
    .end local v0    # "e":Lcom/google/bitcoin/core/PrunedException;
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method private invokeOnBlocksDownloaded(Lcom/google/bitcoin/core/Block;)V
    .locals 7
    .param p1, "m"    # Lcom/google/bitcoin/core/Block;

    .prologue
    .line 967
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v5, v3, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    long-to-int v5, v5

    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v3

    sub-int v3, v5, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 968
    .local v0, "blocksLeft":I
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 969
    .local v2, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v3, v2, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/bitcoin/core/Peer$8;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/google/bitcoin/core/Peer$8;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Block;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 976
    .end local v2    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_0
    return-void
.end method

.method private isNotFoundMessageSupported()Z
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget v0, v0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    sget v1, Lcom/google/bitcoin/core/NotFoundMessage;->MIN_PROTOCOL_VERSION:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeHandleRequestedData(Lcom/google/bitcoin/core/Message;)Z
    .locals 5
    .param p1, "m"    # Lcom/google/bitcoin/core/Message;

    .prologue
    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, "found":Z
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Message;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 952
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;

    .line 953
    .local v3, "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    iget-object v4, v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1, v4}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    iget-object v4, v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 955
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 956
    const/4 v0, 0x1

    goto :goto_0

    .line 960
    .end local v3    # "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    :cond_1
    return v0
.end method

.method private processAlert(Lcom/google/bitcoin/core/AlertMessage;)V
    .locals 5
    .param p1, "m"    # Lcom/google/bitcoin/core/AlertMessage;

    .prologue
    .line 471
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/AlertMessage;->isSignatureValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    sget-object v1, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Received alert from peer {}: {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v1, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Received alert with invalid signature from peer {}: {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 480
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to check signature: bug in platform libraries?"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processBlock(Lcom/google/bitcoin/core/Block;)V
    .locals 6
    .param p1, "m"    # Lcom/google/bitcoin/core/Block;

    .prologue
    .line 818
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Received broadcast block {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->maybeHandleRequestedData(Lcom/google/bitcoin/core/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v2, :cond_2

    .line 824
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "Received block but was not configured with an AbstractBlockChain"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :cond_2
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    if-nez v2, :cond_3

    .line 829
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Received block we did not ask for: {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 832
    :cond_3
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 835
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/Block;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 837
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->invokeOnBlocksDownloaded(Lcom/google/bitcoin/core/Block;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "{}: Block verification failed"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 859
    :try_start_2
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    if-eqz v2, :cond_5

    .line 860
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/AbstractBlockChain;->getOrphanRoot(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Block;

    .line 861
    .local v1, "orphanRoot":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 866
    .end local v1    # "orphanRoot":Lcom/google/bitcoin/core/Block;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 872
    :catch_1
    move-exception v0

    .line 874
    .local v0, "e":Lcom/google/bitcoin/core/PrunedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 863
    .end local v0    # "e":Lcom/google/bitcoin/core/PrunedException;
    :cond_5
    :try_start_4
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "Did not start chain download on solved block due to in-flight header download."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 866
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_5
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private processGetData(Lcom/google/bitcoin/core/GetDataMessage;)V
    .locals 9
    .param p1, "getdata"    # Lcom/google/bitcoin/core/GetDataMessage;

    .prologue
    .line 565
    sget-object v5, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "{}: Received getdata message: {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Message;>;"
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 568
    .local v4, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v5, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v6, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v5, v6, :cond_0

    .line 569
    iget-object v5, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v5, Lcom/google/bitcoin/core/PeerEventListener;

    invoke-interface {v5, p0, p1}, Lcom/google/bitcoin/core/PeerEventListener;->getData(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;

    move-result-object v3

    .line 570
    .local v3, "listenerItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Message;>;"
    if-eqz v3, :cond_0

    .line 571
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 573
    .end local v3    # "listenerItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Message;>;"
    .end local v4    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 580
    :cond_2
    return-void

    .line 576
    :cond_3
    sget-object v5, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "{}: Sending {} items gathered from listeners to peer"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Message;

    .line 578
    .local v1, "item":Lcom/google/bitcoin/core/Message;
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    goto :goto_1
.end method

.method private processHeaders(Lcom/google/bitcoin/core/HeadersMessage;)V
    .locals 14
    .param p1, "m"    # Lcom/google/bitcoin/core/HeadersMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 494
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 496
    :try_start_0
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v10, :cond_1

    .line 498
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "Received headers when Peer is not configured with a chain."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/google/bitcoin/core/Peer;->fastCatchupTimeSecs:J

    .line 502
    .local v2, "fastCatchupTimeSecs":J
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    .local v0, "downloadBlockBodies":Z
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    if-nez v0, :cond_2

    move v10, v8

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 509
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/bitcoin/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_8

    .line 510
    invoke-virtual {p1}, Lcom/google/bitcoin/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Block;

    .line 514
    .local v4, "header":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-ltz v10, :cond_3

    move v6, v8

    .line 515
    .local v6, "passedTime":Z
    :goto_3
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v12, v12, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    move v7, v8

    .line 516
    .local v7, "reachedTop":Z
    :goto_4
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 517
    iget-boolean v10, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    if-nez v10, :cond_5

    .line 519
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "Lost download peer status, throwing away downloaded headers."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 556
    .end local v4    # "header":Lcom/google/bitcoin/core/Block;
    .end local v5    # "i":I
    .end local v6    # "passedTime":Z
    .end local v7    # "reachedTop":Z
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Lcom/google/bitcoin/core/VerificationException;
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "Block header verification failed"

    invoke-interface {v8, v9, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 504
    .end local v0    # "downloadBlockBodies":Z
    .end local v1    # "e":Lcom/google/bitcoin/core/VerificationException;
    .end local v2    # "fastCatchupTimeSecs":J
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .restart local v0    # "downloadBlockBodies":Z
    .restart local v2    # "fastCatchupTimeSecs":J
    :cond_2
    move v10, v9

    .line 508
    goto :goto_1

    .restart local v4    # "header":Lcom/google/bitcoin/core/Block;
    .restart local v5    # "i":I
    :cond_3
    move v6, v9

    .line 514
    goto :goto_3

    .restart local v6    # "passedTime":Z
    :cond_4
    move v7, v9

    .line 515
    goto :goto_4

    .line 522
    .restart local v7    # "reachedTop":Z
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v10, v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->add(Lcom/google/bitcoin/core/Block;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 524
    invoke-direct {p0, v4}, Lcom/google/bitcoin/core/Peer;->invokeOnBlocksDownloaded(Lcom/google/bitcoin/core/Block;)V

    .line 509
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 529
    :cond_6
    new-instance v8, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got unconnected header from peer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 558
    .end local v4    # "header":Lcom/google/bitcoin/core/Block;
    .end local v5    # "i":I
    .end local v6    # "passedTime":Z
    .end local v7    # "reachedTop":Z
    :catch_1
    move-exception v1

    .line 560
    .local v1, "e":Lcom/google/bitcoin/core/PrunedException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 532
    .end local v1    # "e":Lcom/google/bitcoin/core/PrunedException;
    .restart local v4    # "header":Lcom/google/bitcoin/core/Block;
    .restart local v5    # "i":I
    .restart local v6    # "passedTime":Z
    .restart local v7    # "reachedTop":Z
    :cond_7
    :try_start_4
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 534
    :try_start_5
    sget-object v8, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v9, "Passed the fast catchup time, discarding {} headers and requesting full blocks"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    .line 538
    sget-object v8, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    iput-object v8, p0, Lcom/google/bitcoin/core/Peer;->lastGetBlocksBegin:Lcom/google/bitcoin/core/Sha256Hash;

    .line 539
    sget-object v8, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {p0, v8}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 541
    :try_start_6
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 548
    .end local v4    # "header":Lcom/google/bitcoin/core/Block;
    .end local v6    # "passedTime":Z
    .end local v7    # "reachedTop":Z
    :cond_8
    invoke-virtual {p1}, Lcom/google/bitcoin/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x7d0

    if-lt v8, v9, :cond_0

    .line 549
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_6
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 551
    :try_start_7
    sget-object v8, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {p0, v8}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 553
    :try_start_8
    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
    :try_end_8
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/bitcoin/core/PrunedException; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method private processInv(Lcom/google/bitcoin/core/InventoryMessage;)V
    .locals 15
    .param p1, "inv"    # Lcom/google/bitcoin/core/InventoryMessage;

    .prologue
    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/InventoryMessage;->getItems()Ljava/util/List;

    move-result-object v6

    .line 982
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/InventoryItem;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 983
    .local v9, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/InventoryItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 985
    .local v0, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/InventoryItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/InventoryItem;

    .line 986
    .local v5, "item":Lcom/google/bitcoin/core/InventoryItem;
    sget-object v10, Lcom/google/bitcoin/core/Peer$10;->$SwitchMap$com$google$bitcoin$core$InventoryItem$Type:[I

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v11}, Lcom/google/bitcoin/core/InventoryItem$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 994
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not implemented: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 988
    :pswitch_0
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    :pswitch_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 998
    .end local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_0
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    .line 1000
    .local v1, "downloadData":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 1005
    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v10, :cond_3

    .line 1006
    iget-object v11, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/InventoryItem;

    iget-object v10, v10, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v11, v10}, Lcom/google/bitcoin/core/AbstractBlockChain;->isOrphan(Lcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1007
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1014
    :cond_1
    :goto_1
    new-instance v2, Lcom/google/bitcoin/core/GetDataMessage;

    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v10}, Lcom/google/bitcoin/core/GetDataMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1016
    .local v2, "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1017
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1018
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/InventoryItem;

    .line 1019
    .restart local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    if-nez v10, :cond_4

    .line 1020
    if-eqz v1, :cond_2

    .line 1022
    invoke-virtual {v2, v5}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    goto :goto_2

    .line 1010
    .end local v2    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    .end local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_3
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 1031
    .restart local v2    # "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    .restart local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_4
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/MemoryPool;->maybeWasSeen(Lcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1033
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1039
    :goto_3
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/MemoryPool;->seen(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/PeerAddress;)V

    goto :goto_2

    .line 1035
    :cond_5
    sget-object v10, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v11, "{}: getdata on tx {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v12

    iget-object v13, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v10, v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1036
    invoke-virtual {v2, v5}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    goto :goto_3

    .line 1045
    .end local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_6
    const/4 v8, 0x0

    .line 1047
    .local v8, "pingAfterGetData":Z
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1049
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    if-eqz v1, :cond_a

    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v10, :cond_a

    .line 1053
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/InventoryItem;

    .line 1054
    .restart local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/AbstractBlockChain;->isOrphan(Lcom/google/bitcoin/core/Sha256Hash;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    if-eqz v10, :cond_8

    .line 1057
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/AbstractBlockChain;->getOrphanRoot(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Block;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/Block;

    .line 1058
    .local v7, "orphanRoot":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1090
    .end local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .end local v7    # "orphanRoot":Lcom/google/bitcoin/core/Block;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10

    .line 1072
    .restart local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_8
    :try_start_1
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1073
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/VersionMessage;->isBloomFilteringSupported()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/google/bitcoin/core/Peer;->useFilteredBlocks:Z

    if-eqz v10, :cond_9

    .line 1074
    new-instance v10, Lcom/google/bitcoin/core/InventoryItem;

    sget-object v11, Lcom/google/bitcoin/core/InventoryItem$Type;->FilteredBlock:Lcom/google/bitcoin/core/InventoryItem$Type;

    iget-object v12, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {v10, v11, v12}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    invoke-virtual {v2, v10}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    .line 1075
    const/4 v8, 0x1

    .line 1079
    :goto_5
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    iget-object v11, v5, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1077
    :cond_9
    invoke-virtual {v2, v5}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1090
    .end local v5    # "item":Lcom/google/bitcoin/core/InventoryItem;
    :cond_a
    iget-object v10, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1093
    invoke-virtual {v2}, Lcom/google/bitcoin/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1095
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1098
    :cond_b
    if-eqz v8, :cond_c

    .line 1099
    new-instance v10, Lcom/google/bitcoin/core/Ping;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v11, v13

    double-to-long v11, v11

    invoke-direct {v10, v11, v12}, Lcom/google/bitcoin/core/Ping;-><init>(J)V

    invoke-virtual {p0, v10}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1100
    :cond_c
    return-void

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processNotFoundMessage(Lcom/google/bitcoin/core/NotFoundMessage;)V
    .locals 7
    .param p1, "m"    # Lcom/google/bitcoin/core/NotFoundMessage;

    .prologue
    .line 457
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;

    .line 458
    .local v3, "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NotFoundMessage;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/InventoryItem;

    .line 459
    .local v2, "item":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v4, v2, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v5, v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    sget-object v4, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v5, "{}: Bottomed out dep tree at {}"

    iget-object v6, v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v4, v5, p0, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    iget-object v4, v3, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 462
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .end local v3    # "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    :cond_2
    return-void
.end method

.method private processPong(Lcom/google/bitcoin/core/Pong;)V
    .locals 6
    .param p1, "m"    # Lcom/google/bitcoin/core/Pong;

    .prologue
    .line 1402
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer$PendingPing;

    .line 1403
    .local v1, "ping":Lcom/google/bitcoin/core/Peer$PendingPing;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Pong;->getNonce()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/bitcoin/core/Peer$PendingPing;->nonce:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1406
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Peer$PendingPing;->complete()V

    .line 1410
    .end local v1    # "ping":Lcom/google/bitcoin/core/Peer$PendingPing;
    :cond_1
    return-void
.end method

.method private processTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 9
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 586
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 588
    :try_start_0
    sget-object v5, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "{}: Received tx {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    if-eqz v5, :cond_0

    .line 591
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/google/bitcoin/core/MemoryPool;->seen(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/core/Transaction;

    move-result-object p1

    .line 593
    :cond_0
    move-object v1, p1

    .line 596
    .local v1, "fTx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v5

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 597
    invoke-direct {p0, v1}, Lcom/google/bitcoin/core/Peer;->maybeHandleRequestedData(Lcom/google/bitcoin/core/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 651
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    if-eqz v5, :cond_4

    .line 601
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    invoke-virtual {v5, p1}, Lcom/google/bitcoin/core/FilteredBlock;->provideTransaction(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 603
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    invoke-direct {p0, v5}, Lcom/google/bitcoin/core/Peer;->endFilteredBlock(Lcom/google/bitcoin/core/FilteredBlock;)V

    .line 604
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    :cond_3
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 611
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Wallet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    .local v4, "wallet":Lcom/google/bitcoin/core/Wallet;
    :try_start_3
    invoke-virtual {v4, v1}, Lcom/google/bitcoin/core/Wallet;->isPendingTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 623
    iget-boolean v5, p0, Lcom/google/bitcoin/core/Peer;->downloadTxDependencies:Z

    if-eqz v5, :cond_5

    .line 624
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Peer;->downloadDependencies(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    new-instance v6, Lcom/google/bitcoin/core/Peer$3;

    invoke-direct {v6, p0, v4, v1}, Lcom/google/bitcoin/core/Peer$3;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V

    invoke-static {v5, v6}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_4
    sget-object v5, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "Wallet failed to verify tx"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 651
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    .end local v1    # "fTx":Lcom/google/bitcoin/core/Transaction;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .restart local v1    # "fTx":Lcom/google/bitcoin/core/Transaction;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 655
    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 656
    .local v3, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v5, v3, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/bitcoin/core/Peer$4;

    invoke-direct {v6, p0, v3, v1}, Lcom/google/bitcoin/core/Peer$4;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private processVersionMessage(Lcom/google/bitcoin/core/VersionMessage;)V
    .locals 13
    .param p1, "m"    # Lcom/google/bitcoin/core/VersionMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 405
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    if-eqz v4, :cond_0

    .line 406
    new-instance v4, Lcom/google/bitcoin/core/ProtocolException;

    const-string v5, "Got two version messages from peer"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    .line 409
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget v3, v4, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    .line 410
    .local v3, "peerVersion":I
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v0

    .line 411
    .local v0, "peerAddress":Lcom/google/bitcoin/core/PeerAddress;
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v4, v4, Lcom/google/bitcoin/core/VersionMessage;->time:J

    const-wide/16 v6, 0x3e8

    mul-long v1, v4, v6

    .line 412
    .local v1, "peerTime":J
    sget-object v5, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "Connected to {}: version={}, subVer=\'{}\', services=0x{}, time={}, blocks={}"

    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v4, "Peer"

    :goto_0
    aput-object v4, v7, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v12

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-object v4, v4, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    aput-object v4, v7, v10

    const/4 v4, 0x3

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v8, v8, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    const-string v8, "%tF %tT"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x5

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v8, v8, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    new-instance v4, Lcom/google/bitcoin/core/VersionAck;

    invoke-direct {v4}, Lcom/google/bitcoin/core/VersionAck;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 426
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/VersionMessage;->hasBlockChain()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/NetworkParameters;->allowEmptyPeerChain()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v4, v4, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 429
    :cond_1
    new-instance v4, Lcom/google/bitcoin/core/ProtocolException;

    const-string v5, "Peer does not have a copy of the block chain."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_2
    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 433
    :cond_3
    return-void
.end method

.method private sendSingleGetData(Lcom/google/bitcoin/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "getdata"    # Lcom/google/bitcoin/core/GetDataMessage;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {p1}, Lcom/google/bitcoin/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1133
    new-instance v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Peer$GetDataRequest;-><init>(Lcom/google/bitcoin/core/Peer$1;)V

    .line 1134
    .local v0, "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 1135
    invoke-virtual {p1}, Lcom/google/bitcoin/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/InventoryItem;

    iget-object v1, v1, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    iput-object v1, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 1136
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1138
    iget-object v1, v0, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v1

    .end local v0    # "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    :cond_0
    move v1, v2

    .line 1132
    goto :goto_0
.end method

.method private startFilteredBlock(Lcom/google/bitcoin/core/FilteredBlock;)V
    .locals 2
    .param p1, "m"    # Lcom/google/bitcoin/core/FilteredBlock;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    .line 444
    iget v0, p0, Lcom/google/bitcoin/core/Peer;->filteredBlocksReceived:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/core/Peer;->filteredBlocksReceived:I

    .line 445
    iget v0, p0, Lcom/google/bitcoin/core/Peer;->filteredBlocksReceived:I

    rem-int/lit16 v0, v0, 0x61a8

    const/16 v1, 0x61a7

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->vBloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 248
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 249
    return-void
.end method

.method public addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    invoke-direct {v1, p1, p2}, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;-><init>(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method addEventListenerWithoutOnDisconnect(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;-><init>(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public addWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    return-void
.end method

.method public connectionClosed()V
    .locals 4

    .prologue
    .line 284
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 285
    .local v1, "registration":Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;
    iget-boolean v2, v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;->callOnDisconnect:Z

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Peer$1;

    invoke-direct {v3, p0, v1}, Lcom/google/bitcoin/core/Peer$1;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 293
    .end local v1    # "registration":Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;
    :cond_1
    return-void
.end method

.method public connectionOpened()V
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v0

    .line 300
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    sget-object v2, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v3, "Announcing to {} as: {}"

    if-nez v0, :cond_0

    const-string v1, "Peer"

    :goto_0
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-object v4, v4, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 302
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 305
    return-void

    .line 300
    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    goto :goto_0
.end method

.method public downloadDependencies(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    const-string v5, "Must have a configured MemoryPool object to download dependencies."

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v3

    .line 684
    .local v3, "txConfidence":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 685
    sget-object v4, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v5, "{}: Downloading dependencies of {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 686
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 688
    .local v2, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v4, v2}, Lcom/google/bitcoin/core/Peer;->downloadDependenciesInternal(Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 689
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 690
    .local v1, "resultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;>;"
    new-instance v4, Lcom/google/bitcoin/core/Peer$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/bitcoin/core/Peer$5;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/LinkedList;)V

    invoke-static {v0, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 699
    return-object v1

    .line 684
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;
    .end local v1    # "resultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;>;"
    .end local v2    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getBestHeight()J
    .locals 4

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget-wide v0, v0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "blockHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    sget-object v1, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Request to fetch block {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    new-instance v0, Lcom/google/bitcoin/core/GetDataMessage;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/GetDataMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1111
    .local v0, "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/GetDataMessage;->addBlock(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1112
    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/Peer;->sendSingleGetData(Lcom/google/bitcoin/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getBloomFilter()Lcom/google/bitcoin/core/BloomFilter;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->vBloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    return-object v0
.end method

.method public getConnectionOpenFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public getDownloadData()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    return v0
.end method

.method public getLastPingTime()J
    .locals 3

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1375
    const-wide v0, 0x7fffffffffffffffL

    .line 1378
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-wide v0

    .line 1376
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPeerBlockHeightDifference()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1417
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    const-string v4, "No block chain configured"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getBestHeight()J

    move-result-wide v4

    long-to-int v0, v4

    .line 1423
    .local v0, "chainHeight":I
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/NetworkParameters;->allowEmptyPeerChain()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Connected to peer with zero/negative chain height"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    sub-int v1, v0, v1

    return v1

    :cond_1
    move v1, v2

    .line 1423
    goto :goto_0
.end method

.method public getPeerMempoolTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    sget-object v1, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Request to fetch peer mempool tx  {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1124
    new-instance v0, Lcom/google/bitcoin/core/GetDataMessage;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/GetDataMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1125
    .local v0, "getdata":Lcom/google/bitcoin/core/GetDataMessage;
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/GetDataMessage;->addTransaction(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1126
    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/Peer;->sendSingleGetData(Lcom/google/bitcoin/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getPeerVersionMessage()Lcom/google/bitcoin/core/VersionMessage;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    return-object v0
.end method

.method public getPingTime()J
    .locals 11

    .prologue
    .line 1388
    iget-object v7, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1390
    :try_start_0
    iget-object v7, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 1391
    const-wide v7, 0x7fffffffffffffffL

    .line 1396
    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-wide v7

    .line 1392
    :cond_0
    const-wide/16 v5, 0x0

    .line 1393
    .local v5, "sum":J
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-wide v1, v0, v3

    .local v1, "i":J
    add-long/2addr v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1394
    .end local v1    # "i":J
    :cond_1
    long-to-double v7, v5

    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimes:[J

    array-length v9, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-long v7, v7

    .line 1396
    iget-object v9, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sum":J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/bitcoin/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public getVersionMessage()Lcom/google/bitcoin/core/VersionMessage;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    return-object v0
.end method

.method public ping()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Peer;->ping(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected ping(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "nonce"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    .line 1359
    .local v1, "ver":Lcom/google/bitcoin/core/VersionMessage;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/VersionMessage;->isPingPongSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Peer version is too low for measurable pings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1361
    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/Peer$PendingPing;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/bitcoin/core/Peer$PendingPing;-><init>(Lcom/google/bitcoin/core/Peer;J)V

    .line 1362
    .local v0, "pendingPing":Lcom/google/bitcoin/core/Peer$PendingPing;
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    new-instance v2, Lcom/google/bitcoin/core/Ping;

    iget-wide v3, v0, Lcom/google/bitcoin/core/Peer$PendingPing;->nonce:J

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/Ping;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1364
    iget-object v2, v0, Lcom/google/bitcoin/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v2
.end method

.method protected processMessage(Lcom/google/bitcoin/core/Message;)V
    .locals 7
    .param p1, "m"    # Lcom/google/bitcoin/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 321
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v3, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v4, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v3, v4, :cond_0

    .line 322
    iget-object v3, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v3, Lcom/google/bitcoin/core/PeerEventListener;

    invoke-interface {v3, p0, p1}, Lcom/google/bitcoin/core/PeerEventListener;->onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;

    move-result-object p1

    .line 323
    if-nez p1, :cond_0

    .line 326
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_1
    if-nez p1, :cond_3

    .line 402
    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_2
    :goto_0
    return-void

    .line 330
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    if-eqz v3, :cond_4

    instance-of v3, p1, Lcom/google/bitcoin/core/Transaction;

    if-nez v3, :cond_4

    .line 331
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/Peer;->endFilteredBlock(Lcom/google/bitcoin/core/FilteredBlock;)V

    .line 332
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/bitcoin/core/Peer;->currentFilteredBlock:Lcom/google/bitcoin/core/FilteredBlock;

    .line 335
    :cond_4
    instance-of v3, p1, Lcom/google/bitcoin/core/NotFoundMessage;

    if-eqz v3, :cond_5

    .line 338
    check-cast p1, Lcom/google/bitcoin/core/NotFoundMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processNotFoundMessage(Lcom/google/bitcoin/core/NotFoundMessage;)V

    goto :goto_0

    .line 339
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_5
    instance-of v3, p1, Lcom/google/bitcoin/core/InventoryMessage;

    if-eqz v3, :cond_6

    .line 340
    check-cast p1, Lcom/google/bitcoin/core/InventoryMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processInv(Lcom/google/bitcoin/core/InventoryMessage;)V

    goto :goto_0

    .line 341
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_6
    instance-of v3, p1, Lcom/google/bitcoin/core/Block;

    if-eqz v3, :cond_7

    .line 342
    check-cast p1, Lcom/google/bitcoin/core/Block;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processBlock(Lcom/google/bitcoin/core/Block;)V

    goto :goto_0

    .line 343
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_7
    instance-of v3, p1, Lcom/google/bitcoin/core/FilteredBlock;

    if-eqz v3, :cond_8

    .line 344
    check-cast p1, Lcom/google/bitcoin/core/FilteredBlock;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->startFilteredBlock(Lcom/google/bitcoin/core/FilteredBlock;)V

    goto :goto_0

    .line 345
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_8
    instance-of v3, p1, Lcom/google/bitcoin/core/Transaction;

    if-eqz v3, :cond_9

    .line 346
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processTransaction(Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_0

    .line 347
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_9
    instance-of v3, p1, Lcom/google/bitcoin/core/GetDataMessage;

    if-eqz v3, :cond_a

    .line 348
    check-cast p1, Lcom/google/bitcoin/core/GetDataMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processGetData(Lcom/google/bitcoin/core/GetDataMessage;)V

    goto :goto_0

    .line 349
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_a
    instance-of v3, p1, Lcom/google/bitcoin/core/AddressMessage;

    if-nez v3, :cond_2

    .line 363
    instance-of v3, p1, Lcom/google/bitcoin/core/HeadersMessage;

    if-eqz v3, :cond_b

    .line 364
    check-cast p1, Lcom/google/bitcoin/core/HeadersMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processHeaders(Lcom/google/bitcoin/core/HeadersMessage;)V

    goto :goto_0

    .line 365
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_b
    instance-of v3, p1, Lcom/google/bitcoin/core/AlertMessage;

    if-eqz v3, :cond_c

    .line 366
    check-cast p1, Lcom/google/bitcoin/core/AlertMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processAlert(Lcom/google/bitcoin/core/AlertMessage;)V

    goto :goto_0

    .line 367
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_c
    instance-of v3, p1, Lcom/google/bitcoin/core/VersionMessage;

    if-eqz v3, :cond_d

    .line 368
    check-cast p1, Lcom/google/bitcoin/core/VersionMessage;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processVersionMessage(Lcom/google/bitcoin/core/VersionMessage;)V

    goto :goto_0

    .line 369
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_d
    instance-of v3, p1, Lcom/google/bitcoin/core/VersionAck;

    if-eqz v3, :cond_11

    .line 370
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    if-nez v3, :cond_e

    .line 371
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    const-string v4, "got a version ack before version"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    :cond_e
    iget-boolean v3, p0, Lcom/google/bitcoin/core/Peer;->isAcked:Z

    if-eqz v3, :cond_f

    .line 374
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    const-string v4, "got more than one version ack"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/bitcoin/core/Peer;->isAcked:Z

    .line 377
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Peer;->setTimeoutEnabled(Z)V

    .line 378
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 379
    .restart local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v3, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/bitcoin/core/Peer$2;

    invoke-direct {v4, p0, v1}, Lcom/google/bitcoin/core/Peer$2;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 388
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_10
    iget v2, p0, Lcom/google/bitcoin/core/Peer;->vMinProtocolVersion:I

    .line 389
    .local v2, "version":I
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget v3, v3, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    if-ge v3, v2, :cond_2

    .line 390
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "Connected to a peer speaking protocol version {} but need {}, closing"

    iget-object v5, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    iget v5, v5, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->close()V

    goto/16 :goto_0

    .line 394
    .end local v2    # "version":I
    :cond_11
    instance-of v3, p1, Lcom/google/bitcoin/core/Ping;

    if-eqz v3, :cond_12

    move-object v3, p1

    .line 395
    check-cast v3, Lcom/google/bitcoin/core/Ping;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Ping;->hasNonce()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    new-instance v3, Lcom/google/bitcoin/core/Pong;

    check-cast p1, Lcom/google/bitcoin/core/Ping;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Ping;->getNonce()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/bitcoin/core/Pong;-><init>(J)V

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    goto/16 :goto_0

    .line 397
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_12
    instance-of v3, p1, Lcom/google/bitcoin/core/Pong;

    if-eqz v3, :cond_13

    .line 398
    check-cast p1, Lcom/google/bitcoin/core/Pong;

    .end local p1    # "m":Lcom/google/bitcoin/core/Message;
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Peer;->processPong(Lcom/google/bitcoin/core/Pong;)V

    goto/16 :goto_0

    .line 400
    .restart local p1    # "m":Lcom/google/bitcoin/core/Message;
    :cond_13
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "Received unhandled message: {}"

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lcom/google/bitcoin/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method public setBloomFilter(Lcom/google/bitcoin/core/BloomFilter;)V
    .locals 5
    .param p1, "filter"    # Lcom/google/bitcoin/core/BloomFilter;

    .prologue
    .line 1496
    const-string v2, "Clearing filters is not currently supported"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->vPeerVersionMessage:Lcom/google/bitcoin/core/VersionMessage;

    .line 1498
    .local v1, "ver":Lcom/google/bitcoin/core/VersionMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/bitcoin/core/VersionMessage;->isBloomFilteringSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer;->vBloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    .line 1501
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1502
    .local v0, "shouldQueryMemPool":Z
    :goto_1
    sget-object v3, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "{}: Sending Bloom filter{}"

    if-eqz v0, :cond_4

    const-string v2, " and querying mempool"

    :goto_2
    invoke-interface {v3, v4, p0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1504
    new-instance v2, Lcom/google/bitcoin/core/MemoryPoolMessage;

    invoke-direct {v2}, Lcom/google/bitcoin/core/MemoryPoolMessage;-><init>()V

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    goto :goto_0

    .line 1501
    .end local v0    # "shouldQueryMemPool":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1502
    .restart local v0    # "shouldQueryMemPool":Z
    :cond_4
    const-string v2, ""

    goto :goto_2
.end method

.method public setDownloadData(Z)V
    .locals 0
    .param p1, "downloadData"    # Z

    .prologue
    .line 1445
    iput-boolean p1, p0, Lcom/google/bitcoin/core/Peer;->vDownloadData:Z

    .line 1446
    return-void
.end method

.method public setDownloadParameters(JZ)V
    .locals 4
    .param p1, "secondsSinceEpoch"    # J
    .param p3, "useFilteredBlocks"    # Z

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Peer;->fastCatchupTimeSecs:J

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z

    .line 1165
    :cond_0
    :goto_0
    iput-boolean p3, p0, Lcom/google/bitcoin/core/Peer;->useFilteredBlocks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1169
    return-void

    .line 1158
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/bitcoin/core/Peer;->fastCatchupTimeSecs:J

    .line 1161
    iget-wide v0, p0, Lcom/google/bitcoin/core/Peer;->fastCatchupTimeSecs:J

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer;->blockChain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Peer;->downloadBlockBodies:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMinProtocolVersion(I)Z
    .locals 3
    .param p1, "minProtocolVersion"    # I

    .prologue
    .line 1471
    iput p1, p0, Lcom/google/bitcoin/core/Peer;->vMinProtocolVersion:I

    .line 1472
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v0

    iget v0, v0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    if-ge v0, p1, :cond_0

    .line 1473
    sget-object v0, Lcom/google/bitcoin/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "{}: Disconnecting due to new min protocol version {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1474
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->close()V

    .line 1475
    const/4 v0, 0x1

    .line 1477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startBlockChainDownload()V
    .locals 5

    .prologue
    .line 1280
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Peer;->setDownloadData(Z)V

    .line 1283
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getPeerBlockHeightDifference()I

    move-result v0

    .line 1284
    .local v0, "blocksLeft":I
    if-ltz v0, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;

    .line 1286
    .local v2, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v3, v2, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/bitcoin/core/Peer$9;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/bitcoin/core/Peer$9;-><init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/utils/ListenerRegistration;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1294
    .end local v2    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1296
    :try_start_0
    sget-object v3, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/Peer;->blockChainDownloadLocked(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1301
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 1298
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v0

    .line 274
    .local v0, "addr":Lcom/google/bitcoin/core/PeerAddress;
    if-nez v0, :cond_0

    .line 276
    const-string v1, "Peer()"

    .line 278
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
