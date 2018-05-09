.class public Lcom/google/bitcoin/net/discovery/TorDiscovery;
.super Ljava/lang/Object;
.source "TorDiscovery.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;
    }
.end annotation


# static fields
.field public static final MINIMUM_ROUTER_COUNT:I = 0x4

.field public static final MINIMUM_ROUTER_LOOKUP_COUNT:I = 0xa

.field public static final RECEIVE_RETRIES:I = 0x3

.field public static final RESOLVE_CNAME:I = 0x0

.field public static final RESOLVE_ERROR:I = 0xf0

.field public static final RESOLVE_IPV4:I = 0x4

.field public static final RESOLVE_IPV6:I = 0x6

.field public static final RESOLVE_STREAM_ID:I = 0x1000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final hostNames:[Ljava/lang/String;

.field private final netParams:Lcom/google/bitcoin/core/NetworkParameters;

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V
    .locals 1
    .param p1, "netParams"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "torClient"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getDnsSeeds()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/bitcoin/net/discovery/TorDiscovery;-><init>([Ljava/lang/String;Lcom/google/bitcoin/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V

    .line 88
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/google/bitcoin/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V
    .locals 2
    .param p1, "hostNames"    # [Ljava/lang/String;
    .param p2, "netParams"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p3, "torClient"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->netParams:Lcom/google/bitcoin/core/NetworkParameters;

    .line 101
    iput-object p3, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 102
    invoke-virtual {p3}, Lcom/subgraph/orchid/TorClient;->getConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object v0

    invoke-virtual {p3}, Lcom/subgraph/orchid/TorClient;->getDirectory()Lcom/subgraph/orchid/Directory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/net/discovery/TorDiscovery;)Lcom/subgraph/orchid/TorClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/discovery/TorDiscovery;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->torClient:Lcom/subgraph/orchid/TorClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/discovery/TorDiscovery;
    .param p1, "x1"    # Lcom/subgraph/orchid/Circuit;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->lookup(Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized createThreadPool(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircuits(JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)Ljava/util/List;
    .locals 10
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 145
    .local p4, "routers":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->createThreadPool(I)V

    .line 148
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    .local v0, "circuitFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/subgraph/orchid/Circuit;>;>;"
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/Router;

    .line 150
    .local v5, "router":Lcom/subgraph/orchid/Router;
    iget-object v7, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v8, Lcom/google/bitcoin/net/discovery/TorDiscovery$1;

    invoke-direct {v8, p0, v5}, Lcom/google/bitcoin/net/discovery/TorDiscovery$1;-><init>(Lcom/google/bitcoin/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Router;)V

    invoke-interface {v7, v8}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "circuitFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/subgraph/orchid/Circuit;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "router":Lcom/subgraph/orchid/Router;
    :catchall_0
    move-exception v7

    invoke-direct {p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->shutdownThreadPool()V

    throw v7

    .line 157
    .restart local v0    # "circuitFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/subgraph/orchid/Circuit;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v6, 0x0

    .line 158
    .local v6, "timeouts":I
    :try_start_1
    iget-object v7, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v7, p1, p2, p3}, Lcom/google/common/util/concurrent/ListeningExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 160
    .local v3, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/subgraph/orchid/Circuit;>;"
    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v7

    if-nez v7, :cond_1

    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_1

    .line 165
    .end local v3    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/subgraph/orchid/Circuit;>;"
    :cond_2
    if-lez v6, :cond_3

    .line 166
    sget-object v7, Lcom/google/bitcoin/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    const-string v8, "{} DNS lookup circuits timed out"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v1, "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    invoke-direct {p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->shutdownThreadPool()V

    return-object v1

    .line 173
    .end local v1    # "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private lookup(Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;
    .param p2, "seed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 244
    const/16 v7, 0xb

    const/16 v8, 0x1000

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v9

    invoke-interface {p1, v7, v8, v9}, Lcom/subgraph/orchid/Circuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 245
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    invoke-interface {v0, p2}, Lcom/subgraph/orchid/RelayCell;->putString(Ljava/lang/String;)V

    .line 246
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Circuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v1, v7, :cond_5

    .line 250
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v3

    .line 251
    .local v3, "res":Lcom/subgraph/orchid/RelayCell;
    if-eqz v3, :cond_4

    .line 252
    :cond_0
    invoke-interface {v3}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v7

    if-lez v7, :cond_5

    .line 253
    invoke-interface {v3}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v5

    .line 254
    .local v5, "type":I
    invoke-interface {v3}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v2

    .line 255
    .local v2, "len":I
    new-array v6, v2, [B

    .line 256
    .local v6, "value":[B
    invoke-interface {v3, v6}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    .line 257
    invoke-interface {v3}, Lcom/subgraph/orchid/RelayCell;->getInt()I

    move-result v4

    .line 259
    .local v4, "ttl":I
    if-eqz v5, :cond_1

    const/16 v7, 0xf0

    if-lt v5, v7, :cond_2

    .line 261
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    :cond_2
    const/4 v7, 0x4

    if-eq v5, v7, :cond_3

    const/4 v7, 0x6

    if-ne v5, v7, :cond_0

    .line 263
    :cond_3
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    return-object v7

    .line 249
    .end local v2    # "len":I
    .end local v4    # "ttl":I
    .end local v5    # "type":I
    .end local v6    # "value":[B
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "res":Lcom/subgraph/orchid/RelayCell;
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not look up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private lookupAddresses(JLjava/util/concurrent/TimeUnit;Ljava/util/List;)Ljava/util/Collection;
    .locals 21
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 183
    .local p4, "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->createThreadPool(I)V

    .line 186
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 187
    .local v13, "lookupFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/subgraph/orchid/Circuit;

    .line 188
    .local v6, "circuit":Lcom/subgraph/orchid/Circuit;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v16, v5, v10

    .line 189
    .local v16, "seed":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-object/from16 v18, v0

    new-instance v19, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v6, v2}, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;-><init>(Lcom/google/bitcoin/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 197
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "circuit":Lcom/subgraph/orchid/Circuit;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v16    # "seed":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListeningExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 198
    const/16 v17, 0x0

    .line 199
    .local v17, "timeouts":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 200
    .local v8, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;"
    invoke-interface {v8}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v18

    if-nez v18, :cond_2

    .line 201
    add-int/lit8 v17, v17, 0x1

    .line 202
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v8, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 228
    .end local v8    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "lookupFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;>;"
    .end local v17    # "timeouts":I
    :catchall_0
    move-exception v18

    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->shutdownThreadPool()V

    throw v18

    .line 205
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lookupFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;>;"
    .restart local v17    # "timeouts":I
    :cond_3
    if-lez v17, :cond_4

    .line 206
    :try_start_1
    sget-object v18, Lcom/google/bitcoin/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    const-string v19, "{} DNS lookup circuits timed out"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_4
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v15, "lookups":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;"
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 215
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 217
    .local v14, "lookupMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Ljava/net/InetSocketAddress;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;

    .line 218
    .local v12, "lookup":Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v0, v12, Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;->address:Ljava/net/InetAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->netParams:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 219
    .local v4, "address":Ljava/net/InetSocketAddress;
    iget-object v0, v12, Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;->router:Lcom/subgraph/orchid/Router;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 223
    .end local v4    # "address":Ljava/net/InetSocketAddress;
    .end local v12    # "lookup":Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;
    .end local v14    # "lookupMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Ljava/net/InetSocketAddress;>;"
    .end local v15    # "lookups":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;"
    :catch_0
    move-exception v7

    .line 225
    .local v7, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .end local v7    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v14    # "lookupMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Ljava/net/InetSocketAddress;>;"
    .restart local v15    # "lookups":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;>;"
    :cond_5
    :try_start_4
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v18

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->shutdownThreadPool()V

    return-object v18
.end method

.method private declared-synchronized shutdownThreadPool()V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->shutdownNow()Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 10
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v7, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    if-nez v7, :cond_0

    .line 117
    new-instance v7, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    const-string v8, "Unable to find any peers via DNS"

    invoke-direct {v7, v8}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 120
    .local v6, "routers":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, "dummyTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 124
    iget-object v7, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-virtual {v7, v3}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object v5

    .line 125
    .local v5, "router":Lcom/subgraph/orchid/Router;
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v5    # "router":Lcom/subgraph/orchid/Router;
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->getCircuits(JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->lookupAddresses(JLjava/util/concurrent/TimeUnit;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    .line 133
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    .line 134
    new-instance v7, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find enough peers via Tor - got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v2    # "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    :catch_0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v7, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    invoke-direct {v7, v4}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 135
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .restart local v2    # "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Circuit;>;"
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    .local v0, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->shutdownThreadPool()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
