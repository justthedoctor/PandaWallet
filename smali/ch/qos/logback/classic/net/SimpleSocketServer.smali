.class public Lch/qos/logback/classic/net/SimpleSocketServer;
.super Ljava/lang/Thread;


# instance fields
.field private closed:Z

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final lc:Lch/qos/logback/classic/LoggerContext;

.field logger:Lorg/slf4j/Logger;

.field private final port:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private socketNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/classic/net/SocketNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lch/qos/logback/classic/net/SimpleSocketServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->closed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    iput-object p1, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->lc:Lch/qos/logback/classic/LoggerContext;

    iput p2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->port:I

    return-void
.end method

.method public static configureLC(Lch/qos/logback/classic/LoggerContext;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->reset()V

    invoke-virtual {v0, p0}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/lang/String;)V

    return-void
.end method

.method protected static doMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lch/qos/logback/classic/net/SimpleSocketServer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lch/qos/logback/classic/net/SimpleSocketServer;->parsePortNumber(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, 0x1

    aget-object v2, p1, v0

    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    invoke-static {v0, v2}, Lch/qos/logback/classic/net/SimpleSocketServer;->configureLC(Lch/qos/logback/classic/LoggerContext;Ljava/lang/String;)V

    new-instance v2, Lch/qos/logback/classic/net/SimpleSocketServer;

    invoke-direct {v2, v0, v1}, Lch/qos/logback/classic/net/SimpleSocketServer;-><init>(Lch/qos/logback/classic/LoggerContext;I)V

    invoke-virtual {v2}, Lch/qos/logback/classic/net/SimpleSocketServer;->start()V

    return-void

    :cond_0
    const-string v1, "Wrong number of arguments."

    invoke-static {v1}, Lch/qos/logback/classic/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lch/qos/logback/classic/net/SimpleSocketServer;

    invoke-static {v0, p0}, Lch/qos/logback/classic/net/SimpleSocketServer;->doMain(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method static parsePortNumber(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not interpret port number ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/classic/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lch/qos/logback/classic/net/SimpleSocketServer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port configFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->closed:Z

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-object v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v1, "closing this server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/net/SocketNode;

    invoke-virtual {v0}, Lch/qos/logback/classic/net/SocketNode;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Failed to close serverSocket"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-object v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Was expecting a 0-sized socketNodeList after server shutdown"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected getClientThreadName(Ljava/net/Socket;)Ljava/lang/String;
    .locals 4

    const-string v0, "Logback SocketNode (client: %s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getServerThreadName()Ljava/lang/String;
    .locals 4

    const-string v0, "Logback %s (port %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->closed:Z

    return v0
.end method

.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SimpleSocketServer;->getServerThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SimpleSocketServer;->getServerSocketFactory()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iget v2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->port:I

    invoke-virtual {v0, v2}, Ljavax/net/ServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    :goto_0
    iget-boolean v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Waiting to accept a new client."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SimpleSocketServer;->signalAlmostReadiness()V

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to client at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v3, "Starting new socket node."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lch/qos/logback/classic/net/SocketNode;

    iget-object v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->lc:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v2, p0, v0, v3}, Lch/qos/logback/classic/net/SocketNode;-><init>(Lch/qos/logback/classic/net/SimpleSocketServer;Ljava/net/Socket;Lch/qos/logback/classic/LoggerContext;)V

    iget-object v3, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SimpleSocketServer;->getClientThreadName(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-boolean v2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->closed:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Exception in run method for a closed server. This is normal."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_6
    iget-object v2, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v3, "Unexpected failure in run method"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method signalAlmostReadiness()V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public socketNodeClosing(Lch/qos/logback/classic/net/SocketNode;)V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Removing {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/net/SimpleSocketServer;->socketNodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
