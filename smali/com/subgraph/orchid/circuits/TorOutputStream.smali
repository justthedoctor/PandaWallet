.class public Lcom/subgraph/orchid/circuits/TorOutputStream;
.super Ljava/io/OutputStream;
.source "TorOutputStream.java"


# instance fields
.field private bytesSent:J

.field private currentOutputCell:Lcom/subgraph/orchid/RelayCell;

.field private volatile isClosed:Z

.field private final stream:Lcom/subgraph/orchid/circuits/StreamImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/StreamImpl;)V
    .locals 2
    .param p1, "stream"    # Lcom/subgraph/orchid/circuits/StreamImpl;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->bytesSent:J

    .line 19
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method private flushCurrentOutputCell()V
    .locals 5

    .prologue
    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->cellBytesConsumed()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/StreamImpl;->waitForSendWindowAndDecrement()V

    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/StreamImpl;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Circuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 25
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->bytesSent:J

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v2}, Lcom/subgraph/orchid/RelayCell;->cellBytesConsumed()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->bytesSent:J

    .line 28
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamImpl;->getTargetNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/StreamImpl;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/Circuit;->getCircuitId()I

    move-result v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamImpl;->getStreamId()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->flush()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->isClosed:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    .line 79
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/StreamImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->flushCurrentOutputCell()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBytesSent()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->bytesSent:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorOutputStream stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamImpl;->getStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->stream:Lcom/subgraph/orchid/circuits/StreamImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamImpl;->getTargetNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->checkOpen()V

    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->flushCurrentOutputCell()V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->checkOpen()V

    .line 46
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->flushCurrentOutputCell()V

    .line 49
    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 50
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1, p1, p2, p3}, Lcom/subgraph/orchid/RelayCell;->putByteArray([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_2
    monitor-exit p0

    return-void

    .line 54
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v0

    .line 55
    .local v0, "writeCount":I
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorOutputStream;->currentOutputCell:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1, p1, p2, v0}, Lcom/subgraph/orchid/RelayCell;->putByteArray([BII)V

    .line 56
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorOutputStream;->flushCurrentOutputCell()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    add-int/2addr p2, v0

    .line 58
    sub-int/2addr p3, v0

    .line 59
    goto :goto_0

    .line 45
    .end local v0    # "writeCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
