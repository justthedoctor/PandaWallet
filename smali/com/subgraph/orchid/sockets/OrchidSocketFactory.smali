.class public Lcom/subgraph/orchid/sockets/OrchidSocketFactory;
.super Ljavax/net/SocketFactory;
.source "OrchidSocketFactory.java"


# instance fields
.field private final exceptionOnLocalBind:Z

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 1
    .param p1, "torClient"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;-><init>(Lcom/subgraph/orchid/TorClient;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorClient;Z)V
    .locals 0
    .param p1, "torClient"    # Lcom/subgraph/orchid/TorClient;
    .param p2, "exceptionOnLocalBind"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 26
    iput-boolean p2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    .line 27
    return-void
.end method

.method private connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p2, p3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 67
    .local v0, "endpoint":Ljava/net/SocketAddress;
    invoke-virtual {p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 68
    return-object p1
.end method

.method private createSocketInstance()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;-><init>(Lcom/subgraph/orchid/TorClient;)V

    .line 73
    .local v0, "impl":Lcom/subgraph/orchid/sockets/OrchidSocketImpl;
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/subgraph/orchid/sockets/AndroidSocket;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/sockets/AndroidSocket;-><init>(Lcom/subgraph/orchid/sockets/OrchidSocketImpl;)V

    .line 77
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;-><init>(Lcom/subgraph/orchid/sockets/OrchidSocketFactory;Ljava/net/SocketImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    .line 38
    .local v0, "s":Ljava/net/Socket;
    invoke-direct {p0, v0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to local address"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    .line 53
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to local address"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
