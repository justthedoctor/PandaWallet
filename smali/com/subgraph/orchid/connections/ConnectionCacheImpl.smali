.class public Lcom/subgraph/orchid/connections/ConnectionCacheImpl;
.super Ljava/lang/Object;
.source "ConnectionCacheImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConnectionCache;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/connections/ConnectionCacheImpl$1;,
        Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;,
        Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final activeConnections:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private volatile isClosed:Z

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 7
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "tracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    const-wide/16 v2, 0x1388

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    invoke-direct {v0}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 77
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;-><init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/connections/ConnectionCacheImpl$1;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/connections/ConnectionSocketFactory;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/TorConfig;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->config:Lcom/subgraph/orchid/TorConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/circuits/TorInitializationTracker;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private addConnectionFromFuture(Ljava/util/concurrent/Future;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    .local p2, "connectionList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Connection;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private createFutureForIfAbsent(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "isDirectoryConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v2, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;-><init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/Router;Z)V

    .line 145
    .local v2, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 147
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 148
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    if-eqz v0, :cond_0

    .line 153
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    move-object v0, v1

    .line 153
    goto :goto_0
.end method

.method private getFutureFor(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "isDirectoryConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 137
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    if-eqz v0, :cond_0

    .line 140
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :goto_0
    return-object v0

    .restart local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->createFutureForIfAbsent(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method private printDashboardBanner(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I

    .prologue
    .line 170
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "verbose":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    const-string v1, "[Connection Cache (verbose)]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 177
    return-void

    .line 170
    .end local v0    # "verbose":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    .restart local v0    # "verbose":Z
    :cond_1
    const-string v1, "[Connection Cache]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 82
    iget-boolean v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    if-eqz v4, :cond_0

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-boolean v7, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    .line 86
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 87
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/connections/ConnectionImpl;

    .line 90
    .local v0, "conn":Lcom/subgraph/orchid/connections/ConnectionImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 91
    .end local v0    # "conn":Lcom/subgraph/orchid/connections/ConnectionImpl;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    const-string v5, "Unexpected interruption while closing connection"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v4, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception closing connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 100
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :cond_2
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 101
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "renderer"    # Lcom/subgraph/orchid/dashboard/DashboardRenderer;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->printDashboardBanner(Ljava/io/PrintWriter;I)V

    .line 161
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->getActiveConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Connection;

    .line 162
    .local v0, "c":Lcom/subgraph/orchid/Connection;
    invoke-interface {v0}, Lcom/subgraph/orchid/Connection;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    invoke-interface {p1, p2, p3, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_1

    .line 166
    .end local v0    # "c":Lcom/subgraph/orchid/Connection;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method getActiveConnections()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "cs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Connection;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 182
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->addConnectionFromFuture(Ljava/util/concurrent/Future;Ljava/util/List;)V

    goto :goto_0

    .line 184
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :cond_0
    return-object v0
.end method

.method public getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;
    .locals 7
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "isDirectoryConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 105
    iget-boolean v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    if-eqz v4, :cond_0

    .line 106
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ConnectionCache has been closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_0
    sget-object v4, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->getFutureFor(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 112
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Connection;

    .line 113
    .local v0, "c":Lcom/subgraph/orchid/Connection;
    invoke-interface {v0}, Lcom/subgraph/orchid/Connection;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    .end local v0    # "c":Lcom/subgraph/orchid/Connection;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 123
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Lcom/subgraph/orchid/ConnectionTimeoutException;

    if-eqz v4, :cond_1

    .line 124
    check-cast v3, Lcom/subgraph/orchid/ConnectionTimeoutException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 125
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v3, Lcom/subgraph/orchid/ConnectionFailedException;

    if-eqz v4, :cond_2

    .line 126
    check-cast v3, Lcom/subgraph/orchid/ConnectionFailedException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 127
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v4, v3, Lcom/subgraph/orchid/ConnectionHandshakeException;

    if-eqz v4, :cond_3

    .line 128
    check-cast v3, Lcom/subgraph/orchid/ConnectionHandshakeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 130
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 116
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "c":Lcom/subgraph/orchid/Connection;
    :cond_4
    return-object v0
.end method
