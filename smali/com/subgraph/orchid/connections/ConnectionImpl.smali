.class public Lcom/subgraph/orchid/connections/ConnectionImpl;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Connection;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final CONNECTION_IDLE_TIMEOUT:I = 0x493e0

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x1388

.field private static final connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectLock:Ljava/lang/Object;

.field private final connectionControlCells:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/subgraph/orchid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private currentId:I

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private input:Ljava/io/InputStream;

.field private volatile isClosed:Z

.field private isConnected:Z

.field private final isDirectoryConnection:Z

.field private final lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

.field private output:Ljava/io/OutputStream;

.field private final readCellsThread:Ljava/lang/Thread;

.field private final router:Lcom/subgraph/orchid/Router;

.field private final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    .line 48
    invoke-static {v1, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljavax/net/ssl/SSLSocket;Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/circuits/TorInitializationTracker;Z)V
    .locals 3
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "router"    # Lcom/subgraph/orchid/Router;
    .param p4, "tracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;
    .param p5, "isDirectoryConnection"    # Z

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 70
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    .line 71
    iput-object p3, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->createReadCellsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsThread:Ljava/lang/Thread;

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    .line 76
    iput-object p4, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 77
    iput-boolean p5, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    .line 78
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializeCurrentCircuitId()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/connections/ConnectionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/connections/ConnectionImpl;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private connectSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_0

    .line 146
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->routerToSocketAddress(Lcom/subgraph/orchid/Router;)Ljava/net/SocketAddress;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_1

    .line 156
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    goto :goto_1
.end method

.method private createReadCellsRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionImpl$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/connections/ConnectionImpl$1;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;)V

    return-object v0
.end method

.method private doConnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectSocket()V

    .line 136
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v1, p0, v2}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->createHandshake(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)Lcom/subgraph/orchid/connections/ConnectionHandshake;

    move-result-object v0

    .line 137
    .local v0, "handshake":Lcom/subgraph/orchid/connections/ConnectionHandshake;
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->input:Ljava/io/InputStream;

    .line 138
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->output:Ljava/io/OutputStream;

    .line 139
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->runHandshake()V

    .line 141
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    .line 142
    return-void
.end method

.method private getIdleMilliseconds()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 316
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private incrementNextId()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 107
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 109
    :cond_0
    return-void
.end method

.method private initializeCurrentCircuitId()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    .line 83
    .local v0, "random":Lcom/subgraph/orchid/crypto/TorRandom;
    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 84
    return-void
.end method

.method private notifyCircuitsLinkClosed()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method private processCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    .line 252
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    .line 254
    .local v0, "command":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processRelayCell(Lcom/subgraph/orchid/Cell;)V

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 270
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processControlCell(Lcom/subgraph/orchid/Cell;)V

    goto :goto_0

    .line 264
    :sswitch_1
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private processControlCell(Lcom/subgraph/orchid/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 290
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;

    .line 292
    .local v0, "circuit":Lcom/subgraph/orchid/Circuit;
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Circuit;->deliverControlCell(Lcom/subgraph/orchid/Cell;)V

    .line 295
    :cond_0
    monitor-exit v2

    .line 296
    return-void

    .line 295
    .end local v0    # "circuit":Lcom/subgraph/orchid/Circuit;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processRelayCell(Lcom/subgraph/orchid/Cell;)V
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v2

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;

    .line 281
    .local v0, "circuit":Lcom/subgraph/orchid/Circuit;
    if-nez v0, :cond_0

    .line 282
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not deliver relay cell for circuit id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Circuit not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 283
    monitor-exit v2

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Circuit;->deliverRelayCell(Lcom/subgraph/orchid/Cell;)V

    .line 286
    monitor-exit v2

    goto :goto_0

    .end local v0    # "circuit":Lcom/subgraph/orchid/Circuit;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readCellsLoop()V
    .locals 5

    .prologue
    .line 224
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->recvCell()Lcom/subgraph/orchid/Cell;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lcom/subgraph/orchid/ConnectionIOException;
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->notifyCircuitsLinkClosed()V

    .line 235
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionIOException;
    :cond_0
    return-void

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Lcom/subgraph/orchid/TorException;
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Tor exception reading and processing cells: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recvCell()Lcom/subgraph/orchid/Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->input:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readFromInputStream(Ljava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/EOFException;
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 190
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    invoke-direct {v1}, Lcom/subgraph/orchid/ConnectionIOException;-><init>()V

    throw v1

    .line 191
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    if-nez v1, :cond_0

    .line 193
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading cell from connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 196
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private routerToSocketAddress(Lcom/subgraph/orchid/Router;)Ljava/net/SocketAddress;
    .locals 3
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 166
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1
.end method

.method private updateLastActivity()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 310
    return-void
.end method


# virtual methods
.method public bindCircuit(Lcom/subgraph/orchid/Circuit;)I
    .locals 4
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v2

    .line 96
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    iget v3, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->incrementNextId()V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 98
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 99
    .local v0, "id":I
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->incrementNextId()V

    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method closeSocket()V
    .locals 4

    .prologue
    .line 202
    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    .line 204
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z

    if-eqz v1, :cond_0

    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->doConnect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/subgraph/orchid/ConnectionHandshakeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z

    .line 131
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    new-instance v1, Lcom/subgraph/orchid/ConnectionTimeoutException;

    invoke-direct {v1}, Lcom/subgraph/orchid/ConnectionTimeoutException;-><init>()V

    throw v1

    .line 120
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/subgraph/orchid/ConnectionFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 124
    new-instance v1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "Handshake interrupted"

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 126
    .local v0, "e":Lcom/subgraph/orchid/ConnectionHandshakeException;
    throw v0

    .line 127
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionHandshakeException;
    :catch_4
    move-exception v0

    .line 128
    .local v0, "e":Lcom/subgraph/orchid/ConnectionIOException;
    new-instance v1, Lcom/subgraph/orchid/ConnectionFailedException;

    invoke-virtual {v0}, Lcom/subgraph/orchid/ConnectionIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 6
    .param p1, "renderer"    # Lcom/subgraph/orchid/dashboard/DashboardRenderer;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v2

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 333
    .local v0, "circuitCount":I
    monitor-exit v2

    .line 334
    if-nez v0, :cond_0

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 333
    .end local v0    # "circuitCount":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 337
    .restart local v0    # "circuitCount":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  [Connection router="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " circuits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getIdleMilliseconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method idleCloseCheck()V
    .locals 7

    .prologue
    .line 299
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getIdleMilliseconds()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 301
    .local v0, "needClose":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 302
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on idle timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 305
    :cond_0
    monitor-exit v2

    .line 306
    return-void

    .line 300
    .end local v0    # "needClose":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    return v0
.end method

.method readConnectionControlCell()Lcom/subgraph/orchid/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Cell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 246
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    invoke-direct {v1}, Lcom/subgraph/orchid/ConnectionIOException;-><init>()V

    throw v1
.end method

.method public removeCircuit(Lcom/subgraph/orchid/Circuit;)V
    .locals 3
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getCircuitId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendCell(Lcom/subgraph/orchid/Cell;)V
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    const-string v2, "Cannot send cell because connection is not connected"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    .line 174
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->output:Ljava/io/OutputStream;

    monitor-enter v2

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->output:Ljava/io/OutputStream;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    monitor-exit v2

    .line 183
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException writing cell to connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 180
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
