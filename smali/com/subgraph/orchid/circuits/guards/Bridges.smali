.class public Lcom/subgraph/orchid/circuits/guards/Bridges;
.super Ljava/lang/Object;
.source "Bridges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bridgeRouters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bridgesInitialized:Z

.field private bridgesInitializing:Z

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

.field private final lock:Ljava/lang/Object;

.field private outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryDownloader;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directoryDownloader"    # Lcom/subgraph/orchid/DirectoryDownloader;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->config:Lcom/subgraph/orchid/TorConfig;

    .line 83
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    .line 85
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/guards/Bridges;)Lcom/subgraph/orchid/DirectoryDownloader;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/guards/Bridges;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/guards/Bridges;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/guards/Bridges;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/guards/Bridges;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/subgraph/orchid/circuits/guards/Bridges;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/guards/Bridges;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    return p1
.end method

.method private createBridgeFromLine(Lcom/subgraph/orchid/config/TorConfigBridgeLine;)Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
    .locals 3
    .param p1, "line"    # Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    .prologue
    .line 157
    new-instance v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;-><init>(Lcom/subgraph/orchid/data/IPv4Address;I)V

    .line 158
    .local v0, "bridge":Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 161
    :cond_0
    return-object v0
.end method

.method private createDownloadTasks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v3}, Lcom/subgraph/orchid/TorConfig;->getBridges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    .line 142
    .local v1, "line":Lcom/subgraph/orchid/config/TorConfigBridgeLine;
    new-instance v3, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->createBridgeFromLine(Lcom/subgraph/orchid/config/TorConfigBridgeLine;)Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;-><init>(Lcom/subgraph/orchid/circuits/guards/Bridges;Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v1    # "line":Lcom/subgraph/orchid/config/TorConfigBridgeLine;
    :cond_0
    return-object v2
.end method

.method private getCandidates(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/BridgeRouter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 122
    :cond_0
    return-object v1

    .line 116
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/BridgeRouter;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    .line 118
    .local v0, "br":Lcom/subgraph/orchid/BridgeRouter;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hasCandidates(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->getCandidates(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeBridges()V
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    const-string v1, "Initializing bridges..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    monitor-exit v1

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot download bridge descriptors because DirectoryDownload instance not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    .line 135
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->startAllDownloadTasks()V

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private startAllDownloadTasks()V
    .locals 6

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->createDownloadTasks()Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 151
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 154
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method chooseRandomBridge(Ljava/util/Set;)Lcom/subgraph/orchid/BridgeRouter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/BridgeRouter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    if-nez v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->initializeBridges()V

    .line 96
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->hasCandidates(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->getCandidates(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/BridgeRouter;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    sget-object v1, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    const-string v3, "Bridges enabled but no usable bridges configured"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    monitor-exit v2

    .line 104
    :goto_1
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/BridgeRouter;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
