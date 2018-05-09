.class public Lcom/subgraph/orchid/circuits/TorInputStream;
.super Ljava/io/InputStream;
.source "TorInputStream.java"


# annotations
.annotation runtime Lcom/subgraph/orchid/misc/ThreadSafe;
.end annotation


# static fields
.field private static final CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private availableBytes:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private bytesReceived:J
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private currentBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final incomingCells:Ljava/util/Queue;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/subgraph/orchid/RelayCell;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private isEOF:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final stream:Lcom/subgraph/orchid/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    .line 19
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/Stream;)V
    .locals 1
    .param p1, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    .line 46
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method private checkReadArguments([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    if-gez v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 123
    :cond_2
    return-void
.end method

.method private fillBuffer()V
    .locals 1
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->getNextCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/TorInputStream;->processIncomingCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 181
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :cond_1
    return-void
.end method

.method private getNextCell()Lcom/subgraph/orchid/RelayCell;
    .locals 3
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 215
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read interrupted"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/RelayCell;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method private processIncomingCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 3
    .param p1, "nextCell"    # Lcom/subgraph/orchid/RelayCell;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    if-ne p1, v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected RelayCell command type in TorInputStream queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getPayloadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    .line 204
    :goto_0
    return-void

    .line 198
    :pswitch_1
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readFromCurrentBuffer([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p3, :cond_0

    move v0, p3

    .line 110
    .local v0, "readLength":I
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 111
    iget v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    .line 112
    return v0

    .line 109
    .end local v0    # "readLength":I
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0
.end method

.method private refillBufferIfNeeded()V
    .locals 1
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->fillBuffer()V

    goto :goto_0
.end method


# virtual methods
.method addEndCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 147
    monitor-exit v1

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addInputCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 6
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 157
    monitor-exit v1

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 160
    iget-wide v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    .line 161
    iget v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    .line 162
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 134
    monitor-exit v1

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    sget-object v2, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBytesReceived()J
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-wide v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    monitor-exit v1

    return-wide v2

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    .line 62
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, -0x1

    monitor-exit v1

    .line 66
    :goto_0
    return v0

    .line 65
    :cond_1
    iget v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/TorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-boolean v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Stream closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 81
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/circuits/TorInputStream;->checkReadArguments([BII)V

    .line 83
    if-nez p3, :cond_1

    .line 84
    const/4 v0, 0x0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return v0

    .line 87
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    .line 88
    iget-boolean v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-eqz v2, :cond_2

    .line 89
    const/4 v0, -0x1

    monitor-exit v3

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    .local v0, "bytesRead":I
    move v1, p3

    .line 95
    .local v1, "bytesRemaining":I
    :cond_3
    if-lez v1, :cond_4

    iget-boolean v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v2, :cond_4

    .line 96
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    .line 97
    add-int v2, p2, v0

    sub-int v4, p3, v0

    invoke-direct {p0, p1, v2, v4}, Lcom/subgraph/orchid/circuits/TorInputStream;->readFromCurrentBuffer([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 98
    sub-int v1, p3, v0

    .line 99
    iget v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    if-nez v2, :cond_3

    .line 100
    monitor-exit v3

    goto :goto_0

    .line 103
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorInputStream stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->getStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->getTargetNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unflushedCellCount()I
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
