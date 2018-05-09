.class public Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitManager;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/CircuitManagerImpl$3;,
        Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;,
        Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;
    }
.end annotation


# static fields
.field private static final OPEN_DIRECTORY_STREAM_RETRY_COUNT:I = 0x5

.field private static final OPEN_DIRECTORY_STREAM_TIMEOUT:I = 0x2710


# instance fields
.field private final activeCircuits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/circuits/CircuitImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

.field private final cleanInternalCircuits:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/subgraph/orchid/InternalCircuit;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private final pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

.field private pendingInternalCircuitCount:I

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private requestedInternalCircuitCount:I

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 7
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directoryDownloader"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
    .param p3, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p4, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p5, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    .line 57
    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 68
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->directory:Lcom/subgraph/orchid/Directory;

    .line 69
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 70
    invoke-static {p1, p3}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    .line 71
    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getUseEntryGuards()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    new-instance v1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/DirectoryDownloader;Lcom/subgraph/orchid/Directory;)V

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->enableEntryGuards(Lcom/subgraph/orchid/circuits/guards/EntryGuards;)V

    .line 74
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/PendingExitStreams;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    .line 75
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    .line 78
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 80
    iput-object p5, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 81
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-direct {v0, p1, p3, p0}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    .line 83
    invoke-virtual {p2, p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->setCircuitManager(Lcom/subgraph/orchid/CircuitManager;)V

    .line 84
    return-void
.end method

.method private maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 4
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 196
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getClientRejectInternalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting stream target with internal address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    return-void
.end method

.method private maybeRejectInternalAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/subgraph/orchid/data/IPv4Address;->isValidIPv4AddressString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 192
    :cond_0
    return-void
.end method

.method private purposeToEventCode(IZ)I
    .locals 1
    .param p1, "purpose"    # I
    .param p2, "getLoadingEvent"    # Z

    .prologue
    .line 254
    packed-switch p1, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 256
    :pswitch_0
    if-eqz p2, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 258
    :pswitch_1
    if-eqz p2, :cond_1

    const/16 v0, 0x28

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    goto :goto_0

    .line 260
    :pswitch_2
    if-eqz p2, :cond_2

    const/16 v0, 0x32

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z
    .locals 6
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;
    .param p2, "isDirectory"    # Z
    .param p3, "trackInitialization"    # Z

    .prologue
    const/4 v3, 0x0

    .line 389
    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;)V

    .line 390
    .local v1, "result":Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-direct {v0, v4, p1, v1, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 391
    .local v0, "req":Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
    new-instance v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v5

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    :cond_0
    invoke-direct {v2, v0, v4, v5, v3}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 392
    .local v2, "task":Lcom/subgraph/orchid/circuits/CircuitBuildTask;
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->run()V

    .line 393
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isSuccessful()Z

    move-result v3

    return v3
.end method

.method private validateHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".onion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    const-string v1, "Hidden services not supported"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    const-string v1, ".exit addresses are not supported"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method addActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/circuits/CircuitImpl;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addCleanInternalCircuit(Lcom/subgraph/orchid/InternalCircuit;)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/InternalCircuit;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v1

    .line 340
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 341
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createNewExitCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 1
    .param p1, "exitRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createExitCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object v0

    return-object v0
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
    .line 288
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_1

    .line 298
    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-interface {p1, p2, p3, v2}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    .line 292
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->getCircuitPredictor()Lcom/subgraph/orchid/circuits/CircuitPredictor;

    move-result-object v2

    invoke-interface {p1, p2, p3, v2}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    .line 293
    const-string v2, "[Circuit Manager]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;

    .line 296
    .local v0, "c":Lcom/subgraph/orchid/Circuit;
    invoke-interface {p1, p2, p3, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method decrementPendingInternalCircuitCount()V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v1

    .line 334
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getActiveCircuitCount()I
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;
    .locals 5
    .param p1, "filter"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Circuit;>;"
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v4

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 137
    .local v0, "c":Lcom/subgraph/orchid/circuits/CircuitImpl;
    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;->filter(Lcom/subgraph/orchid/Circuit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v0    # "c":Lcom/subgraph/orchid/circuits/CircuitImpl;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    return-object v2
.end method

.method public bridge synthetic getCleanInternalCircuit()Lcom/subgraph/orchid/Circuit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    return-object v0
.end method

.method public getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v1

    .line 303
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    :try_start_1
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    throw v0

    .line 311
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 307
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/InternalCircuit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :try_start_3
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0
.end method

.method getNeededCleanCircuitCount(Z)I
    .locals 7
    .param p1, "isPredicted"    # Z

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v3

    .line 316
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 317
    .local v1, "predictedCount":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 318
    .local v0, "needed":I
    if-gez v0, :cond_1

    .line 319
    monitor-exit v3

    move v0, v2

    .line 321
    .end local v0    # "needed":I
    :goto_1
    return v0

    .end local v1    # "predictedCount":I
    :cond_0
    move v1, v2

    .line 316
    goto :goto_0

    .line 321
    .restart local v0    # "needed":I
    .restart local v1    # "predictedCount":I
    :cond_1
    monitor-exit v3

    goto :goto_1

    .line 323
    .end local v0    # "needed":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method declared-synchronized getPendingCircuitCount()I
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingCircuits()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPendingCircuits()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPendingExitStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->getUnreservedPendingRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRandomlyOrderedListOfExitCircuits()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/ExitCircuit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v8, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;

    invoke-direct {v8, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    invoke-virtual {p0, v8}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v4

    .line 153
    .local v4, "notDirectory":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Circuit;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "ac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/subgraph/orchid/ExitCircuit;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Circuit;

    .line 155
    .local v1, "c":Lcom/subgraph/orchid/Circuit;
    instance-of v8, v1, Lcom/subgraph/orchid/ExitCircuit;

    if-eqz v8, :cond_0

    .line 156
    check-cast v1, Lcom/subgraph/orchid/ExitCircuit;

    .end local v1    # "c":Lcom/subgraph/orchid/Circuit;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 160
    .local v6, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/subgraph/orchid/ExitCircuit;

    .line 162
    .local v7, "tmp":Lcom/subgraph/orchid/ExitCircuit;
    iget-object v8, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v8, v6}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v5

    .line 163
    .local v5, "swapIdx":I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v0, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v5    # "swapIdx":I
    .end local v7    # "tmp":Lcom/subgraph/orchid/ExitCircuit;
    :cond_2
    return-object v0
.end method

.method incrementPendingInternalCircuitCount()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v1

    .line 328
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 329
    monitor-exit v1

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNtorEnabled()Z
    .locals 3

    .prologue
    .line 347
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$3;->$SwitchMap$com$subgraph$orchid$TorConfig$AutoBoolValue:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getUseNTorHandshake()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUseNTorHandshake() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v2}, Lcom/subgraph/orchid/TorConfig;->getUseNTorHandshake()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabledInConsensus()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 351
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isNtorEnabledInConsensus()Z
    .locals 2

    .prologue
    .line 360
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    .line 361
    .local v0, "consensus":Lcom/subgraph/orchid/ConsensusDocument;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->getUseNTorHandshake()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "failCount":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 244
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createDirectoryCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    .line 245
    .local v0, "circuit":Lcom/subgraph/orchid/DirectoryCircuit;
    invoke-direct {p0, v0, v3, v3}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    return-object v0

    .line 248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 249
    goto :goto_0

    .line 250
    .end local v0    # "circuit":Lcom/subgraph/orchid/DirectoryCircuit;
    :cond_1
    new-instance v2, Lcom/subgraph/orchid/OpenFailedException;

    const-string v3, "Could not create circuit for directory stream"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDirectoryCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/DirectoryCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createDirectoryCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    .line 366
    .local v0, "circuit":Lcom/subgraph/orchid/DirectoryCircuit;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v2, "Could not create directory circuit for path"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_0
    return-object v0
.end method

.method public openDirectoryStream()Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->openDirectoryStream(I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    return-object v0
.end method

.method public openDirectoryStream(I)Lcom/subgraph/orchid/Stream;
    .locals 9
    .param p1, "purpose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 216
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->purposeToEventCode(IZ)I

    move-result v4

    .line 217
    .local v4, "requestEventCode":I
    invoke-direct {p0, p1, v7}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->purposeToEventCode(IZ)I

    move-result v3

    .line 219
    .local v3, "loadingEventCode":I
    const/4 v2, 0x0

    .line 220
    .local v2, "failCount":I
    :goto_0
    const/4 v6, 0x5

    if-ge v2, v6, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    .line 222
    .local v0, "circuit":Lcom/subgraph/orchid/DirectoryCircuit;
    if-lez v4, :cond_0

    .line 223
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v6, v4}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 226
    :cond_0
    const-wide/16 v6, 0x2710

    const/4 v8, 0x1

    :try_start_0
    invoke-interface {v0, v6, v7, v8}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;

    move-result-object v5

    .line 227
    .local v5, "stream":Lcom/subgraph/orchid/Stream;
    if-lez v3, :cond_1

    .line 228
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v6, v3}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :cond_1
    return-object v5

    .line 231
    .end local v5    # "stream":Lcom/subgraph/orchid/Stream;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    invoke-interface {v0}, Lcom/subgraph/orchid/DirectoryCircuit;->markForClose()V

    .line 233
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_0

    .line 234
    .end local v1    # "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    :catch_1
    move-exception v1

    .line 235
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v0}, Lcom/subgraph/orchid/DirectoryCircuit;->markForClose()V

    goto :goto_0

    .line 238
    .end local v0    # "circuit":Lcom/subgraph/orchid/DirectoryCircuit;
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    new-instance v6, Lcom/subgraph/orchid/OpenFailedException;

    const-string v7, "Retry count exceeded opening directory stream"

    invoke-direct {v6, v7}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public openExitCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/ExitCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    const/4 v1, 0x0

    .line 373
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createExitCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object v0

    .line 374
    .local v0, "circuit":Lcom/subgraph/orchid/ExitCircuit;
    invoke-direct {p0, v0, v1, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v2, "Could not create exit circuit for path"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_0
    return-object v0
.end method

.method public openExitStreamTo(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 203
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictPort(I)V

    .line 204
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStream(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    return-object v0
.end method

.method public openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, ".onion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->validateHostname(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictPort(I)V

    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStream(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    goto :goto_0
.end method

.method public openInternalCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/InternalCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    const/4 v1, 0x0

    .line 381
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createInternalCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    .line 382
    .local v0, "circuit":Lcom/subgraph/orchid/InternalCircuit;
    invoke-direct {p0, v0, v1, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v2, "Could not create internal circuit for path"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    return-object v0
.end method

.method removeActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/circuits/CircuitImpl;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startBuildingCircuits()V
    .locals 7

    .prologue
    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    return-void
.end method

.method public declared-synchronized stopBuildingCircuits(Z)V
    .locals 4
    .param p1, "killCircuits"    # Z

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v1, "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/CircuitImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 95
    .local v0, "c":Lcom/subgraph/orchid/circuits/CircuitImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->destroyCircuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "c":Lcom/subgraph/orchid/circuits/CircuitImpl;
    .end local v1    # "circuits":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/CircuitImpl;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 98
    :cond_0
    monitor-exit p0

    return-void
.end method
