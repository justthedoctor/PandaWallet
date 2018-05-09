.class public Lcom/google/bitcoin/core/PeerGroup;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "PeerGroup.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionBroadcaster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/PeerGroup$15;,
        Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;,
        Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;,
        Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOOM_FILTER_FP_RATE:D = 5.0E-4

.field private static final DEFAULT_CONNECTIONS:I = 0x4

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1388

.field public static final DEFAULT_PING_INTERVAL_MSEC:J = 0x7d0L

.field public static final MAX_FP_RATE_INCREASE:D = 2.0

.field private static final TOR_TIMEOUT_SECONDS:I = 0x14

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final backoffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            "Lcom/google/bitcoin/utils/ExponentialBackoff;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private bloomDontSend:Ljava/lang/Runnable;

.field private bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

.field private bloomFilterFPRate:D

.field private final bloomFilterTweak:J

.field private bloomSendIfChanged:Ljava/lang/Runnable;

.field private final chain:Lcom/google/bitcoin/core/AbstractBlockChain;

.field private final channels:Lcom/google/bitcoin/net/ClientConnectionManager;

.field private downloadListener:Lcom/google/bitcoin/core/PeerEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private downloadPeer:Lcom/google/bitcoin/core/Peer;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private downloadTxDependencies:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private fastCatchupTimeSecs:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

.field private final inactives:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private lastBloomFilterElementCount:I

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private maxConnections:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final memoryPool:Lcom/google/bitcoin/core/MemoryPool;

.field private minBroadcastConnections:I

.field private final params:Lcom/google/bitcoin/core/NetworkParameters;

.field private peerBackoffParams:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

.field private final peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/bitcoin/net/discovery/PeerDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field private final peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/utils/ListenerRegistration",
            "<",
            "Lcom/google/bitcoin/core/PeerEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/PeerFilterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final peerListener:Lcom/google/bitcoin/core/AbstractPeerEventListener;

.field private final peers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private pingIntervalMsec:J

.field private final runningBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/TransactionBroadcast;",
            ">;"
        }
    .end annotation
.end field

.field startupListener:Lcom/google/bitcoin/core/PeerEventListener;

.field private final torClient:Lcom/subgraph/orchid/TorClient;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private triggerConnectionsJob:Ljava/lang/Runnable;

.field private volatile vConnectTimeoutMillis:I

.field private volatile vMinRequiredProtocolVersion:I

.field private volatile vPingTimer:Ljava/util/Timer;

.field private versionMessage:Lcom/google/bitcoin/core/VersionMessage;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private walletEventListener:Lcom/google/bitcoin/core/AbstractWalletEventListener;

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
    .line 79
    const-class v0, Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 282
    new-instance v0, Lcom/google/bitcoin/net/NioClientManager;

    invoke-direct {v0}, Lcom/google/bitcoin/net/NioClientManager;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/google/bitcoin/net/ClientConnectionManager;

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V

    .line 317
    return-void
.end method

.method private constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V
    .locals 9
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/google/bitcoin/net/ClientConnectionManager;
    .param p4, "torClient"    # Lcom/subgraph/orchid/TorClient;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v1, 0x3e8

    const/4 v6, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v8, 0x1

    .line 323
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    .line 83
    const-string v0, "peergroup"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    const v0, 0xea62

    iput v0, p0, Lcom/google/bitcoin/core/PeerGroup;->vMinRequiredProtocolVersion:I

    .line 122
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/google/bitcoin/core/PeerGroup;->pingIntervalMsec:J

    .line 132
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$1;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/PeerGroup$1;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerListener:Lcom/google/bitcoin/core/AbstractPeerEventListener;

    .line 148
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->minBroadcastConnections:I

    iput v0, p0, Lcom/google/bitcoin/core/PeerGroup;->minBroadcastConnections:I

    .line 149
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$2;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/PeerGroup$2;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomSendIfChanged:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$3;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/PeerGroup$3;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomDontSend:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$4;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/PeerGroup$4;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->walletEventListener:Lcom/google/bitcoin/core/AbstractWalletEventListener;

    .line 215
    new-instance v0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    const-wide/32 v4, 0x927c0

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;-><init>(JFJ)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerBackoffParams:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .line 217
    new-instance v7, Lcom/google/bitcoin/utils/ExponentialBackoff;

    new-instance v0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    const-wide/16 v4, 0x2710

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;-><init>(JFJ)V

    invoke-direct {v7, v0}, Lcom/google/bitcoin/utils/ExponentialBackoff;-><init>(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)V

    iput-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    .line 220
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 241
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/bitcoin/core/PeerGroup$PeerStartupListener;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/PeerGroup$1;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->startupListener:Lcom/google/bitcoin/core/PeerEventListener;

    .line 256
    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    iput-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterFPRate:D

    .line 258
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterTweak:J

    .line 263
    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/bitcoin/core/PeerGroup;->vConnectTimeoutMillis:I

    .line 398
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$6;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/PeerGroup$6;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->triggerConnectionsJob:Ljava/lang/Runnable;

    .line 324
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 325
    iput-object p2, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    .line 326
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->fastCatchupTimeSecs:J

    .line 327
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 328
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 329
    iput-object p4, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 334
    iput v6, p0, Lcom/google/bitcoin/core/PeerGroup;->maxConnections:I

    .line 336
    if-nez p2, :cond_0

    .line 338
    .local v6, "height":I
    :goto_0
    new-instance v0, Lcom/google/bitcoin/core/VersionMessage;

    invoke-direct {v0, p1, v6, v8}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;

    .line 339
    iput-boolean v8, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadTxDependencies:Z

    .line 341
    new-instance v0, Lcom/google/bitcoin/core/MemoryPool;

    invoke-direct {v0}, Lcom/google/bitcoin/core/MemoryPool;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    .line 343
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/google/bitcoin/core/PeerGroup$5;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/core/PeerGroup$5;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    invoke-direct {v0, v8, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    .line 354
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 355
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 356
    iput-object p3, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    .line 357
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 358
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    .line 360
    return-void

    .line 336
    .end local v6    # "height":I
    :cond_0
    invoke-virtual {p2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;
    .param p1, "x1"    # Lcom/google/bitcoin/core/GetDataMessage;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;->handleGetData(Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/core/AbstractBlockChain;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/bitcoin/core/PeerGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/bitcoin/core/PeerGroup;->countConnectedAndPendingPeers()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->vPingTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/core/PeerGroup;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterFPRate:D

    return-wide v0
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/bitcoin/core/PeerGroup;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomSendIfChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/bitcoin/core/PeerGroup;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomDontSend:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/utils/ExponentialBackoff;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    return-object v0
.end method

.method private addInactive(Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 3
    .param p1, "peerAddress"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    new-instance v1, Lcom/google/bitcoin/utils/ExponentialBackoff;

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->peerBackoffParams:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    invoke-direct {v1, v2}, Lcom/google/bitcoin/utils/ExponentialBackoff;-><init>(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private countConnectedAndPendingPeers()I
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    .line 692
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static getMostCommonChainHeight(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1493
    .local p0, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1494
    const/4 v3, 0x0

    .line 1497
    :goto_0
    return v3

    .line 1495
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1496
    .local v0, "heights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Peer;

    .local v2, "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Peer;->getBestHeight()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1497
    .end local v2    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_1
    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->maxOfMostFreq(Ljava/util/List;)I

    move-result v3

    goto :goto_0
.end method

.method private handleGetData(Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
    .locals 9
    .param p1, "m"    # Lcom/google/bitcoin/core/GetDataMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/GetDataMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 434
    .local v4, "transactions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Message;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v3, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/InventoryItem;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 436
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/InventoryItem;

    .line 439
    .local v2, "item":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    iget-object v8, v2, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/MemoryPool;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    .line 440
    .local v5, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz v5, :cond_1

    .line 441
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 456
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    .end local v2    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .end local v3    # "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/InventoryItem;>;"
    .end local v4    # "transactions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Message;>;"
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 445
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/InventoryItem;>;"
    .restart local v2    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .restart local v3    # "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/InventoryItem;>;"
    .restart local v4    # "transactions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Message;>;"
    .restart local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Wallet;

    .line 446
    .local v6, "w":Lcom/google/bitcoin/core/Wallet;
    iget-object v7, v2, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    .line 447
    if-eqz v5, :cond_2

    .line 448
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v6    # "w":Lcom/google/bitcoin/core/Wallet;
    :cond_3
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method private haveReadyInactivePeer(J)Z
    .locals 4
    .param p1, "nowMillis"    # J

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 742
    :goto_0
    return v0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/google/bitcoin/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    move v0, v1

    .line 741
    goto :goto_0

    .line 742
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static maybeDisableExportControls()V
    .locals 13

    .prologue
    .line 1574
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1595
    .local v7, "gate":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 1577
    .end local v7    # "gate":Ljava/lang/reflect/Field;
    :cond_0
    :try_start_0
    const-string v8, "javax.crypto.JceSecurity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "isRestricted"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1578
    .restart local v7    # "gate":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1579
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1580
    const-string v8, "javax.crypto.CryptoAllPermission"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "INSTANCE"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1581
    .local v2, "allPerm":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1582
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1583
    .local v0, "accessAllAreasCard":Ljava/lang/Object;
    const-string v8, "javax.crypto.CryptoPermissions"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1584
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1585
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1586
    .local v3, "coll":Ljava/lang/Object;
    const-string v8, "javax.crypto.CryptoPermissions"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "add"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/security/Permission;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1587
    .local v1, "addPerm":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1588
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v1, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-string v8, "javax.crypto.JceSecurity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "defaultPolicy"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1590
    .local v5, "defaultPolicy":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1591
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1592
    .end local v0    # "accessAllAreasCard":Ljava/lang/Object;
    .end local v1    # "addPerm":Ljava/lang/reflect/Method;
    .end local v2    # "allPerm":Ljava/lang/reflect/Field;
    .end local v3    # "coll":Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "defaultPolicy":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 1593
    .local v6, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to deactivate AES-256 barrier logic, Tor mode may crash if this JVM requires it: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static newWithTor(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lcom/google/bitcoin/core/PeerGroup;
    .locals 5
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "torClient"    # Lcom/subgraph/orchid/TorClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x4e20

    .line 300
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->maybeDisableExportControls()V

    .line 302
    new-instance v1, Lcom/google/bitcoin/net/BlockingClientManager;

    invoke-virtual {p2}, Lcom/subgraph/orchid/TorClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/bitcoin/net/BlockingClientManager;-><init>(Ljavax/net/SocketFactory;)V

    .line 303
    .local v1, "manager":Lcom/google/bitcoin/net/BlockingClientManager;
    const/16 v0, 0x4e20

    .line 304
    .local v0, "CONNECT_TIMEOUT_MSEC":I
    invoke-virtual {v1, v4}, Lcom/google/bitcoin/net/BlockingClientManager;->setConnectTimeoutMillis(I)V

    .line 305
    new-instance v2, Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V

    .line 306
    .local v2, "result":Lcom/google/bitcoin/core/PeerGroup;
    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/PeerGroup;->setConnectTimeoutMillis(I)V

    .line 307
    new-instance v3, Lcom/google/bitcoin/net/discovery/TorDiscovery;

    invoke-direct {v3, p0, p2}, Lcom/google/bitcoin/net/discovery/TorDiscovery;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerGroup;->addPeerDiscovery(Lcom/google/bitcoin/net/discovery/PeerDiscovery;)V

    .line 308
    return-object v2
.end method

.method private setDownloadPeer(Lcom/google/bitcoin/core/Peer;)V
    .locals 6
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1154
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1156
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1182
    :goto_0
    return-void

    .line 1159
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v2, :cond_1

    .line 1162
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1165
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-eqz v2, :cond_3

    .line 1166
    sget-object v2, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v3, "Unsetting download peer: {}"

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-eqz v2, :cond_2

    .line 1168
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Peer;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 1169
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Peer;->setDownloadData(Z)V

    .line 1171
    :cond_3
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    .line 1172
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-eqz v2, :cond_5

    .line 1173
    sget-object v2, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v3, "Setting download peer: {}"

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-eqz v2, :cond_4

    .line 1175
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v3}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 1176
    :cond_4
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Peer;->setDownloadData(Z)V

    .line 1177
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    iget-wide v3, p0, Lcom/google/bitcoin/core/PeerGroup;->fastCatchupTimeSecs:J

    iget-object v5, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    if-eqz v5, :cond_6

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/bitcoin/core/Peer;->setDownloadParameters(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1180
    :cond_5
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1177
    goto :goto_1

    .line 1180
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setupPingingForNewPeer(Lcom/google/bitcoin/core/Peer;)V
    .locals 6
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;

    .prologue
    const/4 v5, 0x0

    .line 1102
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1103
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getPeerVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v1

    iget v1, v1, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    const v2, 0xea61

    if-ge v1, v2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1111
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Runnable;

    .line 1112
    .local v0, "pingRunnable":[Ljava/lang/Runnable;
    new-instance v1, Lcom/google/bitcoin/core/PeerGroup$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/bitcoin/core/PeerGroup$10;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/Peer;[Ljava/lang/Runnable;)V

    aput-object v1, v0, v5

    .line 1150
    aget-object v1, v0, v5

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private startBlockChainDownloadFromPeer(Lcom/google/bitcoin/core/Peer;)V
    .locals 2
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;->setDownloadPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1293
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->startBlockChainDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1297
    return-void

    .line 1295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private triggerConnections()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->triggerConnectionsJob:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method private updateVersionMessageRelayTxesBeforeFilter(Lcom/google/bitcoin/core/VersionMessage;)V
    .locals 5
    .param p1, "ver"    # Lcom/google/bitcoin/core/VersionMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 510
    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 512
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 513
    .local v0, "spvMode":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 514
    .local v1, "willSendFilter":Z
    :goto_1
    if-nez v1, :cond_2

    :goto_2
    iput-boolean v2, p1, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    return-void

    .end local v0    # "spvMode":Z
    .end local v1    # "willSendFilter":Z
    :cond_0
    move v0, v3

    .line 512
    goto :goto_0

    .restart local v0    # "spvMode":Z
    :cond_1
    move v1, v3

    .line 513
    goto :goto_1

    .restart local v1    # "willSendFilter":Z
    :cond_2
    move v2, v3

    .line 514
    goto :goto_2

    .line 516
    .end local v0    # "spvMode":Z
    .end local v1    # "willSendFilter":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method


# virtual methods
.method public addAddress(Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 3
    .param p1, "peerAddress"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 600
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 602
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;->addInactive(Lcom/google/bitcoin/core/PeerAddress;)V

    .line 603
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 605
    .local v0, "newMax":I
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 607
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->setMaxConnections(I)V

    .line 608
    return-void

    .line 605
    .end local v0    # "newMax":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public addAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 620
    new-instance v0, Lcom/google/bitcoin/core/PeerAddress;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->addAddress(Lcom/google/bitcoin/core/PeerAddress;)V

    .line 621
    return-void
.end method

.method public addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 551
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/PeerGroup;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 552
    return-void
.end method

.method public addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/bitcoin/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-void
.end method

.method public addPeerDiscovery(Lcom/google/bitcoin/net/discovery/PeerDiscovery;)V
    .locals 2
    .param p1, "peerDiscovery"    # Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->setMaxConnections(I)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addPeerFilterProvider(Lcom/google/bitcoin/core/PeerFilterProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/google/bitcoin/core/PeerFilterProvider;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 824
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 826
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->recalculateFastCatchupAndFilter(Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;)V

    .line 833
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->updateVersionMessageRelayTxesBeforeFilter(Lcom/google/bitcoin/core/VersionMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 837
    return-void

    .line 825
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 803
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 805
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Wallet;->setTransactionBroadcaster(Lcom/google/bitcoin/core/TransactionBroadcaster;)V

    .line 807
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->walletEventListener:Lcom/google/bitcoin/core/AbstractWalletEventListener;

    sget-object v1, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 808
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;->addPeerFilterProvider(Lcom/google/bitcoin/core/PeerFilterProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 812
    return-void

    .line 804
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1368
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMinBroadcastConnections()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/PeerGroup;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public broadcastTransaction(Lcom/google/bitcoin/core/Transaction;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "minConnections"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1392
    new-instance v0, Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-direct {v0, p0, p1}, Lcom/google/bitcoin/core/TransactionBroadcast;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/Transaction;)V

    .line 1393
    .local v0, "broadcast":Lcom/google/bitcoin/core/TransactionBroadcast;
    invoke-virtual {v0, p2}, Lcom/google/bitcoin/core/TransactionBroadcast;->setMinConnections(I)V

    .line 1395
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/bitcoin/core/PeerGroup$13;

    invoke-direct {v2, p0, v0}, Lcom/google/bitcoin/core/PeerGroup$13;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/TransactionBroadcast;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1427
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1428
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionBroadcast;->broadcast()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1429
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 565
    return-void
.end method

.method protected connectTo(Lcom/google/bitcoin/core/PeerAddress;Z)Lcom/google/bitcoin/core/Peer;
    .locals 8
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "incrementMaxConnections"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/VersionMessage;->duplicate()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v2

    .line 968
    .local v2, "ver":Lcom/google/bitcoin/core/VersionMessage;
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    :goto_0
    iput-wide v3, v2, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    .line 969
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/bitcoin/core/VersionMessage;->time:J

    .line 971
    new-instance v0, Lcom/google/bitcoin/core/Peer;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    iget-object v5, p0, Lcom/google/bitcoin/core/PeerGroup;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    iget-boolean v6, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadTxDependencies:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Peer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/VersionMessage;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/MemoryPool;Z)V

    .line 972
    .local v0, "peer":Lcom/google/bitcoin/core/Peer;
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->startupListener:Lcom/google/bitcoin/core/PeerEventListener;

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 973
    iget v1, p0, Lcom/google/bitcoin/core/PeerGroup;->vMinRequiredProtocolVersion:I

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Peer;->setMinProtocolVersion(I)Z

    .line 974
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/google/bitcoin/net/ClientConnectionManager;->openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    iget v1, p0, Lcom/google/bitcoin/core/PeerGroup;->vConnectTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Peer;->setSocketTimeout(I)V

    .line 987
    if-eqz p2, :cond_0

    .line 990
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 992
    :try_start_1
    iget v1, p0, Lcom/google/bitcoin/core/PeerGroup;->maxConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bitcoin/core/PeerGroup;->maxConnections:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 997
    .end local v0    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_0
    :goto_1
    return-object v0

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    int-to-long v3, v1

    goto :goto_0

    .line 978
    .restart local v0    # "peer":Lcom/google/bitcoin/core/Peer;
    :catch_0
    move-exception v7

    .line 979
    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->handlePeerDeath(Lcom/google/bitcoin/core/Peer;)V

    .line 981
    const/4 v0, 0x0

    goto :goto_1

    .line 994
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public connectTo(Ljava/net/InetSocketAddress;)Lcom/google/bitcoin/core/Peer;
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 959
    new-instance v0, Lcom/google/bitcoin/core/PeerAddress;

    invoke-direct {v0, p1}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetSocketAddress;)V

    .line 960
    .local v0, "peerAddress":Lcom/google/bitcoin/core/PeerAddress;
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    new-instance v2, Lcom/google/bitcoin/utils/ExponentialBackoff;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->peerBackoffParams:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/utils/ExponentialBackoff;-><init>(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->connectTo(Lcom/google/bitcoin/core/PeerAddress;Z)Lcom/google/bitcoin/core/Peer;

    move-result-object v1

    return-object v1
.end method

.method protected connectToAnyPeer()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v8

    .line 699
    .local v8, "state":Lcom/google/common/util/concurrent/Service$State;
    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v8, v9, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/4 v1, 0x0

    .line 703
    .local v1, "addr":Lcom/google/bitcoin/core/PeerAddress;
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v4

    .line 704
    .local v4, "nowMillis":J
    const-wide/16 v6, 0x0

    .line 705
    .local v6, "retryTime":J
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 707
    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/google/bitcoin/core/PeerGroup;->haveReadyInactivePeer(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->discoverPeers()V

    .line 709
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackSuccess()V

    .line 710
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v4

    .line 712
    :cond_2
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 713
    sget-object v9, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v10, "Peer discovery didn\'t provide us any more peers, not trying to build new connection."

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 721
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 722
    cmp-long v9, v6, v4

    if-lez v9, :cond_0

    .line 724
    sub-long v2, v6, v4

    .line 725
    .local v2, "millis":J
    sget-object v10, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v11, "Waiting {} msec before next connect attempt {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    if-nez v1, :cond_3

    const-string v9, ""

    :goto_1
    invoke-interface {v10, v11, v12, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->sleep(J)V

    goto :goto_0

    .line 725
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " to "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 716
    .end local v2    # "millis":J
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    move-object v1, v0

    .line 717
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->getRetryTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 720
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 721
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 722
    cmp-long v9, v6, v4

    if-lez v9, :cond_5

    .line 724
    sub-long v2, v6, v4

    .line 725
    .restart local v2    # "millis":J
    sget-object v10, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v11, "Waiting {} msec before next connect attempt {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    if-nez v1, :cond_6

    const-string v9, ""

    :goto_2
    invoke-interface {v10, v11, v12, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->sleep(J)V

    .line 731
    .end local v2    # "millis":J
    :cond_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Lcom/google/bitcoin/core/PeerGroup;->connectTo(Lcom/google/bitcoin/core/PeerAddress;Z)Lcom/google/bitcoin/core/Peer;

    goto/16 :goto_0

    .line 725
    .restart local v2    # "millis":J
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " to "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 720
    .end local v2    # "millis":J
    :catchall_0
    move-exception v9

    move-object v10, v9

    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 721
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 722
    cmp-long v9, v6, v4

    if-lez v9, :cond_7

    .line 724
    sub-long v2, v6, v4

    .line 725
    .restart local v2    # "millis":J
    sget-object v11, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v12, "Waiting {} msec before next connect attempt {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    if-nez v1, :cond_8

    const-string v9, ""

    :goto_3
    invoke-interface {v11, v12, v13, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->sleep(J)V

    .line 727
    .end local v2    # "millis":J
    :cond_7
    throw v10

    .line 725
    .restart local v2    # "millis":J
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " to "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3
.end method

.method protected discoverPeers()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 640
    new-instance v8, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    const-string v9, "No peer discoverers registered"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 643
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 644
    .local v1, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/PeerAddress;>;"
    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .line 646
    .local v7, "peerDiscovery":Lcom/google/bitcoin/net/discovery/PeerDiscovery;
    const-wide/16 v8, 0x5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 647
    .local v2, "addresses":[Ljava/net/InetSocketAddress;
    move-object v3, v2

    .local v3, "arr$":[Ljava/net/InetSocketAddress;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v3, v5

    .line 649
    .local v0, "address":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_2

    .line 650
    new-instance v8, Lcom/google/bitcoin/core/PeerAddress;

    invoke-direct {v8, v0}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetSocketAddress;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 654
    .end local v2    # "addresses":[Ljava/net/InetSocketAddress;
    .end local v3    # "arr$":[Ljava/net/InetSocketAddress;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "peerDiscovery":Lcom/google/bitcoin/net/discovery/PeerDiscovery;
    :cond_4
    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 656
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 657
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->addInactive(Lcom/google/bitcoin/core/PeerAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 660
    .end local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 664
    return-void
.end method

.method public downloadBlockChain()V
    .locals 3

    .prologue
    .line 1040
    new-instance v1, Lcom/google/bitcoin/core/DownloadListener;

    invoke-direct {v1}, Lcom/google/bitcoin/core/DownloadListener;-><init>()V

    .line 1041
    .local v1, "listener":Lcom/google/bitcoin/core/DownloadListener;
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownload(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 1043
    :try_start_0
    invoke-virtual {v1}, Lcom/google/bitcoin/core/DownloadListener;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getConnectedPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 574
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDownloadPeer()Lcom/google/bitcoin/core/Peer;
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getFastCatchupTimeSecs()J
    .locals 3

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1221
    :try_start_0
    iget-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->fastCatchupTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxConnections()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    :try_start_0
    iget v0, p0, Lcom/google/bitcoin/core/PeerGroup;->maxConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMemoryPool()Lcom/google/bitcoin/core/MemoryPool;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->memoryPool:Lcom/google/bitcoin/core/MemoryPool;

    return-object v0
.end method

.method public getMinBroadcastConnections()I
    .locals 5

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1338
    :try_start_0
    iget v1, p0, Lcom/google/bitcoin/core/PeerGroup;->minBroadcastConnections:I

    if-nez v1, :cond_1

    .line 1339
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1340
    .local v0, "max":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0    # "max":I
    :goto_0
    return v0

    .line 1343
    .restart local v0    # "max":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    long-to-int v0, v1

    .line 1347
    .end local v0    # "max":I
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1345
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/bitcoin/core/PeerGroup;->minBroadcastConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1347
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getMinRequiredProtocolVersion()I
    .locals 1

    .prologue
    .line 1472
    iget v0, p0, Lcom/google/bitcoin/core/PeerGroup;->vMinRequiredProtocolVersion:I

    return v0
.end method

.method public getMostCommonChainHeight()I
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1482
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/google/bitcoin/core/PeerGroup;->getMostCommonChainHeight(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1484
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPendingPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 586
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPingIntervalMsec()J
    .locals 3

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1440
    :try_start_0
    iget-wide v0, p0, Lcom/google/bitcoin/core/PeerGroup;->pingIntervalMsec:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTorClient()Lcom/subgraph/orchid/TorClient;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    return-object v0
.end method

.method public getVersionMessage()Lcom/google/bitcoin/core/VersionMessage;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected handleNewPeer(Lcom/google/bitcoin/core/Peer;)V
    .locals 9
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;

    .prologue
    const/4 v5, 0x0

    .line 1050
    const/4 v3, -0x1

    .line 1051
    .local v3, "newSize":I
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1053
    :try_start_0
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v7}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackSuccess()V

    .line 1054
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v7}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackSuccess()V

    .line 1057
    sget-object v7, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v8, "{}: New peer"

    invoke-interface {v7, v8, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1059
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 1064
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    invoke-virtual {p1, v7}, Lcom/google/bitcoin/core/Peer;->setBloomFilter(Lcom/google/bitcoin/core/BloomFilter;)V

    .line 1066
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/bitcoin/core/Peer;->setDownloadData(Z)V

    .line 1068
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Wallet;

    .line 1069
    .local v6, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual {p1, v6}, Lcom/google/bitcoin/core/Peer;->addWallet(Lcom/google/bitcoin/core/Wallet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1087
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 1071
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v7}, Lcom/google/bitcoin/core/PeerGroup;->selectDownloadPeer(Ljava/util/List;)Lcom/google/bitcoin/core/Peer;

    move-result-object v2

    .line 1072
    .local v2, "newDownloadPeer":Lcom/google/bitcoin/core/Peer;
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-eq v7, v2, :cond_3

    .line 1073
    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/PeerGroup;->setDownloadPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1074
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 1075
    .local v5, "shouldDownloadChain":Z
    :cond_2
    if-eqz v5, :cond_3

    .line 1076
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    invoke-direct {p0, v7}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownloadFromPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1080
    .end local v5    # "shouldDownloadChain":Z
    :cond_3
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peerListener:Lcom/google/bitcoin/core/AbstractPeerEventListener;

    sget-object v8, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v7, v8}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 1082
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 1083
    .local v4, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v7, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v7, Lcom/google/bitcoin/core/PeerEventListener;

    iget-object v8, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v7, v8}, Lcom/google/bitcoin/core/Peer;->addEventListenerWithoutOnDisconnect(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 1085
    .end local v4    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;->setupPingingForNewPeer(Lcom/google/bitcoin/core/Peer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1090
    move v0, v3

    .line 1091
    .local v0, "fNewSize":I
    iget-object v7, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 1092
    .restart local v4    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v7, v4, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/bitcoin/core/PeerGroup$9;

    invoke-direct {v8, p0, v4, p1, v0}, Lcom/google/bitcoin/core/PeerGroup$9;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Peer;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1099
    .end local v4    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    :cond_5
    return-void
.end method

.method protected handlePeerDeath(Lcom/google/bitcoin/core/Peer;)V
    .locals 11
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v7

    .line 1230
    .local v7, "state":Lcom/google/common/util/concurrent/Service$State;
    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v7, v9, :cond_1

    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v7, v9, :cond_1

    .line 1286
    :cond_0
    return-void

    .line 1232
    :cond_1
    const/4 v5, 0x0

    .line 1233
    .local v5, "numPeers":I
    const/4 v4, 0x0

    .line 1234
    .local v4, "numConnectedPeers":I
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1236
    :try_start_0
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1237
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v0

    .line 1241
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    sget-object v9, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v10, "{}: Peer died"

    invoke-interface {v9, v10, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1242
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-ne p1, v9, :cond_2

    .line 1243
    sget-object v9, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v10, "Download peer died. Picking a new one."

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1244
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/google/bitcoin/core/PeerGroup;->setDownloadPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1246
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v9}, Lcom/google/bitcoin/core/PeerGroup;->selectDownloadPeer(Ljava/util/List;)Lcom/google/bitcoin/core/Peer;

    move-result-object v3

    .line 1247
    .local v3, "newDownloadPeer":Lcom/google/bitcoin/core/Peer;
    if-eqz v3, :cond_2

    .line 1248
    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/PeerGroup;->setDownloadPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1249
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-eqz v9, :cond_2

    .line 1250
    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownloadFromPeer(Lcom/google/bitcoin/core/Peer;)V

    .line 1254
    .end local v3    # "newDownloadPeer":Lcom/google/bitcoin/core/Peer;
    :cond_2
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/google/bitcoin/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    add-int v5, v9, v10

    .line 1255
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 1257
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->groupBackoff:Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackFailure()V

    .line 1260
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v9}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackFailure()V

    .line 1262
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 1264
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 1265
    invoke-direct {p0}, Lcom/google/bitcoin/core/PeerGroup;->triggerConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :cond_3
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1271
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peerListener:Lcom/google/bitcoin/core/AbstractPeerEventListener;

    invoke-virtual {p1, v9}, Lcom/google/bitcoin/core/Peer;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 1272
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/Wallet;

    .line 1273
    .local v8, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual {p1, v8}, Lcom/google/bitcoin/core/Peer;->removeWallet(Lcom/google/bitcoin/core/Wallet;)V

    goto :goto_0

    .line 1268
    .end local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 1276
    .restart local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    move v1, v4

    .line 1277
    .local v1, "fNumConnectedPeers":I
    iget-object v9, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 1278
    .local v6, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/PeerEventListener;>;"
    iget-object v9, v6, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/google/bitcoin/core/PeerGroup$11;

    invoke-direct {v10, p0, v6, p1, v1}, Lcom/google/bitcoin/core/PeerGroup$11;-><init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Peer;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1284
    iget-object v9, v6, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v9, Lcom/google/bitcoin/core/PeerEventListener;

    invoke-virtual {p1, v9}, Lcom/google/bitcoin/core/Peer;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    goto :goto_1
.end method

.method public numConnectedPeers()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public recalculateFastCatchupAndFilter(Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;)V
    .locals 24
    .param p1, "mode"    # Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 865
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 919
    :goto_0
    return-void

    .line 867
    :cond_0
    :try_start_1
    sget-object v4, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v5, "Recalculating filter in mode {}"

    move-object/from16 v0, p1

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    const-wide v17, 0x7fffffffffffffffL

    .line 869
    .local v17, "earliestKeyTimeSecs":J
    const/16 v19, 0x0

    .line 870
    .local v19, "elements":I
    const/16 v22, 0x0

    .line 871
    .local v22, "requiresUpdateAll":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/PeerFilterProvider;

    .line 872
    .local v10, "p":Lcom/google/bitcoin/core/PeerFilterProvider;
    invoke-interface {v10}, Lcom/google/bitcoin/core/PeerFilterProvider;->getEarliestKeyCreationTime()J

    move-result-wide v4

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 873
    invoke-interface {v10}, Lcom/google/bitcoin/core/PeerFilterProvider;->getBloomFilterElementCount()I

    move-result v4

    add-int v19, v19, v4

    .line 874
    if-nez v22, :cond_1

    invoke-interface {v10}, Lcom/google/bitcoin/core/PeerFilterProvider;->isRequiringUpdateAllBloomFilter()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/16 v22, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 877
    .end local v10    # "p":Lcom/google/bitcoin/core/PeerFilterProvider;
    :cond_3
    if-lez v19, :cond_9

    .line 882
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lastBloomFilterElementCount:I

    move/from16 v0, v19

    if-le v0, v4, :cond_4

    add-int/lit8 v4, v19, 0x64

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lastBloomFilterElementCount:I

    .line 883
    if-eqz v22, :cond_5

    sget-object v9, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    .line 885
    .local v9, "bloomFlags":Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    :goto_4
    new-instance v3, Lcom/google/bitcoin/core/BloomFilter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lastBloomFilterElementCount:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterFPRate:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterTweak:J

    invoke-direct/range {v3 .. v9}, Lcom/google/bitcoin/core/BloomFilter;-><init>(IDJLcom/google/bitcoin/core/BloomFilter$BloomUpdate;)V

    .line 886
    .local v3, "filter":Lcom/google/bitcoin/core/BloomFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/PeerFilterProvider;

    .line 887
    .restart local v10    # "p":Lcom/google/bitcoin/core/PeerFilterProvider;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/bitcoin/core/PeerGroup;->lastBloomFilterElementCount:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterFPRate:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterTweak:J

    invoke-interface/range {v10 .. v15}, Lcom/google/bitcoin/core/PeerFilterProvider;->getBloomFilter(IDJ)Lcom/google/bitcoin/core/BloomFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/BloomFilter;->merge(Lcom/google/bitcoin/core/BloomFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 917
    .end local v3    # "filter":Lcom/google/bitcoin/core/BloomFilter;
    .end local v9    # "bloomFlags":Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    .end local v10    # "p":Lcom/google/bitcoin/core/PeerFilterProvider;
    .end local v17    # "earliestKeyTimeSecs":J
    .end local v19    # "elements":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "requiresUpdateAll":Z
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 882
    .restart local v17    # "earliestKeyTimeSecs":J
    .restart local v19    # "elements":I
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "requiresUpdateAll":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lastBloomFilterElementCount:I

    goto :goto_3

    .line 883
    :cond_5
    sget-object v9, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    goto :goto_4

    .line 889
    .restart local v3    # "filter":Lcom/google/bitcoin/core/BloomFilter;
    .restart local v9    # "bloomFlags":Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/BloomFilter;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v16, 0x1

    .line 890
    .local v16, "changed":Z
    :goto_6
    const/16 v23, 0x0

    .line 892
    .local v23, "send":Z
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    .line 894
    sget-object v4, Lcom/google/bitcoin/core/PeerGroup$15;->$SwitchMap$com$google$bitcoin$core$PeerGroup$FilterRecalculateMode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 900
    :goto_7
    if-eqz v23, :cond_9

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/Peer;

    .line 902
    .local v21, "peer":Lcom/google/bitcoin/core/Peer;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Peer;->setBloomFilter(Lcom/google/bitcoin/core/BloomFilter;)V

    goto :goto_8

    .line 889
    .end local v16    # "changed":Z
    .end local v21    # "peer":Lcom/google/bitcoin/core/Peer;
    .end local v23    # "send":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_6

    .line 895
    .restart local v16    # "changed":Z
    .restart local v23    # "send":Z
    :pswitch_0
    move/from16 v23, v16

    goto :goto_7

    .line 896
    :pswitch_1
    const/16 v23, 0x0

    goto :goto_7

    .line 897
    :pswitch_2
    const/16 v23, 0x1

    goto :goto_7

    .line 905
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v4, :cond_9

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/AbstractBlockChain;->resetFalsePositiveEstimate()V

    .line 912
    .end local v3    # "filter":Lcom/google/bitcoin/core/BloomFilter;
    .end local v9    # "bloomFlags":Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    .end local v16    # "changed":Z
    .end local v23    # "send":Z
    :cond_9
    const-wide/32 v4, 0x93a80

    sub-long v17, v17, v4

    .line 915
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/PeerGroup;->setFastCatchupTimeSecs(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lcom/google/bitcoin/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 844
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->walletEventListener:Lcom/google/bitcoin/core/AbstractWalletEventListener;

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Wallet;->setTransactionBroadcaster(Lcom/google/bitcoin/core/TransactionBroadcaster;)V

    .line 847
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 670
    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 673
    :cond_0
    return-void
.end method

.method protected selectDownloadPeer(Ljava/util/List;)Lcom/google/bitcoin/core/Peer;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;)",
            "Lcom/google/bitcoin/core/Peer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;"
    const/4 v9, 0x0

    .line 1515
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1549
    :goto_0
    return-object v9

    .line 1518
    :cond_0
    invoke-static {p1}, Lcom/google/bitcoin/core/PeerGroup;->getMostCommonChainHeight(Ljava/util/List;)I

    move-result v5

    .line 1519
    .local v5, "mostCommonChainHeight":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/Peer;

    .line 1521
    .local v7, "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Peer;->getBestHeight()J

    move-result-wide v10

    int-to-long v12, v5

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1527
    .end local v7    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_2
    const/4 v3, 0x0

    .local v3, "highestVersion":I
    const/4 v8, 0x0

    .line 1529
    .local v8, "preferredVersion":I
    const v0, 0x11170

    .line 1530
    .local v0, "PREFERRED_VERSION":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/Peer;

    .line 1531
    .restart local v7    # "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Peer;->getPeerVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v10

    iget v10, v10, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1532
    const v10, 0x11170

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_2

    .line 1534
    .end local v7    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v2, "candidates2":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/Peer;

    .line 1536
    .restart local v7    # "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Peer;->getPeerVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v10

    iget v10, v10, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    if-lt v10, v8, :cond_4

    .line 1537
    new-instance v6, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;

    invoke-direct {v6, v9}, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;-><init>(Lcom/google/bitcoin/core/PeerGroup$1;)V

    .line 1538
    .local v6, "pap":Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;
    iput-object v7, v6, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;->peer:Lcom/google/bitcoin/core/Peer;

    .line 1539
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Peer;->getPingTime()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;->pingTime:J

    .line 1540
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1544
    .end local v6    # "pap":Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;
    .end local v7    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_5
    new-instance v9, Lcom/google/bitcoin/core/PeerGroup$14;

    invoke-direct {v9, p0}, Lcom/google/bitcoin/core/PeerGroup$14;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1549
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;

    iget-object v9, v9, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;->peer:Lcom/google/bitcoin/core/Peer;

    goto/16 :goto_0
.end method

.method public setBloomFilterFalsePositiveRate(D)V
    .locals 2
    .param p1, "bloomFilterFPRate"    # D

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 933
    :try_start_0
    iput-wide p1, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilterFPRate:D

    .line 934
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->recalculateFastCatchupAndFilter(Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 938
    return-void

    .line 936
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .prologue
    .line 1005
    iput p1, p0, Lcom/google/bitcoin/core/PeerGroup;->vConnectTimeoutMillis:I

    .line 1006
    return-void
.end method

.method public setDownloadTxDependencies(Z)V
    .locals 2
    .param p1, "downloadTxDependencies"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 392
    :try_start_0
    iput-boolean p1, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadTxDependencies:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 396
    return-void

    .line 394
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setFastCatchupTimeSecs(J)V
    .locals 4
    .param p1, "secondsSinceEpoch"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1200
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1202
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Fast catchup is incompatible with fully verifying"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1203
    iput-wide p1, p0, Lcom/google/bitcoin/core/PeerGroup;->fastCatchupTimeSecs:J

    .line 1204
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-eqz v2, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->bloomFilter:Lcom/google/bitcoin/core/BloomFilter;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, p1, p2, v0}, Lcom/google/bitcoin/core/Peer;->setDownloadParameters(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1210
    return-void

    :cond_2
    move v2, v1

    .line 1202
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1205
    goto :goto_1

    .line 1208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMaxConnections(I)V
    .locals 3
    .param p1, "maxConnections"    # I

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 371
    :try_start_0
    iput p1, p0, Lcom/google/bitcoin/core/PeerGroup;->maxConnections:I

    .line 372
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerGroup;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v1}, Lcom/google/bitcoin/net/ClientConnectionManager;->getConnectedClientCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 378
    .local v0, "adjustment":I
    if-lez v0, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/google/bitcoin/core/PeerGroup;->triggerConnections()V

    .line 381
    :cond_2
    if-gez v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    neg-int v2, v0

    invoke-interface {v1, v2}, Lcom/google/bitcoin/net/ClientConnectionManager;->closeConnections(I)V

    goto :goto_0

    .line 374
    .end local v0    # "adjustment":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setMinBroadcastConnections(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1357
    :try_start_0
    iput p1, p0, Lcom/google/bitcoin/core/PeerGroup;->minBroadcastConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1361
    return-void

    .line 1359
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMinRequiredProtocolVersion(I)V
    .locals 0
    .param p1, "minRequiredProtocolVersion"    # I

    .prologue
    .line 1467
    iput p1, p0, Lcom/google/bitcoin/core/PeerGroup;->vMinRequiredProtocolVersion:I

    .line 1468
    return-void
.end method

.method public setPingIntervalMsec(J)V
    .locals 2
    .param p1, "pingIntervalMsec"    # J

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1456
    :try_start_0
    iput-wide p1, p0, Lcom/google/bitcoin/core/PeerGroup;->pingIntervalMsec:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1460
    return-void

    .line 1458
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/bitcoin/core/PeerGroup;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "comments"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    if-nez v3, :cond_0

    move v0, v2

    .line 499
    .local v0, "height":I
    :goto_0
    new-instance v1, Lcom/google/bitcoin/core/VersionMessage;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v3, v0, v2}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V

    .line 500
    .local v1, "ver":Lcom/google/bitcoin/core/VersionMessage;
    invoke-direct {p0, v1}, Lcom/google/bitcoin/core/PeerGroup;->updateVersionMessageRelayTxesBeforeFilter(Lcom/google/bitcoin/core/VersionMessage;)V

    .line 501
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/bitcoin/core/VersionMessage;->appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/PeerGroup;->setVersionMessage(Lcom/google/bitcoin/core/VersionMessage;)V

    .line 503
    return-void

    .line 498
    .end local v0    # "height":I
    .end local v1    # "ver":Lcom/google/bitcoin/core/VersionMessage;
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup;->chain:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setVersionMessage(Lcom/google/bitcoin/core/VersionMessage;)V
    .locals 2
    .param p1, "ver"    # Lcom/google/bitcoin/core/VersionMessage;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup;->versionMessage:Lcom/google/bitcoin/core/VersionMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    return-void

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected shutDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->vPingTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 765
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v2}, Lcom/google/bitcoin/net/ClientConnectionManager;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 766
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v2}, Lcom/google/bitcoin/net/ClientConnectionManager;->awaitTerminated()V

    .line 767
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .line 768
    .local v1, "peerDiscovery":Lcom/google/bitcoin/net/discovery/PeerDiscovery;
    invoke-interface {v1}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->shutdown()V

    goto :goto_0

    .line 770
    .end local v1    # "peerDiscovery":Lcom/google/bitcoin/net/discovery/PeerDiscovery;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    if-eqz v2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v2}, Lcom/subgraph/orchid/TorClient;->stop()V

    .line 773
    :cond_1
    return-void
.end method

.method public startBlockChainDownload(Lcom/google/bitcoin/core/PeerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1019
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadPeer:Lcom/google/bitcoin/core/Peer;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Peer;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 1021
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    .line 1025
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Peer;

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownloadFromPeer(Lcom/google/bitcoin/core/Peer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1031
    return-void

    .line 1029
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected startUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Peer pinging thread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->vPingTimer:Ljava/util/Timer;

    .line 749
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    if-eqz v0, :cond_0

    .line 750
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "Starting Tor/Orchid ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->start()V

    .line 752
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/TorClient;->waitUntilReady(J)V

    .line 753
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "Tor ready"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v0}, Lcom/google/bitcoin/net/ClientConnectionManager;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 756
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v0}, Lcom/google/bitcoin/net/ClientConnectionManager;->awaitRunning()V

    .line 757
    invoke-direct {p0}, Lcom/google/bitcoin/core/PeerGroup;->triggerConnections()V

    .line 758
    return-void
.end method

.method protected triggerShutdown()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/bitcoin/core/PeerGroup$8;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/core/PeerGroup$8;-><init>(Lcom/google/bitcoin/core/PeerGroup;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 782
    return-void
.end method

.method waitForJobQueue()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 677
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 678
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->jobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/google/bitcoin/core/PeerGroup$7;

    invoke-direct {v2, p0, v0}, Lcom/google/bitcoin/core/PeerGroup$7;-><init>(Lcom/google/bitcoin/core/PeerGroup;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 684
    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 685
    return-void
.end method

.method public waitForPeers(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "numPeers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/PeerGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 1311
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1314
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1325
    :goto_0
    return-object v0

    .line 1314
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1316
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1317
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/PeerGroup;>;"
    new-instance v1, Lcom/google/bitcoin/core/PeerGroup$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/bitcoin/core/PeerGroup$12;-><init>(Lcom/google/bitcoin/core/PeerGroup;ILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/PeerGroup;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V

    goto :goto_0

    .line 1314
    .end local v0    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/PeerGroup;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
