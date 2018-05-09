.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;
.super Ljava/lang/Object;
.source "HSDescriptorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "hiddenService"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .param p2, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "directories":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 31
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 32
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->directories:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private downloadDescriptorFrom(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 7
    .param p1, "dd"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading descriptor from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, "stream":Lcom/subgraph/orchid/Stream;
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->openHSDirectoryStream(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Stream;

    move-result-object v2

    .line 53
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/HttpConnection;

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;)V

    .line 54
    .local v1, "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/tor/rendezvous2/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/HexDigest;->toBase32()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->sendGetRequest(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readResponse()V

    .line 56
    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 57
    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getMessageBody()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->readDocument(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    .line 84
    .end local v1    # "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :cond_0
    :goto_0
    return-object v3

    .line 59
    .restart local v1    # "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HS descriptor download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v6}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed with status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto :goto_0

    .line 61
    .end local v1    # "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout downloading HS descriptor from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException downloading HS descriptor from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto/16 :goto_0

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 72
    .local v0, "e":Lcom/subgraph/orchid/OpenFailedException;
    :try_start_5
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open stream to HS directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/subgraph/orchid/OpenFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto/16 :goto_0

    .line 74
    .end local v0    # "e":Lcom/subgraph/orchid/OpenFailedException;
    :catch_4
    move-exception v0

    .line 75
    .local v0, "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :try_start_6
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Directory request to HS directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    goto/16 :goto_0

    .line 78
    .end local v0    # "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_2
    throw v3
.end method

.method private openHSDirectoryStream(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Stream;
    .locals 6
    .param p1, "directory"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    .line 93
    .local v0, "circuit":Lcom/subgraph/orchid/InternalCircuit;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/InternalCircuit;->cannibalizeToDirectory(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v1

    .line 94
    .local v1, "dc":Lcom/subgraph/orchid/DirectoryCircuit;
    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 95
    .end local v1    # "dc":Lcom/subgraph/orchid/DirectoryCircuit;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 97
    new-instance v3, Lcom/subgraph/orchid/OpenFailedException;

    const-string v4, "Failed to open directory stream"

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v2    # "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Lcom/subgraph/orchid/TorException;
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 100
    new-instance v3, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extend circuit to HS directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readDocument(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 5
    .param p1, "dd"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;
    .param p2, "body"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 105
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v0, p2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    .line 106
    .local v0, "fieldParser":Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V

    .line 107
    .local v1, "parser":Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;
    new-instance v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;

    invoke-direct {v2, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)V

    .line 108
    .local v2, "result":Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;
    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    .line 109
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public downloadDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 4

    .prologue
    .line 37
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->directories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    .line 38
    .local v0, "d":Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->downloadDescriptorFrom(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v1

    .line 39
    .local v1, "descriptor":Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    if-eqz v1, :cond_0

    .line 44
    .end local v0    # "d":Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;
    .end local v1    # "descriptor":Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
