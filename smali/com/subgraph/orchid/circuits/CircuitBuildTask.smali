.class public Lcom/subgraph/orchid/circuits/CircuitBuildTask;
.super Ljava/lang/Object;
.source "CircuitBuildTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private connection:Lcom/subgraph/orchid/Connection;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

.field private final extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;Z)V
    .locals 1
    .param p1, "request"    # Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
    .param p2, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p3, "ntorEnabled"    # Z

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 2
    .param p1, "request"    # Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
    .param p2, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p3, "ntorEnabled"    # Z
    .param p4, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    .line 33
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 34
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 35
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getCircuit()Lcom/subgraph/orchid/circuits/CircuitImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 36
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getCircuit()Lcom/subgraph/orchid/circuits/CircuitImpl;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/subgraph/orchid/circuits/CircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    .line 37
    return-void
.end method

.method private buildCircuit(Lcom/subgraph/orchid/Router;)V
    .locals 5
    .param p1, "firstRouter"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/TorException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->notifyInitialization()V

    .line 103
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v3, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createFastTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    .line 104
    .local v1, "firstNode":Lcom/subgraph/orchid/CircuitNode;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v3, v1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V

    .line 106
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v4, v2}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathElement(I)Lcom/subgraph/orchid/Router;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/circuits/CircuitExtender;->extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    .line 108
    .local v0, "extendedNode":Lcom/subgraph/orchid/CircuitNode;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v3, v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "extendedNode":Lcom/subgraph/orchid/CircuitNode;
    :cond_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V

    .line 111
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->notifyDone()V

    .line 112
    return-void
.end method

.method private circuitBuildFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuitBuildFailed(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildFailed()V

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    .line 93
    :cond_0
    return-void
.end method

.method private connectionFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->connectionFailed(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildFailed()V

    .line 85
    return-void
.end method

.method private notifyDone()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 126
    :cond_0
    return-void
.end method

.method private notifyInitialization()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    .line 118
    .local v0, "event":I
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 120
    .end local v0    # "event":I
    :cond_0
    return-void

    .line 116
    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method private openEntryNodeConnection(Lcom/subgraph/orchid/Router;)V
    .locals 2
    .param p1, "firstRouter"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/ConnectionCache;->getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->bindToConnection(Lcom/subgraph/orchid/Connection;)V

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->connectionCompleted(Lcom/subgraph/orchid/Connection;)V

    .line 99
    return-void
.end method

.method private pathToString(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;)Ljava/lang/String;
    .locals 5
    .param p1, "ccr"    # Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 74
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 75
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "firstRouter":Lcom/subgraph/orchid/Router;
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildStart()V

    .line 43
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->choosePath()V

    .line 44
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening a new circuit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-direct {p0, v4}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->pathToString(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathElement(I)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->openEntryNodeConnection(Lcom/subgraph/orchid/Router;)V

    .line 49
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->buildCircuit(Lcom/subgraph/orchid/Router;)V

    .line 50
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildCompleted()V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/ConnectionFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/ConnectionHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 68
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/subgraph/orchid/ConnectionTimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionTimeoutException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Lcom/subgraph/orchid/ConnectionFailedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subgraph/orchid/ConnectionFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionFailedException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Lcom/subgraph/orchid/ConnectionHandshakeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake error connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionHandshakeException;
    :catch_3
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 59
    const-string v2, "Circuit building thread interrupted"

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v0

    .line 61
    .local v0, "e":Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
    :catch_5
    move-exception v0

    .line 63
    .local v0, "e":Lcom/subgraph/orchid/TorException;
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    .end local v0    # "e":Lcom/subgraph/orchid/TorException;
    :catch_6
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception while building circuit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
