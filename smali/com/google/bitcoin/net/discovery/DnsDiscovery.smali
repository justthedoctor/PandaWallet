.class public Lcom/google/bitcoin/net/discovery/DnsDiscovery;
.super Ljava/lang/Object;
.source "DnsDiscovery.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final hostNames:[Ljava/lang/String;

.field private final netParams:Lcom/google/bitcoin/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "netParams"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getDnsSeeds()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/bitcoin/net/discovery/DnsDiscovery;-><init>([Ljava/lang/String;Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 53
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "hostNames"    # [Ljava/lang/String;
    .param p2, "netParams"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->netParams:Lcom/google/bitcoin/core/NetworkParameters;

    .line 64
    return-void
.end method


# virtual methods
.method public getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 20
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 68
    new-instance v16, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    const-string v17, "Unable to find any peers via DNS"

    invoke-direct/range {v16 .. v17}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    .line 74
    .local v15, "threadPool":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 75
    .local v14, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<[Ljava/net/InetAddress;>;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v13, v5, v10

    .line 76
    .local v13, "seed":Ljava/lang/String;
    new-instance v16, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;-><init>(Lcom/google/bitcoin/net/discovery/DnsDiscovery;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 81
    .end local v13    # "seed":Ljava/lang/String;
    :cond_1
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface {v15, v14, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v8

    .line 82
    .local v8, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 83
    .local v4, "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    const/4 v9, 0x0

    .end local v5    # "arr$":[Ljava/lang/String;
    .local v9, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_4

    .line 84
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    .line 85
    .local v7, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 86
    sget-object v16, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->log:Lorg/slf4j/Logger;

    const-string v17, "{} timed out"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    invoke-interface/range {v16 .. v18}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 91
    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .local v11, "inetAddresses":[Ljava/net/InetAddress;
    move-object v5, v11

    .local v5, "arr$":[Ljava/net/InetAddress;
    :try_start_2
    array-length v12, v5

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_2

    aget-object v3, v5, v10

    .line 97
    .local v3, "addr":Ljava/net/InetAddress;
    new-instance v16, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->netParams:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 92
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v11    # "inetAddresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v16, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->log:Lorg/slf4j/Logger;

    const-string v17, "Failed to look up DNS seeds from {}: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;->hostNames:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v16 .. v19}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 105
    .end local v4    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    .end local v6    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v7    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;"
    .end local v8    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<[Ljava/net/InetAddress;>;>;"
    :catch_1
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v16, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v16

    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v16

    .line 100
    .restart local v4    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    .restart local v8    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;>;"
    .restart local v9    # "i":I
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<[Ljava/net/InetAddress;>;>;"
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_5

    .line 101
    new-instance v16, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    const-string v17, "Unable to find any peers via DNS"

    invoke-direct/range {v16 .. v17}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 102
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 103
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/net/InetSocketAddress;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/net/InetSocketAddress;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v16
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
