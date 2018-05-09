.class public Lcom/subgraph/orchid/socks/SocksStreamConnection;
.super Ljava/lang/Object;
.source "SocksStreamConnection.java"


# static fields
.field private static final TRANSFER_BUFFER_SIZE:I = 0x1000

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private volatile incomingClosed:Z

.field private final incomingThread:Ljava/lang/Thread;

.field private final lock:Ljava/lang/Object;

.field private volatile outgoingClosed:Z

.field private final outgoingThread:Ljava/lang/Thread;

.field private final socket:Ljava/net/Socket;

.field private final stream:Lcom/subgraph/orchid/Stream;

.field private final torInputStream:Ljava/io/InputStream;

.field private final torOutputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Lcom/subgraph/orchid/Stream;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->lock:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    .line 33
    invoke-interface {p2}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torInputStream:Ljava/io/InputStream;

    .line 34
    invoke-interface {p2}, Lcom/subgraph/orchid/Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torOutputStream:Ljava/io/OutputStream;

    .line 36
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->createIncomingThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->incomingThread:Ljava/lang/Thread;

    .line 37
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->createOutgoingThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->outgoingThread:Ljava/lang/Thread;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->incomingTransferLoop()V

    return-void
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Lcom/subgraph/orchid/Stream;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/subgraph/orchid/socks/SocksStreamConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->incomingClosed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->outgoingTransferLoop()V

    return-void
.end method

.method static synthetic access$602(Lcom/subgraph/orchid/socks/SocksStreamConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/socks/SocksStreamConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->outgoingClosed:Z

    return p1
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 4
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 133
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createIncomingThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/subgraph/orchid/socks/SocksStreamConnection$1;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection$1;-><init>(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private createOutgoingThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;-><init>(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private incomingTransferLoop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 96
    .local v0, "incomingBuffer":[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 97
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 98
    sget-object v2, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EOF on TOR input stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 108
    :goto_1
    return-void

    .line 101
    :cond_1
    if-lez v1, :cond_0

    .line 102
    sget-object v2, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transferring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to SOCKS socket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torInputStream:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private outgoingTransferLoop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 117
    .local v1, "outgoingBuffer":[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->waitForSendWindow()V

    .line 118
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 119
    .local v0, "n":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 121
    sget-object v2, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EOF on SOCKS socket connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 122
    return-void

    .line 123
    :cond_1
    if-lez v0, :cond_0

    .line 124
    sget-object v2, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transferring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from SOCKS socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torOutputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 126
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method private run()V
    .locals 5

    .prologue
    .line 41
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->incomingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 42
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->outgoingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 43
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->outgoingClosed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->incomingClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 49
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 54
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torInputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->closeStream(Ljava/io/Closeable;)V

    .line 59
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection;->torOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->closeStream(Ljava/io/Closeable;)V

    .line 60
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v1, Lcom/subgraph/orchid/socks/SocksStreamConnection;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException on SOCKS socket close(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public static runConnection(Ljava/net/Socket;Lcom/subgraph/orchid/Stream;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 16
    new-instance v0, Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;-><init>(Ljava/net/Socket;Lcom/subgraph/orchid/Stream;)V

    .line 17
    .local v0, "ssc":Lcom/subgraph/orchid/socks/SocksStreamConnection;
    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->run()V

    .line 18
    return-void
.end method
