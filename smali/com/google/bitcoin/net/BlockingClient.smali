.class public Lcom/google/bitcoin/net/BlockingClient;
.super Ljava/lang/Object;
.source "BlockingClient.java"

# interfaces
.implements Lcom/google/bitcoin/net/MessageWriteTarget;


# static fields
.field private static final BUFFER_SIZE_LOWER_BOUND:I = 0x1000

.field private static final BUFFER_SIZE_UPPER_BOUND:I = 0x10000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final dbuf:Ljava/nio/ByteBuffer;

.field private socket:Ljava/net/Socket;

.field private volatile vCloseRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/BlockingClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;ILjavax/net/SocketFactory;Ljava/util/Set;)V
    .locals 6
    .param p1, "serverAddress"    # Ljava/net/SocketAddress;
    .param p2, "parser"    # Lcom/google/bitcoin/net/StreamParser;
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lcom/google/bitcoin/net/StreamParser;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/net/BlockingClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p5, "clientSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/net/BlockingClient;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/bitcoin/net/BlockingClient;->vCloseRequested:Z

    .line 67
    invoke-interface {p2}, Lcom/google/bitcoin/net/StreamParser;->getMaxMessageSize()I

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/net/BlockingClient;->dbuf:Ljava/nio/ByteBuffer;

    .line 68
    invoke-interface {p2, p0}, Lcom/google/bitcoin/net/StreamParser;->setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V

    .line 69
    invoke-virtual {p4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/net/BlockingClient;->socket:Ljava/net/Socket;

    .line 70
    new-instance v0, Lcom/google/bitcoin/net/BlockingClient$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/net/BlockingClient$1;-><init>(Lcom/google/bitcoin/net/BlockingClient;Ljava/util/Set;Ljava/net/SocketAddress;ILcom/google/bitcoin/net/StreamParser;)V

    .line 114
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockingClient network thread for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/BlockingClient;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/bitcoin/net/BlockingClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/BlockingClient;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/bitcoin/net/BlockingClient;->dbuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/net/BlockingClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/BlockingClient;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/bitcoin/net/BlockingClient;->vCloseRequested:Z

    return v0
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/bitcoin/net/BlockingClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .prologue
    .line 126
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/bitcoin/net/BlockingClient;->vCloseRequested:Z

    .line 127
    iget-object v1, p0, Lcom/google/bitcoin/net/BlockingClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized writeBytes([B)V
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/BlockingClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 137
    .local v1, "stream":Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 138
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 139
    .end local v1    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/google/bitcoin/net/BlockingClient;->log:Lorg/slf4j/Logger;

    const-string v3, "Error writing message to connection, closing connection"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/bitcoin/net/BlockingClient;->closeConnection()V

    .line 142
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
