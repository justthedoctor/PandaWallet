.class public Lcom/subgraph/orchid/circuits/CircuitIO;
.super Ljava/lang/Object;
.source "CircuitIO.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final CIRCUIT_BUILD_TIMEOUT_MS:J = 0x7530L

.field private static final CIRCUIT_RELAY_RESPONSE_TIMEOUT:J = 0x4e20L

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private final circuitId:I

.field private final connection:Lcom/subgraph/orchid/Connection;

.field private final controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/subgraph/orchid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z

.field private isMarkedForClose:Z

.field private final relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/subgraph/orchid/RelayCell;",
            ">;"
        }
    .end annotation
.end field

.field private final relaySendLock:Ljava/lang/Object;

.field private final streamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/subgraph/orchid/circuits/StreamImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/Connection;I)V
    .locals 1
    .param p1, "circuit"    # Lcom/subgraph/orchid/circuits/CircuitImpl;
    .param p2, "connection"    # Lcom/subgraph/orchid/Connection;
    .param p3, "circuitId"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 46
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    .line 47
    iput p3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private closeCircuit()V
    .locals 3

    .prologue
    .line 252
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing circuit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendDestroyCell(I)V

    .line 254
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    .line 255
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->setStateDestroyed()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z

    .line 257
    return-void
.end method

.method private decryptRelayCell(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getNodeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/CircuitNode;

    .line 74
    .local v1, "node":Lcom/subgraph/orchid/CircuitNode;
    invoke-interface {v1, p1}, Lcom/subgraph/orchid/CircuitNode;->decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {v1, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->createFromCell(Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v2

    return-object v2

    .line 78
    .end local v1    # "node":Lcom/subgraph/orchid/CircuitNode;
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 79
    new-instance v2, Lcom/subgraph/orchid/TorException;

    const-string v3, "Could not decrypt relay cell"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getLogLevelForCell(Lcom/subgraph/orchid/RelayCell;)Ljava/util/logging/Level;
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 214
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    :goto_0
    return-object v0

    .line 217
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getReceiveTimeout()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isBuilding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->remainingBuildTime()J

    move-result-wide v0

    .line 98
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4e20

    goto :goto_0
.end method

.method private logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 206
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/circuits/CircuitIO;->getLogLevelForCell(Lcom/subgraph/orchid/RelayCell;)Ljava/util/logging/Level;

    move-result-object v0

    .line 207
    .local v0, "level":Ljava/util/logging/Level;
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processCircuitSendme(Lcom/subgraph/orchid/RelayCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 270
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->incrementSendWindow()V

    .line 271
    return-void
.end method

.method private processDestroyCell(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 121
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DESTROY cell received ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 123
    return-void
.end method

.method private processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 164
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/CircuitNode;->decrementDeliverWindow()V

    .line 166
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/CircuitNode;->considerSendingSendme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitIO;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 168
    .local v0, "sendme":Lcom/subgraph/orchid/RelayCell;
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V

    .line 172
    .end local v0    # "sendme":Lcom/subgraph/orchid/RelayCell;
    :cond_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getStreamId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/StreamImpl;

    .line 177
    .local v1, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/circuits/StreamImpl;->addInputCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 180
    :cond_1
    monitor-exit v3

    .line 181
    return-void

    .line 180
    .end local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private remainingBuildTime()J
    .locals 7

    .prologue
    const-wide/16 v5, 0x7530

    const-wide/16 v2, 0x0

    .line 102
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getMillisecondsElapsedSinceCreated()J

    move-result-wide v0

    .line 103
    .local v0, "elapsed":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v4, v0, v5

    if-ltz v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sub-long v2, v5, v0

    goto :goto_0
.end method


# virtual methods
.method createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;
    .locals 5
    .param p1, "autoclose"    # Z

    .prologue
    .line 289
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitStatus;->nextStreamId()I

    move-result v1

    .line 291
    .local v1, "streamId":I
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v4

    invoke-direct {v0, v2, v4, v1, p1}, Lcom/subgraph/orchid/circuits/StreamImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/CircuitNode;IZ)V

    .line 292
    .local v0, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    monitor-exit v3

    return-object v0

    .line 294
    .end local v0    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    .end local v1    # "streamId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;
    .locals 2
    .param p1, "relayCommand"    # I
    .param p2, "streamId"    # I
    .param p3, "targetNode"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 184
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    invoke-direct {v0, p3, v1, p2, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    return-object v0
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "renderer"    # Lcom/subgraph/orchid/dashboard/DashboardRenderer;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    and-int/lit8 v2, p3, 0x10

    if-nez v2, :cond_1

    .line 319
    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getActiveStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Stream;

    .line 317
    .local v1, "s":Lcom/subgraph/orchid/Stream;
    invoke-interface {p1, p2, p3, v1}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method deliverControlCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 114
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->processDestroyCell(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method deliverRelayCell(Lcom/subgraph/orchid/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateDirtyTimestamp()V

    .line 128
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->decryptRelayCell(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 129
    .local v0, "relayCell":Lcom/subgraph/orchid/RelayCell;
    const-string v1, "Dispatching: "

    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V

    .line 130
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 138
    :sswitch_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 147
    :sswitch_2
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getStreamId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->processCircuitSendme(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 157
    :sswitch_3
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 158
    new-instance v1, Lcom/subgraph/orchid/TorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'forward\' direction relay cell type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xb -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_3
        0xf -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method dequeueRelayResponseCell()Lcom/subgraph/orchid/RelayCell;
    .locals 5

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getReceiveTimeout()J

    move-result-wide v1

    .line 65
    .local v1, "timeout":J
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v1, v2, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/RelayCell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "timeout":J
    :goto_0
    return-object v3

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 68
    const/4 v3, 0x0

    goto :goto_0
.end method

.method destroyCircuit()V
    .locals 6

    .prologue
    .line 274
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v4

    .line 275
    :try_start_0
    iget-boolean v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z

    if-eqz v3, :cond_0

    .line 276
    monitor-exit v4

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitImpl;->setStateDestroyed()V

    .line 279
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {v3, v5}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamImpl;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/StreamImpl;

    .line 282
    .local v1, "s":Lcom/subgraph/orchid/circuits/StreamImpl;
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamImpl;->close()V

    goto :goto_1

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lcom/subgraph/orchid/circuits/StreamImpl;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamImpl;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 284
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/StreamImpl;>;"
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z

    .line 285
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getActiveStreams()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v1

    .line 308
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCircuitId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    return v0
.end method

.method getConnection()Lcom/subgraph/orchid/Connection;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    return-object v0
.end method

.method isMarkedForClose()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z

    return v0
.end method

.method markForClose()V
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z

    if-eqz v0, :cond_0

    .line 238
    monitor-exit v1

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z

    .line 241
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->closeCircuit()V

    .line 244
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method receiveControlCellResponse()Lcom/subgraph/orchid/Cell;
    .locals 5

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getReceiveTimeout()J

    move-result-wide v1

    .line 86
    .local v1, "timeout":J
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v1, v2, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Cell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "timeout":J
    :goto_0
    return-object v3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 89
    const/4 v3, 0x0

    goto :goto_0
.end method

.method removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V
    .locals 3
    .param p1, "stream"    # Lcom/subgraph/orchid/circuits/StreamImpl;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamImpl;->getStreamId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->closeCircuit()V

    .line 303
    :cond_0
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendCell(Lcom/subgraph/orchid/Cell;)V
    .locals 3
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v1

    .line 225
    .local v1, "status":Lcom/subgraph/orchid/circuits/CircuitStatus;
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateDirtyTimestamp()V

    .line 229
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    invoke-interface {v2, p1}, Lcom/subgraph/orchid/Connection;->sendCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lcom/subgraph/orchid/ConnectionIOException;
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    goto :goto_0
.end method

.method sendDestroyCell(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 260
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 261
    .local v0, "destroy":Lcom/subgraph/orchid/Cell;
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    invoke-interface {v2, v0}, Lcom/subgraph/orchid/Connection;->sendCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Lcom/subgraph/orchid/ConnectionIOException;
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection IO error sending DESTROY cell: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/subgraph/orchid/ConnectionIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;
    .param p2, "targetNode"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    const-string v1, "Sending:     "

    invoke-direct {p0, v1, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V

    .line 190
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->setLength()V

    .line 191
    invoke-interface {p2, p1}, Lcom/subgraph/orchid/CircuitNode;->updateForwardDigest(Lcom/subgraph/orchid/RelayCell;)V

    .line 192
    invoke-interface {p2}, Lcom/subgraph/orchid/CircuitNode;->getForwardDigestBytes()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/RelayCell;->setDigest([B)V

    .line 194
    move-object v0, p2

    .local v0, "node":Lcom/subgraph/orchid/CircuitNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitNode;->encryptForwardCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 194
    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getPreviousNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 198
    invoke-interface {p2}, Lcom/subgraph/orchid/CircuitNode;->waitForSendWindowAndDecrement()V

    .line 200
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendCell(Lcom/subgraph/orchid/Cell;)V

    .line 201
    monitor-exit v2

    .line 202
    return-void

    .line 201
    .end local v0    # "node":Lcom/subgraph/orchid/CircuitNode;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
