.class public Lcom/subgraph/orchid/circuits/StreamImpl;
.super Ljava/lang/Object;
.source "StreamImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Stream;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final STREAMWINDOW_INCREMENT:I = 0x32

.field private static final STREAMWINDOW_MAX_UNFLUSHED:I = 0xa

.field private static final STREAMWINDOW_START:I = 0x1f4

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final autoclose:Z

.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private deliverWindow:I

.field private final inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

.field private isClosed:Z

.field private final outputStream:Lcom/subgraph/orchid/circuits/TorOutputStream;

.field private packageWindow:I

.field private relayConnectedReceived:Z

.field private relayEndReason:I

.field private relayEndReceived:Z

.field private final streamId:I

.field private streamTarget:Ljava/lang/String;

.field private final targetNode:Lcom/subgraph/orchid/CircuitNode;

.field private final waitConnectLock:Ljava/lang/Object;

.field private final windowLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/CircuitNode;IZ)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/circuits/CircuitImpl;
    .param p2, "targetNode"    # Lcom/subgraph/orchid/CircuitNode;
    .param p3, "streamId"    # I
    .param p4, "autoclose"    # Z

    .prologue
    const/16 v1, 0x1f4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamTarget:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 49
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->targetNode:Lcom/subgraph/orchid/CircuitNode;

    .line 50
    iput p3, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    .line 51
    iput-boolean p4, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->autoclose:Z

    .line 52
    new-instance v0, Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/TorInputStream;-><init>(Lcom/subgraph/orchid/Stream;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    .line 53
    new-instance v0, Lcom/subgraph/orchid/circuits/TorOutputStream;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;-><init>(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->outputStream:Lcom/subgraph/orchid/circuits/TorOutputStream;

    .line 54
    iput v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I

    .line 55
    iput v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    .line 56
    return-void
.end method

.method private considerSendingSendme()V
    .locals 6

    .prologue
    .line 91
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    const/16 v3, 0x1c2

    if-le v1, v3, :cond_0

    .line 93
    monitor-exit v2

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TorInputStream;->unflushedCellCount()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 96
    monitor-exit v2

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 98
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    const/4 v3, 0x5

    iget v4, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->targetNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-virtual {v1, v3, v4, v5}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 99
    .local v0, "sendme":Lcom/subgraph/orchid/RelayCell;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 100
    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    add-int/lit8 v1, v1, 0x32

    iput v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    .line 101
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private waitForRelayConnected(J)V
    .locals 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    .local v2, "start":J
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "elapsed":J
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 156
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayConnectedReceived:Z

    if-nez v4, :cond_2

    .line 158
    iget-boolean v4, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayEndReceived:Z

    if-eqz v4, :cond_0

    .line 159
    new-instance v4, Lcom/subgraph/orchid/StreamConnectFailedException;

    iget v6, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayEndReason:I

    invoke-direct {v4, v6}, Lcom/subgraph/orchid/StreamConnectFailedException;-><init>(I)V

    throw v4

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 162
    :cond_0
    cmp-long v4, v0, p1

    if-ltz v4, :cond_1

    .line 163
    :try_start_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    sub-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    goto :goto_0

    .line 170
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method


# virtual methods
.method addInputCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 3
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->isClosed:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayEndReason:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayEndReceived:Z

    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInputStream;->addEndCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayConnectedReceived:Z

    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->waitConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 73
    :cond_2
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_2
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I

    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInputStream;->addInputCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 81
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_3
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    .line 83
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->deliverWindow:I

    if-gez v0, :cond_4

    .line 84
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v2, "Stream has negative delivery window"

    invoke-direct {v0, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 86
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/StreamImpl;->considerSendingSendme()V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 117
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->isClosed:Z

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v1, Lcom/subgraph/orchid/circuits/StreamImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->isClosed:Z

    .line 123
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TorInputStream;->close()V

    .line 124
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->outputStream:Lcom/subgraph/orchid/circuits/TorOutputStream;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TorOutputStream;->close()V

    .line 125
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 126
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->autoclose:Z

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->markForClose()V

    .line 130
    :cond_2
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayEndReceived:Z

    if-nez v1, :cond_0

    .line 131
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v2

    iget v3, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    .line 132
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 133
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCellToFinalNode(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0
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
    .line 209
    const-string v0, "     "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Stream stream_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->relayConnectedReceived:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->outputStream:Lcom/subgraph/orchid/circuits/TorOutputStream;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TorOutputStream;->getBytesSent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TorInputStream;->getBytesReceived()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return-void

    .line 214
    :cond_0
    const-string v0, " (waiting connect)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCircuit()Lcom/subgraph/orchid/Circuit;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->inputStream:Lcom/subgraph/orchid/circuits/TorInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->outputStream:Lcom/subgraph/orchid/circuits/TorOutputStream;

    return-object v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    return v0
.end method

.method public getTargetNode()Lcom/subgraph/orchid/CircuitNode;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->targetNode:Lcom/subgraph/orchid/CircuitNode;

    return-object v0
.end method

.method public openDirectory(J)V
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v1, "[Directory]"

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamTarget:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v2

    iget v3, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    .line 140
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCellToFinalNode(Lcom/subgraph/orchid/RelayCell;)V

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/StreamImpl;->waitForRelayConnected(J)V

    .line 142
    return-void
.end method

.method openExit(Ljava/lang/String;IJ)V
    .locals 5
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
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamTarget:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v2

    iget v3, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    .line 147
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putString(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCellToFinalNode(Lcom/subgraph/orchid/RelayCell;)V

    .line 149
    invoke-direct {p0, p3, p4}, Lcom/subgraph/orchid/circuits/StreamImpl;->waitForRelayConnected(J)V

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Stream stream_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " circuit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->streamTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForSendWindow()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/StreamImpl;->waitForSendWindow(Z)V

    .line 187
    return-void
.end method

.method public waitForSendWindow(Z)V
    .locals 4
    .param p1, "decrement"    # Z

    .prologue
    .line 190
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 193
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->windowLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lcom/subgraph/orchid/TorException;

    const-string v3, "Thread interrupted while waiting for stream package window"

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    .line 199
    :try_start_3
    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->packageWindow:I

    .line 200
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamImpl;->targetNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-interface {v1}, Lcom/subgraph/orchid/CircuitNode;->waitForSendWindow()V

    .line 202
    return-void
.end method

.method public waitForSendWindowAndDecrement()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/StreamImpl;->waitForSendWindow(Z)V

    .line 183
    return-void
.end method
