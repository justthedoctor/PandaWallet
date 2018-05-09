.class public Lcom/subgraph/orchid/dashboard/Dashboard;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderer;


# static fields
.field private static final DASHBOARD_PORT_PROPERTY:Ljava/lang/String; = "com.subgraph.orchid.dashboard.port"

.field private static final DEFAULT_FLAGS:I = 0x18

.field private static final DEFAULT_LISTENING_PORT:I = 0x3039

.field private static final LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private flags:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private isListening:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private listeningPort:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private listeningSocket:Ljava/net/ServerSocket;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final renderables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/dashboard/DashboardRenderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    .line 27
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x18

    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    .line 41
    invoke-static {}, Lcom/subgraph/orchid/dashboard/Dashboard;->chooseListeningPort()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    .line 42
    return-void
.end method

.method private acceptConnections(Ljava/net/ServerSocket;)V
    .locals 5
    .param p1, "ss"    # Ljava/net/ServerSocket;

    .prologue
    .line 145
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 146
    .local v1, "s":Ljava/net/Socket;
    iget-object v2, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/subgraph/orchid/dashboard/DashboardConnection;

    invoke-direct {v3, p0, v1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;-><init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    sget-object v2, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException on dashboard server socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/dashboard/Dashboard;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->acceptConnections(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private static chooseListeningPort()I
    .locals 5

    .prologue
    .line 45
    const-string v2, "com.subgraph.orchid.dashboard.port"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "dbPort":Ljava/lang/String;
    invoke-static {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->parsePortProperty(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "port":I
    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    .line 52
    .end local v1    # "port":I
    :goto_0
    return v1

    .line 49
    .restart local v1    # "port":I
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    sget-object v2, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.subgraph.orchid.dashboard.port was not a valid port value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 52
    :cond_1
    const/16 v1, 0x3039

    goto :goto_0
.end method

.method private closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "s"    # Ljava/net/ServerSocket;

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createAcceptLoopRunnable(Ljava/net/ServerSocket;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "ss"    # Ljava/net/ServerSocket;

    .prologue
    .line 135
    new-instance v0, Lcom/subgraph/orchid/dashboard/Dashboard$1;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard$1;-><init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V

    return-object v0
.end method

.method private static parsePortProperty(Ljava/lang/String;)I
    .locals 2
    .param p0, "dbPort"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 56
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return v1

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public addRenderable(Lcom/subgraph/orchid/dashboard/DashboardRenderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public varargs addRenderables([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 67
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 68
    .local v3, "ob":Ljava/lang/Object;
    instance-of v4, v3, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    check-cast v3, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .end local v3    # "ob":Ljava/lang/Object;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "renderer"    # Lcom/subgraph/orchid/dashboard/DashboardRenderer;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I

    .prologue
    .line 175
    const-string v0, "[Dashboard]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    return-void
.end method

.method public declared-synchronized disableFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled(I)Z
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabledByProperty()Z
    .locals 1

    .prologue
    .line 102
    const-string v0, "com.subgraph.orchid.dashboard.port"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isListening()Z
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method renderAll(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    .line 161
    .local v1, "fs":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v3, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .line 164
    .local v0, "dr":Lcom/subgraph/orchid/dashboard/DashboardRenderable;
    invoke-interface {v0, p0, p1, v1}, Lcom/subgraph/orchid/dashboard/DashboardRenderable;->dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V

    goto :goto_0

    .line 161
    .end local v0    # "dr":Lcom/subgraph/orchid/dashboard/DashboardRenderable;
    .end local v1    # "fs":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 166
    .restart local v1    # "fs":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    instance-of v1, p3, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 183
    check-cast v0, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .line 184
    .local v0, "renderable":Lcom/subgraph/orchid/dashboard/DashboardRenderable;
    invoke-interface {v0, p0, p1, p2}, Lcom/subgraph/orchid/dashboard/DashboardRenderable;->dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public declared-synchronized setListeningPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    if-eq p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    .line 94
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 96
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startListening()V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    const/16 v3, 0x32

    sget-object v4, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v4}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z

    .line 112
    sget-object v1, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dashboard listening on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/dashboard/Dashboard;->createAcceptLoopRunnable(Ljava/net/ServerSocket;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create listening Dashboard socket on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    .line 127
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
