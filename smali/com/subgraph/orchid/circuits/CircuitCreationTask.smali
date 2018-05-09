.class public Lcom/subgraph/orchid/circuits/CircuitCreationTask;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_CIRCUIT_DIRTINESS:I = 0x12c

.field private static final MAX_PENDING_CIRCUITS:I = 0x4

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private final internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

.field private final lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

.field private notEnoughDirectoryInformationWarningCounter:I

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private final predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p3, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p4, "pathChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .param p5, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .param p6, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    .line 49
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->config:Lcom/subgraph/orchid/TorConfig;

    .line 50
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    .line 51
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 52
    iput-object p5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 53
    iput-object p6, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 54
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    .line 56
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    .line 57
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createInternalCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    .line 58
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-direct {v0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/CircuitCreationTask;Lcom/subgraph/orchid/Circuit;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/CircuitCreationTask;
    .param p1, "x1"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitOpenedHandler(Lcom/subgraph/orchid/Circuit;)V

    return-void
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    return-object v0
.end method

.method private assignPendingStreamsToActiveCircuits()V
    .locals 5

    .prologue
    .line 78
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "pendingExitStreams":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamExitRequest;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getRandomlyOrderedListOfExitCircuits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/ExitCircuit;

    .line 83
    .local v0, "c":Lcom/subgraph/orchid/ExitCircuit;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/subgraph/orchid/circuits/StreamExitRequest;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-direct {p0, v0, v4}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->attemptHandleStreamRequest(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private attemptHandleStreamRequest(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)Z
    .locals 1
    .param p1, "c"    # Lcom/subgraph/orchid/ExitCircuit;
    .param p2, "request"    # Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .prologue
    .line 92
    invoke-interface {p1, p2}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->reserveRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildCircuitIfNeeded()V
    .locals 8

    .prologue
    .line 145
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v6}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "pendingExitStreams":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamExitRequest;>;"
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v6}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->getPredictedPortTargets()Ljava/util/List;

    move-result-object v4

    .line 147
    .local v4, "predictedPorts":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/PredictedPortTarget;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "exitTargets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 149
    .local v5, "streamRequest":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I

    move-result v6

    if-nez v6, :cond_0

    .line 150
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v5    # "streamRequest":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/PredictedPortTarget;

    .line 154
    .local v3, "ppt":Lcom/subgraph/orchid/circuits/PredictedPortTarget;
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v3    # "ppt":Lcom/subgraph/orchid/circuits/PredictedPortTarget;
    :cond_3
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitToHandleExitTargets(Ljava/util/List;)V

    .line 159
    return-void
.end method

.method private buildCircuitToHandleExitTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "exitTargets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->haveMinimumRouterInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingCircuitCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 202
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building new circuit to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending streams and predicted ports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 206
    :cond_2
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchBuildTaskForTargets(Ljava/util/List;)V

    goto :goto_0
.end method

.method private checkCircuitsForCreation()V
    .locals 6

    .prologue
    .line 125
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->haveMinimumRouterInfo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    rem-int/lit8 v2, v2, 0x14

    if-nez v2, :cond_0

    .line 127
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v3, "Cannot build circuits because we don\'t have enough directory information"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "now":J
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v4}, Lcom/subgraph/orchid/TorConfig;->getNewCircuitPeriod()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 140
    .end local v0    # "now":J
    :cond_2
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitIfNeeded()V

    .line 141
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->maybeBuildInternalCircuit()V

    goto :goto_0
.end method

.method private checkExpiredPendingCircuits()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method private circuitOpenedHandler(Lcom/subgraph/orchid/Circuit;)V
    .locals 5
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 252
    instance-of v4, p1, Lcom/subgraph/orchid/ExitCircuit;

    if-nez v4, :cond_1

    .line 262
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 255
    check-cast v0, Lcom/subgraph/orchid/ExitCircuit;

    .line 256
    .local v0, "ec":Lcom/subgraph/orchid/ExitCircuit;
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v2

    .line 257
    .local v2, "pendingExitStreams":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamExitRequest;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 258
    .local v3, "req":Lcom/subgraph/orchid/circuits/StreamExitRequest;
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->reserveRequest()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    invoke-direct {p0, v0, v3}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    goto :goto_0
.end method

.method private countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I
    .locals 2
    .param p1, "target"    # Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;
    .param p2, "needClean"    # Z

    .prologue
    .line 179
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;ZLcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V

    .line 190
    .local v0, "filter":Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    return v1
.end method

.method private createCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-object v0
.end method

.method private createInternalCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-object v0
.end method

.method private expireOldCircuits()V
    .locals 6

    .prologue
    .line 108
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    new-instance v4, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;

    invoke-direct {v4, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v1

    .line 114
    .local v1, "circuits":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Circuit;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;

    .line 115
    .local v0, "c":Lcom/subgraph/orchid/Circuit;
    sget-object v3, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing idle dirty circuit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    check-cast v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    .end local v0    # "c":Lcom/subgraph/orchid/Circuit;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->markForClose()V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private launchBuildTaskForInternalCircuit()V
    .locals 6

    .prologue
    .line 170
    sget-object v3, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v4, "Launching new internal circuit"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v0, v3}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    .line 172
    .local v0, "circuit":Lcom/subgraph/orchid/circuits/InternalCircuitImpl;
    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 173
    .local v1, "request":Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
    new-instance v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;Z)V

    .line 174
    .local v2, "task":Lcom/subgraph/orchid/circuits/CircuitBuildTask;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->incrementPendingInternalCircuitCount()V

    .line 176
    return-void
.end method

.method private launchBuildTaskForTargets(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "exitTargets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-virtual {v4, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 211
    .local v1, "exitRouter":Lcom/subgraph/orchid/Router;
    if-nez v1, :cond_0

    .line 212
    sget-object v4, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v5, "Failed to select suitable exit node for targets"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->createNewExitCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object v0

    .line 217
    .local v0, "circuit":Lcom/subgraph/orchid/Circuit;
    new-instance v2, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v0, v5, v6}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 218
    .local v2, "request":Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
    new-instance v3, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 219
    .local v3, "task":Lcom/subgraph/orchid/circuits/CircuitBuildTask;
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/ExitCircuit;
    .param p2, "exitRequest"    # Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .prologue
    .line 103
    new-instance v0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;

    invoke-direct {v0, p1, p2}, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;-><init>(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    .line 104
    .local v0, "task":Lcom/subgraph/orchid/circuits/OpenExitStreamTask;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method private maybeBuildInternalCircuit()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->isInternalPredicted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getNeededCleanCircuitCount(Z)I

    move-result v0

    .line 164
    .local v0, "needed":I
    if-lez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchBuildTaskForInternalCircuit()V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method getCircuitPredictor()Lcom/subgraph/orchid/circuits/CircuitPredictor;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    return-object v0
.end method

.method predictPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    .line 75
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->expireOldCircuits()V

    .line 68
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->assignPendingStreamsToActiveCircuits()V

    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->checkExpiredPendingCircuits()V

    .line 70
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->checkCircuitsForCreation()V

    .line 71
    return-void
.end method
