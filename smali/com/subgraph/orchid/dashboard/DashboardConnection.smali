.class public Lcom/subgraph/orchid/dashboard/DashboardConnection;
.super Ljava/lang/Object;
.source "DashboardConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REFRESH_INTERVAL:I = 0x3e8


# instance fields
.field private final dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

.field private final refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/Socket;)V
    .locals 2
    .param p1, "dashboard"    # Lcom/subgraph/orchid/dashboard/Dashboard;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    .line 23
    iput-object p2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    .line 24
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/dashboard/DashboardConnection;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refresh(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private clear(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    .line 100
    const-string v0, "2J"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createRefreshRunnable(Ljava/io/PrintWriter;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 124
    new-instance v0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;-><init>(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V

    return-object v0
.end method

.method private emitCSI(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 95
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 96
    return-void
.end method

.method private hideCursor(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    .line 90
    const-string v0, "?25l"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private moveTo(Ljava/io/PrintWriter;II)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    .line 105
    const-string v0, "%d;%dH"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 106
    return-void
.end method

.method private refresh(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->hideCursor(Ljava/io/Writer;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->clear(Ljava/io/PrintWriter;)V

    .line 115
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->moveTo(Ljava/io/PrintWriter;II)V

    .line 116
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->renderAll(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0
.end method

.method private runInputLoop(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 55
    :sswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->toggleFlagWithVerbose(II)V

    goto :goto_0

    .line 58
    :sswitch_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->toggleFlag(I)V

    goto :goto_0

    .line 64
    :cond_0
    return-void

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method private toggleFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->disableFlag(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    goto :goto_0
.end method

.method private toggleFlagWithVerbose(II)V
    .locals 2
    .param p1, "basicFlag"    # I
    .param p2, "verboseFlag"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    or-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->disableFlag(I)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 28
    const/4 v8, 0x0

    .line 30
    .local v8, "handle":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :try_start_0
    new-instance v9, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .local v9, "writer":Ljava/io/PrintWriter;
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v9}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->createRefreshRunnable(Ljava/io/PrintWriter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v8

    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->runInputLoop(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v8, :cond_0

    .line 37
    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 41
    .end local v9    # "writer":Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v7

    .line 34
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->closeQuietly(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v8, :cond_1

    .line 37
    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    .line 36
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 37
    invoke-interface {v8, v10}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    throw v0
.end method
