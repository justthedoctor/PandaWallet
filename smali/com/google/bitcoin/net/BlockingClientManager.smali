.class public Lcom/google/bitcoin/net/BlockingClientManager;
.super Lcom/google/common/util/concurrent/AbstractIdleService;
.source "BlockingClientManager.java"

# interfaces
.implements Lcom/google/bitcoin/net/ClientConnectionManager;


# instance fields
.field private final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/net/BlockingClient;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeoutMillis:I

.field private final socketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->connectTimeoutMillis:I

    .line 45
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->connectTimeoutMillis:I

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    .line 54
    return-void
.end method


# virtual methods
.method public closeConnections(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/bitcoin/net/BlockingClientManager;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/BlockingClient;>;"
    move v1, p1

    .line 94
    .end local p1    # "n":I
    .local v1, "n":I
    :goto_0
    add-int/lit8 p1, v1, -0x1

    .end local v1    # "n":I
    .restart local p1    # "n":I
    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/net/BlockingClient;

    invoke-virtual {v2}, Lcom/google/bitcoin/net/BlockingClient;->closeConnection()V

    move v1, p1

    .end local p1    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 96
    .end local v1    # "n":I
    .restart local p1    # "n":I
    :cond_1
    monitor-exit v3

    .line 97
    return-void

    .line 96
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/BlockingClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConnectedClientCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V
    .locals 7
    .param p1, "serverAddress"    # Ljava/net/SocketAddress;
    .param p2, "parser"    # Lcom/google/bitcoin/net/StreamParser;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/bitcoin/net/BlockingClientManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/net/BlockingClient;

    iget v3, p0, Lcom/google/bitcoin/net/BlockingClientManager;->connectTimeoutMillis:I

    iget-object v4, p0, Lcom/google/bitcoin/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v5, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/net/BlockingClient;-><init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;ILjavax/net/SocketFactory;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/google/bitcoin/net/BlockingClientManager;->connectTimeoutMillis:I

    .line 70
    return-void
.end method

.method protected shutDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v3, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    monitor-enter v3

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/net/BlockingClient;

    .line 79
    .local v0, "client":Lcom/google/bitcoin/net/BlockingClient;
    invoke-virtual {v0}, Lcom/google/bitcoin/net/BlockingClient;->closeConnection()V

    goto :goto_0

    .line 80
    .end local v0    # "client":Lcom/google/bitcoin/net/BlockingClient;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-void
.end method

.method protected startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method
