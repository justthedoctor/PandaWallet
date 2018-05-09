.class public abstract Lcom/google/bitcoin/core/PeerSocketHandler;
.super Lcom/google/bitcoin/net/AbstractTimeoutHandler;
.source "PeerSocketHandler.java"

# interfaces
.implements Lcom/google/bitcoin/net/StreamParser;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private closePending:Z

.field private header:Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

.field private largeReadBuffer:[B

.field private largeReadBufferPos:I

.field private lock:Ljava/util/concurrent/locks/Lock;

.field protected peerAddress:Lcom/google/bitcoin/core/PeerAddress;

.field private final serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

.field protected writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/bitcoin/core/PeerSocketHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "peerAddress"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->closePending:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    .line 59
    const-string v0, "PeerSocketHandler"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    .line 67
    new-instance v1, Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/BitcoinSerializer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    .line 68
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->peerAddress:Lcom/google/bitcoin/core/PeerAddress;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "remoteIp"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->closePending:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    .line 59
    const-string v0, "PeerSocketHandler"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    .line 62
    new-instance v1, Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/BitcoinSerializer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    .line 63
    new-instance v0, Lcom/google/bitcoin/core/PeerAddress;

    invoke-direct {v0, p2}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->peerAddress:Lcom/google/bitcoin/core/PeerAddress;

    .line 64
    return-void
.end method

.method private exceptionCaught(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerSocketHandler;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v0

    .line 222
    .local v0, "addr":Lcom/google/bitcoin/core/PeerAddress;
    if-nez v0, :cond_2

    const-string v2, "?"

    .line 223
    .local v2, "s":Ljava/lang/String;
    :goto_0
    instance-of v3, p1, Ljava/net/ConnectException;

    if-nez v3, :cond_0

    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 225
    :cond_0
    sget-object v3, Lcom/google/bitcoin/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 233
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerSocketHandler;->close()V

    .line 234
    return-void

    .line 222
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 227
    .restart local v2    # "s":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/google/bitcoin/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    sget-object v1, Lcom/google/bitcoin/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 229
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_1

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->closePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    invoke-interface {v0}, Lcom/google/bitcoin/net/MessageWriteTarget;->closeConnection()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAddress()Lcom/google/bitcoin/core/PeerAddress;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->peerAddress:Lcom/google/bitcoin/core/PeerAddress;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 209
    const/high16 v0, 0x2000000

    return v0
.end method

.method protected abstract processMessage(Lcom/google/bitcoin/core/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 11
    .param p1, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    const/16 v9, 0x18

    if-lt v6, v9, :cond_1

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    if-eqz v6, :cond_0

    .line 131
    if-nez v3, :cond_2

    move v6, v7

    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v9, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    array-length v9, v9

    iget v10, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    sub-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    .local v0, "bytesToGet":I
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    iget v9, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    invoke-virtual {p1, v6, v9, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 135
    iget v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    .line 137
    iget v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    iget-object v9, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    array-length v9, v9

    if-ne v6, v9, :cond_3

    .line 139
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    iget-object v9, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->header:Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    iget-object v10, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/google/bitcoin/core/BitcoinSerializer;->deserializePayload(Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/bitcoin/core/PeerSocketHandler;->processMessage(Lcom/google/bitcoin/core/Message;)V

    .line 140
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    .line 141
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->header:Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    .line 147
    .end local v0    # "bytesToGet":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 149
    .local v5, "preSerializePosition":I
    :try_start_1
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-virtual {v6, p1}, Lcom/google/bitcoin/core/BitcoinSerializer;->deserialize(Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 178
    .local v4, "message":Lcom/google/bitcoin/core/Message;
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/PeerSocketHandler;->processMessage(Lcom/google/bitcoin/core/Message;)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "message":Lcom/google/bitcoin/core/Message;
    .end local v5    # "preSerializePosition":I
    :cond_1
    move v6, v8

    .line 123
    goto :goto_0

    .restart local v3    # "i":I
    :cond_2
    move v6, v8

    .line 131
    goto :goto_2

    .line 143
    .restart local v0    # "bytesToGet":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 182
    .end local v0    # "bytesToGet":I
    :goto_3
    return v6

    .line 150
    .restart local v5    # "preSerializePosition":I
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    if-nez v3, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 154
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :try_start_3
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-virtual {v6, p1}, Lcom/google/bitcoin/core/BitcoinSerializer;->seekPastMagicBytes(Ljava/nio/ByteBuffer;)V

    .line 157
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-virtual {v6, p1}, Lcom/google/bitcoin/core/BitcoinSerializer;->deserializeHeader(Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->header:Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    .line 160
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->header:Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    iget v6, v6, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iput v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    .line 162
    iget-object v6, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBuffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->largeReadBufferPos:I

    invoke-virtual {p1, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 175
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    goto :goto_3

    .line 163
    :catch_1
    move-exception v2

    .line 168
    .local v2, "e1":Ljava/nio/BufferUnderflowException;
    new-instance v6, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No magic bytes+header after reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 180
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .end local v2    # "e1":Ljava/nio/BufferUnderflowException;
    .end local v5    # "preSerializePosition":I
    :catch_2
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/google/bitcoin/core/PeerSocketHandler;->exceptionCaught(Ljava/lang/Exception;)V

    .line 182
    const/4 v6, -0x1

    goto :goto_3

    .line 173
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    .restart local v5    # "preSerializePosition":I
    :cond_4
    :try_start_5
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4
.end method

.method public sendMessage(Lcom/google/bitcoin/core/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/google/bitcoin/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->serializer:Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-virtual {v2, p1, v1}, Lcom/google/bitcoin/core/BitcoinSerializer;->serialize(Lcom/google/bitcoin/core/Message;Ljava/io/OutputStream;)V

    .line 88
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/bitcoin/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerSocketHandler;->exceptionCaught(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V
    .locals 4
    .param p1, "writeTarget"    # Lcom/google/bitcoin/net/MessageWriteTarget;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 194
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "closeNow":Z
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->closePending:Z

    .line 199
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/google/bitcoin/net/MessageWriteTarget;->closeConnection()V

    .line 205
    :cond_0
    return-void

    .end local v0    # "closeNow":Z
    :cond_1
    move v1, v3

    .line 193
    goto :goto_0

    .restart local v0    # "closeNow":Z
    :cond_2
    move v2, v3

    .line 197
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected timeoutOccurred()V
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcom/google/bitcoin/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "{}: Timed out"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerSocketHandler;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerSocketHandler;->close()V

    .line 114
    return-void
.end method
