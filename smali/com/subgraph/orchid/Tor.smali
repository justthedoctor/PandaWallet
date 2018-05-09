.class public Lcom/subgraph/orchid/Tor;
.super Ljava/lang/Object;
.source "Tor.java"


# static fields
.field public static final BOOTSTRAP_STATUS_CIRCUIT_CREATE:I = 0x5a

.field public static final BOOTSTRAP_STATUS_CONN_DIR:I = 0x5

.field public static final BOOTSTRAP_STATUS_CONN_OR:I = 0x50

.field public static final BOOTSTRAP_STATUS_DONE:I = 0x64

.field public static final BOOTSTRAP_STATUS_HANDSHAKE_DIR:I = 0xa

.field public static final BOOTSTRAP_STATUS_HANDSHAKE_OR:I = 0x55

.field public static final BOOTSTRAP_STATUS_LOADING_DESCRIPTORS:I = 0x32

.field public static final BOOTSTRAP_STATUS_LOADING_KEYS:I = 0x28

.field public static final BOOTSTRAP_STATUS_LOADING_STATUS:I = 0x19

.field public static final BOOTSTRAP_STATUS_ONEHOP_CREATE:I = 0xf

.field public static final BOOTSTRAP_STATUS_REQUESTING_DESCRIPTORS:I = 0x2d

.field public static final BOOTSTRAP_STATUS_REQUESTING_KEYS:I = 0x23

.field public static final BOOTSTRAP_STATUS_REQUESTING_STATUS:I = 0x14

.field public static final BOOTSTRAP_STATUS_STARTING:I = 0x0

.field private static final defaultCharset:Ljava/nio/charset/Charset;

.field private static final implementation:Ljava/lang/String; = "Orchid"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final version:Ljava/lang/String; = "1.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/subgraph/orchid/Tor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/Tor;->logger:Ljava/util/logging/Logger;

    .line 41
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/Tor;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircuitManager(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/CircuitManager;
    .locals 6
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "directoryDownloader"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p3, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p4, "tracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 132
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v0
.end method

.method public static createConfig()Lcom/subgraph/orchid/TorConfig;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    const-class v1, Lcom/subgraph/orchid/config/TorConfigProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/subgraph/orchid/TorConfig;

    aput-object v3, v2, v4

    new-instance v3, Lcom/subgraph/orchid/config/TorConfigProxy;

    invoke-direct {v3}, Lcom/subgraph/orchid/config/TorConfigProxy;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/TorConfig;

    .line 97
    .local v0, "config":Lcom/subgraph/orchid/TorConfig;
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/subgraph/orchid/Tor;->logger:Ljava/util/logging/Logger;

    const-string v2, "Android Runtime detected, disabling V2 Link protocol"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v4}, Lcom/subgraph/orchid/TorConfig;->setHandshakeV2Enabled(Z)V

    .line 101
    :cond_0
    return-object v0
.end method

.method public static createConnectionCache(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/ConnectionCache;
    .locals 1
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "tracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 123
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v0
.end method

.method private static createDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 44
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectory(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/Directory;
    .locals 1
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "customDirectoryStore"    # Lcom/subgraph/orchid/DirectoryStore;

    .prologue
    .line 119
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)V

    return-object v0
.end method

.method public static createDirectoryDownloader(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
    .locals 1
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 165
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v0
.end method

.method public static createInitalizationTracker()Lcom/subgraph/orchid/circuits/TorInitializationTracker;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;-><init>()V

    return-object v0
.end method

.method public static createSocksPortListener(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)Lcom/subgraph/orchid/SocksPortListener;
    .locals 1
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/CircuitManager;

    .prologue
    .line 146
    new-instance v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)V

    return-object v0
.end method

.method public static getBuildRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/subgraph/orchid/Revision;->getBuildRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/subgraph/orchid/Tor;->defaultCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static getFullVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/subgraph/orchid/Tor;->getBuildRevision()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "revision":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImplementation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Orchid"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static isAndroidRuntime()Z
    .locals 2

    .prologue
    .line 83
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "runtime":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Android Runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
