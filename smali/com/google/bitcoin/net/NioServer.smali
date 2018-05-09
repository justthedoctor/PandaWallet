.class public Lcom/google/bitcoin/net/NioServer;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "NioServer.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final parserFactory:Lcom/google/bitcoin/net/StreamParserFactory;

.field private final sc:Ljava/nio/channels/ServerSocketChannel;

.field final selector:Ljava/nio/channels/Selector;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/bitcoin/net/NioServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/net/StreamParserFactory;Ljava/net/InetSocketAddress;)V
    .locals 3
    .param p1, "parserFactory"    # Lcom/google/bitcoin/net/StreamParserFactory;
    .param p2, "bindAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/bitcoin/net/NioServer;->parserFactory:Lcom/google/bitcoin/net/StreamParserFactory;

    .line 68
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 70
    iget-object v0, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 71
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    .line 72
    iget-object v0, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 73
    return-void
.end method

.method private handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 49
    .local v1, "newChannel":Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 50
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 51
    .local v2, "newKey":Ljava/nio/channels/SelectionKey;
    new-instance v0, Lcom/google/bitcoin/net/ConnectionHandler;

    iget-object v3, p0, Lcom/google/bitcoin/net/NioServer;->parserFactory:Lcom/google/bitcoin/net/StreamParserFactory;

    invoke-direct {v0, v3, v2}, Lcom/google/bitcoin/net/ConnectionHandler;-><init>(Lcom/google/bitcoin/net/StreamParserFactory;Ljava/nio/channels/SelectionKey;)V

    .line 52
    .local v0, "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, v0, Lcom/google/bitcoin/net/ConnectionHandler;->parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v3}, Lcom/google/bitcoin/net/StreamParser;->connectionOpened()V

    .line 57
    .end local v0    # "handler":Lcom/google/bitcoin/net/ConnectionHandler;
    .end local v1    # "newChannel":Ljava/nio/channels/SocketChannel;
    .end local v2    # "newKey":Ljava/nio/channels/SelectionKey;
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p2}, Lcom/google/bitcoin/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method


# virtual methods
.method protected run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/net/NioServer;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    .line 81
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 82
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 84
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 86
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v4, v2}, Lcom/google/bitcoin/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error trying to open/read from connection: {}"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 95
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 100
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 101
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v4, v2}, Lcom/google/bitcoin/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing selection key"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 95
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 100
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 101
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v4, v2}, Lcom/google/bitcoin/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 102
    :catch_2
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing selection key"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing channel"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_2
    :try_start_6
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 112
    :goto_5
    :try_start_7
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 117
    :goto_6
    return-void

    .line 108
    :catch_4
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing server selector"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing server channel"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    :catch_6
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing channel"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_3
    :try_start_8
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 112
    :goto_7
    :try_start_9
    iget-object v4, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    .line 113
    :catch_7
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing server channel"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing server selector"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 95
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 100
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 101
    iget-object v5, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v5, v2}, Lcom/google/bitcoin/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_8

    .line 102
    :catch_9
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing selection key"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing channel"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_4
    :try_start_c
    iget-object v5, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 112
    :goto_a
    :try_start_d
    iget-object v5, p0, Lcom/google/bitcoin/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 115
    :goto_b
    throw v4

    .line 108
    :catch_b
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing server selector"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/bitcoin/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Error closing server channel"

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public triggerShutdown()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/bitcoin/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 128
    return-void
.end method
