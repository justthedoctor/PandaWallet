.class public Lcom/subgraph/orchid/circuits/PendingExitStreams;
.super Ljava/lang/Object;
.source "PendingExitStreams.java"


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final lock:Ljava/lang/Object;

.field private final pendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    .line 24
    return-void
.end method

.method private handleRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;
    .locals 2
    .param p1, "request"    # Lcom/subgraph/orchid/circuits/StreamExitRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getStream()Lcom/subgraph/orchid/Stream;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->resetForRetry()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->resetForRetry()V

    goto :goto_0
.end method

.method private openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;
    .locals 4
    .param p1, "request"    # Lcom/subgraph/orchid/circuits/StreamExitRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getCircuitStreamTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getCircuitStreamTimeout()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setStreamTimeout(J)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->handleRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 46
    :try_start_2
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0

    .line 48
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method getUnreservedPendingRequests()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamExitRequest;>;"
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 70
    .local v1, "request":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-object v2
.end method

.method openExitStream(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;
    .locals 2
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;Lcom/subgraph/orchid/data/IPv4Address;I)V

    .line 28
    .local v0, "request":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    return-object v1
.end method

.method openExitStream(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 33
    .local v0, "request":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    return-object v1
.end method
