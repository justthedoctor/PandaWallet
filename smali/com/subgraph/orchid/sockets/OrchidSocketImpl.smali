.class public Lcom/subgraph/orchid/sockets/OrchidSocketImpl;
.super Ljava/net/SocketImpl;
.source "OrchidSocketImpl.java"


# instance fields
.field private stream:Lcom/subgraph/orchid/Stream;

.field private final streamLock:Ljava/lang/Object;

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 1
    .param p1, "torClient"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 30
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 31
    return-void
.end method

.method private addressToName(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doConnect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "Already connected"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/TorClient;->openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    monitor-exit v2

    .line 103
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "connect() interrupted"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Lcom/subgraph/orchid/OpenFailedException;
    new-instance v1, Ljava/net/ConnectException;

    invoke-virtual {v0}, Lcom/subgraph/orchid/OpenFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "s"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not connected"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    .line 157
    :cond_0
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 58
    .local v0, "endpoint":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 59
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 65
    .local v0, "endpoint":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 66
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 74
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 76
    .local v0, "inetAddress":Ljava/net/InetSocketAddress;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->addressToName(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->doConnect(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method protected create(Z)V
    .locals 0
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not connected"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 2
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 41
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_2

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not connected"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected listen(I)V
    .locals 1
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected sendUrgentData(I)V
    .locals 1
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method protected shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method
