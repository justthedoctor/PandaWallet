.class public Lcom/subgraph/orchid/circuits/ExitCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "ExitCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ExitCircuit;


# instance fields
.field private final exitRouter:Lcom/subgraph/orchid/Router;

.field private final failedExitRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)V
    .locals 1
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .param p2, "exitRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    .line 30
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 1
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "prechosenPath":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    .line 26
    return-void
.end method


# virtual methods
.method public canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 3
    .param p1, "target"    # Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    monitor-exit v1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->isMarkedForClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result v0

    goto :goto_0
.end method

.method public canHandleExitToPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result v0

    return v0
.end method

.method protected choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .locals 1
    .param p1, "pathChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithExit(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "Exit"

    return-object v0
.end method

.method public openExitStream(Lcom/subgraph/orchid/data/IPv4Address;IJ)Lcom/subgraph/orchid/Stream;
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    return-object v0
.end method

.method public openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v1

    .line 41
    .local v1, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/subgraph/orchid/circuits/StreamImpl;->openExit(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :goto_0
    return-object v1

    .line 43
    .restart local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    goto :goto_0
.end method

.method public recordFailedExitTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V
    .locals 2
    .param p1, "target"    # Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
