.class public Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
.super Ljava/lang/Object;
.source "DirectoryDownloaderImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryDownloader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

.field private downloadTaskThread:Ljava/lang/Thread;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private isStarted:Z

.field private isStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 39
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 40
    return-void
.end method

.method private openBridgeCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 4
    .param p1, "bridge"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subgraph/orchid/Router;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/CircuitManager;->openDirectoryCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;
    :try_end_0
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/subgraph/orchid/OpenFailedException;
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open directory circuit to bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v1}, Lcom/subgraph/orchid/CircuitManager;->openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    :try_end_0
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lcom/subgraph/orchid/OpenFailedException;
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v2, "Failed to open directory circuit"

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/subgraph/orchid/Descriptor;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "requested":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    .local p2, "received":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 116
    .local v3, "unrequestedCount":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 117
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    :cond_1
    if-lez v3, :cond_2

    .line 124
    sget-object v4, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " received descriptor(s) with fingerprints that did not match requested descriptors"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 126
    :cond_2
    return-object v2
.end method


# virtual methods
.method public downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 2
    .param p1, "bridge"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openBridgeCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;)V

    .line 71
    .local v0, "requestor":Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 1
    .param p1, "useMicrodescriptors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadCurrentConsensus(ZLcom/subgraph/orchid/DirectoryCircuit;)Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    return-object v0
.end method

.method public downloadCurrentConsensus(ZLcom/subgraph/orchid/DirectoryCircuit;)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 2
    .param p1, "useMicrodescriptors"    # Z
    .param p2, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 81
    .local v0, "requestor":Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v1

    return-object v1
.end method

.method public downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "required":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadKeyCertificates(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public downloadKeyCertificates(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 2
    .param p2, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "required":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;>;"
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 90
    .local v0, "requestor":Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadRouterDescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 3
    .param p2, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v1, p2, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 99
    .local v1, "requestor":Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "ds":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/RouterDescriptor;>;"
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadRouterMicrodescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 3
    .param p2, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v1, p2, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 109
    .local v1, "requestor":Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "ds":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/RouterMicrodescriptor;>;"
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public setCircuitManager(Lcom/subgraph/orchid/CircuitManager;)V
    .locals 0
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/CircuitManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    .line 44
    return-void
.end method

.method public declared-synchronized start(Lcom/subgraph/orchid/Directory;)V
    .locals 2
    .param p1, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Directory downloader already running"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set CircuitManager instance with setCircuitManager() before starting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_1
    :try_start_2
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-direct {v0, v1, p1, p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/DirectoryDownloader;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .line 56
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTaskThread:Ljava/lang/Thread;

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTaskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->stop()V

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTaskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
