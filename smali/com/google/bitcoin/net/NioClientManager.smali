.class public Lcom/google/bitcoin/net/NioClientManager;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "NioClientManager.java"

# interfaces
.implements Lcom/google/bitcoin/net/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final connectedHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/net/ConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field final newConnectionChannels:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/bitcoin/net/NioClientManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    .line 44
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    .line 83
    :try_start_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleKey(Ljava/nio/channels/SelectionKey;)V
    .locals 7
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/net/StreamParser;

    .line 55
    .local v2, "parser":Lcom/google/bitcoin/net/StreamParser;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;

    .line 56
    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    new-instance v1, Lcom/google/bitcoin/net/ConnectionHandler;

    iget-object v4, p0, Lcom/google/bitcoin/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-direct {v1, v2, p1, v4}, Lcom/google/bitcoin/net/ConnectionHandler;-><init>(Lcom/google/bitcoin/net/StreamParser;Ljava/nio/channels/SelectionKey;Ljava/util/Set;)V

    .line 58
    .local v1, "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v5, "Successfully connected to {}"

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, v1, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v4}, Lcom/google/bitcoin/net/StreamParser;->connectionOpened()V

    .line 75
    .end local v1    # "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    .end local v2    # "parser":Lcom/google/bitcoin/net/StreamParser;
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    :goto_0
    return-void

    .line 63
    .restart local v1    # "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    .restart local v2    # "parser":Lcom/google/bitcoin/net/StreamParser;
    .restart local v3    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_0
    sget-object v4, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v5, "Failed to connect to {}"

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v1}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v5, "Failed to connect with exception: {}"

    invoke-static {v0}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    .end local v2    # "parser":Lcom/google/bitcoin/net/StreamParser;
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    :cond_1
    invoke-static {p1}, Lcom/google/bitcoin/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method


# virtual methods
.method public closeConnections(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 164
    move v1, p1

    .end local p1    # "n":I
    .local v1, "n":I
    :goto_0
    add-int/lit8 p1, v1, -0x1

    .end local v1    # "n":I
    .restart local p1    # "n":I
    if-lez v1, :cond_1

    .line 166
    iget-object v3, p0, Lcom/google/bitcoin/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    monitor-enter v3

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/net/ConnectionHandler;

    .line 168
    .local v0, "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/google/bitcoin/net/ConnectionHandler;->closeConnection()V

    :cond_0
    move v1, p1

    .line 171
    .end local p1    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 168
    .end local v0    # "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    .end local v1    # "n":I
    .restart local p1    # "n":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 172
    :cond_1
    return-void
.end method

.method public getConnectedClientCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V
    .locals 5
    .param p1, "serverAddress"    # Ljava/net/SocketAddress;
    .param p2, "parser"    # Lcom/google/bitcoin/net/StreamParser;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/bitcoin/net/NioClientManager;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 141
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 142
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 143
    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 144
    iget-object v2, p0, Lcom/google/bitcoin/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    new-instance v3, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;

    invoke-direct {v3, p0, v1, p2}, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;-><init>(Lcom/google/bitcoin/net/NioClientManager;Ljava/nio/channels/SocketChannel;Lcom/google/bitcoin/net/StreamParser;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 146
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public run()V
    .locals 8

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/net/NioClientManager;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    :goto_0
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "conn":Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    if-eqz v0, :cond_2

    .line 97
    :try_start_1
    iget-object v5, v0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;->sc:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 98
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    iget-object v5, v0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;->parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-virtual {v3, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/nio/channels/ClosedChannelException;
    :try_start_2
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "SocketChannel was closed before it could be registered"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "conn":Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    .end local v1    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "Error trying to open/read from connection: "

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 119
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 123
    :goto_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 124
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/google/bitcoin/net/ConnectionHandler;

    if-eqz v5, :cond_1

    .line 125
    invoke-static {v3}, Lcom/google/bitcoin/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 104
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v0    # "conn":Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->select()I

    .line 106
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 109
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 110
    invoke-direct {p0, v3}, Lcom/google/bitcoin/net/NioClientManager;->handleKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 117
    .end local v0    # "conn":Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 119
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 123
    :goto_5
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 124
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/google/bitcoin/net/ConnectionHandler;

    if-eqz v6, :cond_3

    .line 125
    invoke-static {v3}, Lcom/google/bitcoin/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_4

    .line 117
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_4
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 119
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 123
    :goto_7
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 124
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/google/bitcoin/net/ConnectionHandler;

    if-eqz v5, :cond_5

    .line 125
    invoke-static {v3}, Lcom/google/bitcoin/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_6

    .line 120
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing channel"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_6
    :try_start_8
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 133
    :goto_8
    return-void

    .line 129
    :catch_3
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing client manager selector"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :catch_4
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing channel"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_7
    :try_start_9
    iget-object v5, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    .line 129
    :catch_5
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing client manager selector"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :catch_6
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v7, "Error closing channel"

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_8
    :try_start_a
    iget-object v6, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 131
    :goto_9
    throw v5

    .line 129
    :catch_7
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/google/bitcoin/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v7, "Error closing client manager selector"

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public triggerShutdown()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 155
    return-void
.end method
