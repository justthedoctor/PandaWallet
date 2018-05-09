.class public Lcom/subgraph/orchid/TorClient;
.super Ljava/lang/Object;
.source "TorClient.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private isStarted:Z

.field private isStopped:Z

.field private final readyLatch:Ljava/util/concurrent/CountDownLatch;

.field private final socksListener:Lcom/subgraph/orchid/SocksPortListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorClient;-><init>(Lcom/subgraph/orchid/DirectoryStore;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/DirectoryStore;)V
    .locals 7
    .param p1, "customDirectoryStore"    # Lcom/subgraph/orchid/DirectoryStore;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v5, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z

    .line 35
    iput-boolean v5, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    .line 44
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/subgraph/orchid/crypto/PRNGFixes;->apply()V

    .line 47
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-static {v0, p1}, Lcom/subgraph/orchid/Tor;->createDirectory(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/Directory;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    .line 49
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createInitalizationTracker()Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->createReadyFlagInitializationListener()Lcom/subgraph/orchid/TorInitializationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->addListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/Tor;->createConnectionCache(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/ConnectionCache;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/Tor;->createDirectoryDownloader(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v3, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v4, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/Tor;->createCircuitManager(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/CircuitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/Tor;->createSocksPortListener(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)Lcom/subgraph/orchid/SocksPortListener;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v0, Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-direct {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->addRenderables([Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/TorClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static createInitalizationListner()Lcom/subgraph/orchid/TorInitializationListener;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/subgraph/orchid/TorClient$2;

    invoke-direct {v0}, Lcom/subgraph/orchid/TorClient$2;-><init>()V

    return-object v0
.end method

.method private createReadyFlagInitializationListener()Lcom/subgraph/orchid/TorInitializationListener;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/subgraph/orchid/TorClient$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorClient$1;-><init>(Lcom/subgraph/orchid/TorClient;)V

    return-object v0
.end method

.method private declared-synchronized ensureStarted()V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call start() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lcom/subgraph/orchid/TorClient;

    invoke-direct {v0}, Lcom/subgraph/orchid/TorClient;-><init>()V

    .line 185
    .local v0, "client":Lcom/subgraph/orchid/TorClient;
    invoke-static {}, Lcom/subgraph/orchid/TorClient;->createInitalizationListner()Lcom/subgraph/orchid/TorInitializationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/TorClient;->addInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 186
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->start()V

    .line 187
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->enableSocksListener()V

    .line 188
    return-void
.end method

.method private verifyUnlimitedStrengthPolicyInstalled()V
    .locals 5

    .prologue
    .line 205
    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 206
    const-string v1, "Unlimited Strength Jurisdiction Policy Files are required but not installed."

    .line 207
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    const-string v3, "Unlimited Strength Jurisdiction Policy Files are required but not installed."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 208
    new-instance v2, Lcom/subgraph/orchid/TorException;

    const-string v3, "Unlimited Strength Jurisdiction Policy Files are required but not installed."

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "No AES provider found"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 213
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v2, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    const-string v3, "Skipped check for Unlimited Strength Jurisdiction Policy Files"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 216
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    return-void
.end method


# virtual methods
.method public addInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/subgraph/orchid/TorInitializationListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->addListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 168
    return-void
.end method

.method public disableDashboard()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 164
    :cond_0
    return-void
.end method

.method public enableDashboard()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V

    .line 153
    :cond_0
    return-void
.end method

.method public enableDashboard(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->setListeningPort(I)V

    .line 157
    invoke-virtual {p0}, Lcom/subgraph/orchid/TorClient;->enableDashboard()V

    .line 158
    return-void
.end method

.method public enableSocksListener()V
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x23be

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/TorClient;->enableSocksListener(I)V

    .line 147
    return-void
.end method

.method public enableSocksListener(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/SocksPortListener;->addListeningPort(I)V

    .line 143
    return-void
.end method

.method public getCircuitManager()Lcom/subgraph/orchid/CircuitManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    return-object v0
.end method

.method public getConfig()Lcom/subgraph/orchid/TorConfig;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    return-object v0
.end method

.method public getConnectionCache()Lcom/subgraph/orchid/ConnectionCache;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    return-object v0
.end method

.method public getDirectory()Lcom/subgraph/orchid/Directory;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;-><init>(Lcom/subgraph/orchid/TorClient;)V

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
    .line 131
    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->ensureStarted()V

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v0, p1, p2}, Lcom/subgraph/orchid/CircuitManager;->openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    return-object v0
.end method

.method public removeInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/subgraph/orchid/TorInitializationListener;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->removeListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 172
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot restart a TorClient instance.  Create a new instance instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_1
    :try_start_2
    sget-object v0, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Orchid (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->verifyUnlimitedStrengthPolicyInstalled()V

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->start(Lcom/subgraph/orchid/Directory;)V

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitManager;->startBuildingCircuits()V

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabledByProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V

    .line 85
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    invoke-interface {v1}, Lcom/subgraph/orchid/SocksPortListener;->stop()V

    .line 94
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->stop()V

    .line 98
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/CircuitManager;->stopBuildingCircuits(Z)V

    .line 99
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->close()V

    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-interface {v1}, Lcom/subgraph/orchid/ConnectionCache;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception while shutting down TorClient instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public waitUntilReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 122
    return-void
.end method

.method public waitUntilReady(J)V
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 128
    :cond_0
    return-void
.end method
