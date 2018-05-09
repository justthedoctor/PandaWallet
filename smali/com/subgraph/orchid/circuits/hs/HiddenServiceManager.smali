.class public Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;
.super Ljava/lang/Object;
.source "HiddenServiceManager.java"


# static fields
.field private static final HS_STREAM_TIMEOUT:I = 0x4e20

.field private static final RENDEZVOUS_RETRY_COUNT:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            ">;"
        }
    .end annotation
.end field

.field private final hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p3, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->directory:Lcom/subgraph/orchid/Directory;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    .line 34
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-direct {v0, p2}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;-><init>(Lcom/subgraph/orchid/Directory;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    .line 35
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 36
    return-void
.end method

.method private createHiddenServiceFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->decodeOnion(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    .local v0, "decoded":[B
    new-instance v3, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-direct {v3, v4, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;-><init>(Lcom/subgraph/orchid/TorConfig;[B)V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 107
    .end local v0    # "decoded":[B
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Lcom/subgraph/orchid/TorException;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v3}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "[scrubbed]"

    .line 109
    .local v2, "target":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode onion address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private downloadDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 5
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .prologue
    .line 87
    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading HS descriptor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getDirectoriesForHiddenService(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "dirs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;>;"
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v1, p1, v2, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 90
    .local v1, "downloader":Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->downloadDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 4
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->openCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    .line 52
    .local v0, "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open circuit to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0    # "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 55
    .restart local v0    # "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->setCircuit(Lcom/subgraph/orchid/HiddenServiceCircuit;)V

    .line 57
    .end local v0    # "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    :cond_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method private openCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 6
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v1

    .line 63
    .local v1, "descriptor":Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 64
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->openRendezvousCircuit(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    .line 65
    .local v0, "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    if-eqz v0, :cond_0

    .line 66
    return-object v0

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "c":Lcom/subgraph/orchid/HiddenServiceCircuit;
    :cond_1
    new-instance v3, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open circuit to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private openRendezvousCircuit(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 4
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .param p2, "descriptor"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .prologue
    .line 114
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    .line 116
    .local v0, "builder":Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;
    :try_start_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->call()Lcom/subgraph/orchid/HiddenServiceCircuit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 4
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->hasCurrentDescriptor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->downloadDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v0

    .line 77
    .local v0, "descriptor":Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    if-nez v0, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download HS descriptor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/subgraph/orchid/OpenFailedException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->setDescriptor(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    goto :goto_0
.end method

.method getHiddenServiceForOnion(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .locals 4
    .param p1, "onion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v1, ".onion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->createHiddenServiceFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    monitor-exit v2

    return-object v1

    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 94
    goto :goto_0

    .line 100
    .restart local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 6
    .param p1, "onion"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getHiddenServiceForOnion(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;

    move-result-object v2

    .line 40
    .local v2, "hs":Lcom/subgraph/orchid/circuits/hs/HiddenService;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    .line 43
    .local v0, "circuit":Lcom/subgraph/orchid/HiddenServiceCircuit;
    const-wide/16 v3, 0x4e20

    :try_start_0
    invoke-interface {v0, p2, v3, v4}, Lcom/subgraph/orchid/HiddenServiceCircuit;->openStream(IJ)Lcom/subgraph/orchid/Stream;
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    new-instance v3, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open stream to hidden service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/subgraph/orchid/StreamConnectFailedException;->getReason()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
