.class Lcom/google/bitcoin/net/ConnectionHandler;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"

# interfaces
.implements Lcom/google/bitcoin/net/MessageWriteTarget;


# static fields
.field private static final BUFFER_SIZE_LOWER_BOUND:I = 0x1000

.field private static final BUFFER_SIZE_UPPER_BOUND:I = 0x10000

.field private static final OUTBOUND_BUFFER_BYTE_COUNT:I = 0x2000018

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final bytesToWrite:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private bytesToWriteRemaining:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final channel:Ljava/nio/channels/SocketChannel;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private closeCalled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private connectedHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/net/ConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/nio/channels/SelectionKey;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field parser:Lcom/google/bitcoin/net/StreamParser;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final readBuff:Ljava/nio/ByteBuffer;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/bitcoin/net/ConnectionHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/google/bitcoin/net/StreamParser;Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "parser"    # Lcom/google/bitcoin/net/StreamParser;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "nioConnectionHandler"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->closeCalled:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    .line 73
    iput-object p2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    .line 74
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iput-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    .line 75
    if-nez p1, :cond_0

    .line 76
    iput-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    .line 81
    invoke-interface {p1}, Lcom/google/bitcoin/net/StreamParser;->getMaxMessageSize()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    .line 82
    invoke-interface {p1, p0}, Lcom/google/bitcoin/net/StreamParser;->setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V

    .line 83
    iput-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/bitcoin/net/StreamParser;Ljava/nio/channels/SelectionKey;Ljava/util/Set;)V
    .locals 3
    .param p1, "parser"    # Lcom/google/bitcoin/net/StreamParser;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/net/StreamParser;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/net/ConnectionHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "connectedHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/net/ConnectionHandler;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/net/StreamParser;

    invoke-direct {p0, v1, p2}, Lcom/google/bitcoin/net/ConnectionHandler;-><init>(Lcom/google/bitcoin/net/StreamParser;Ljava/nio/channels/SelectionKey;)V

    .line 90
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "alreadyClosed":Z
    :try_start_0
    iget-boolean v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->closeCalled:Z

    .line 94
    iput-object p3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    if-nez v0, :cond_0

    .line 99
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 100
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public constructor <init>(Lcom/google/bitcoin/net/StreamParserFactory;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "parserFactory"    # Lcom/google/bitcoin/net/StreamParserFactory;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/google/bitcoin/net/StreamParserFactory;->getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/StreamParser;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/bitcoin/net/ConnectionHandler;-><init>(Lcom/google/bitcoin/net/StreamParser;Ljava/nio/channels/SelectionKey;)V

    .line 68
    iget-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parser factory.getNewParser returned null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private connectionClosed()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "callClosed":Z
    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    :try_start_0
    iget-boolean v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->closeCalled:Z

    if-nez v3, :cond_3

    move v0, v2

    .line 181
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->closeCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    if-eqz v0, :cond_2

    .line 186
    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 187
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v1}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    .line 189
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 180
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static handleKey(Ljava/nio/channels/SelectionKey;)V
    .locals 7
    .param p0, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 195
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/net/ConnectionHandler;

    .line 197
    .local v2, "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 200
    invoke-virtual {v2}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/google/bitcoin/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    const-string v5, "Error handling SelectionKey: {}"

    invoke-static {v1}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v2}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    goto :goto_0

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    iget-object v4, v2, Lcom/google/bitcoin/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v5, v2, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 206
    .local v3, "read":I
    if-eqz v3, :cond_0

    .line 208
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 209
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 210
    invoke-virtual {v2}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v4, v2, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 216
    iget-object v4, v2, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/net/StreamParser;

    iget-object v5, v2, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Lcom/google/bitcoin/net/StreamParser;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 217
    .local v0, "bytesConsumed":I
    iget-object v4, v2, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v0, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 220
    iget-object v4, v2, Lcom/google/bitcoin/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 222
    .end local v0    # "bytesConsumed":I
    .end local v3    # "read":I
    :cond_4
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-direct {v2}, Lcom/google/bitcoin/net/ConnectionHandler;->tryWriteBytes()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    .restart local v0    # "bytesConsumed":I
    .restart local v3    # "read":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setWriteOps()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 107
    iget-object v0, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 108
    return-void
.end method

.method private tryWriteBytes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "bytesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 118
    .local v0, "buff":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    iget-object v4, p0, Lcom/google/bitcoin/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "buff":Ljava/nio/ByteBuffer;
    .end local v1    # "bytesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 122
    .restart local v0    # "buff":Ljava/nio/ByteBuffer;
    .restart local v1    # "bytesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/ByteBuffer;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->setWriteOps()V

    .line 127
    .end local v0    # "buff":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    iget-object v3, p0, Lcom/google/bitcoin/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-direct {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->connectionClosed()V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBytes([B)V
    .locals 5
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    :try_start_0
    iget-wide v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x2000018

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 145
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Outbound buffer overflowed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    sget-object v1, Lcom/google/bitcoin/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Error writing message to connection, closing connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    .line 155
    throw v0

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 149
    iget-wide v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 150
    invoke-direct {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->setWriteOps()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    return-void

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/nio/channels/CancelledKeyException;
    iget-object v1, p0, Lcom/google/bitcoin/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 158
    sget-object v1, Lcom/google/bitcoin/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Error writing message to connection, closing connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    .line 160
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
