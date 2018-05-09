.class public Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
.super Ljava/lang/Object;
.source "DirectoryDocumentRequestor.java"


# static fields
.field private static final OPEN_DIRECTORY_STREAM_TIMEOUT:I = 0x2710


# instance fields
.field private final circuit:Lcom/subgraph/orchid/DirectoryCircuit;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/DirectoryCircuit;)V
    .locals 1
    .param p1, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 0
    .param p1, "circuit"    # Lcom/subgraph/orchid/DirectoryCircuit;
    .param p2, "initializationTracker"    # Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->circuit:Lcom/subgraph/orchid/DirectoryCircuit;

    .line 38
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 39
    return-void
.end method

.method private createHttpConnection(I)Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    .locals 2
    .param p1, "purpose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->openDirectoryStream(I)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;)V

    return-object v0
.end method

.method private fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;
    .locals 4
    .param p2, "purpose"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "fetcher":Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;, "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<TT;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->createHttpConnection(I)Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 77
    .local v1, "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->requestDocuments(Lcom/subgraph/orchid/directory/downloader/HttpConnection;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 79
    :try_start_2
    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->close()V

    throw v2
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 81
    .end local v1    # "http":Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v3, "Directory request timed out"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v3, "Failed to open directory stream"

    invoke-direct {v2, v3, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    .end local v0    # "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v3, "I/O exception processing directory request"

    invoke-direct {v2, v3, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v3, "Directory request interrupted"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "fetcher":Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;, "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;
    .locals 3
    .param p2, "purpose"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
            "<TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "fetcher":Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;, "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 68
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyInitialization(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 121
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private openDirectoryStream(I)Lcom/subgraph/orchid/Stream;
    .locals 7
    .param p1, "purpose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 97
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->purposeToEventCode(IZ)I

    move-result v1

    .line 98
    .local v1, "requestEventCode":I
    invoke-direct {p0, p1, v6}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->purposeToEventCode(IZ)I

    move-result v0

    .line 100
    .local v0, "loadingEventCode":I
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->notifyInitialization(I)V

    .line 102
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->circuit:Lcom/subgraph/orchid/DirectoryCircuit;

    const-wide/16 v4, 0x2710

    invoke-interface {v3, v4, v5, v6}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;

    move-result-object v2

    .line 103
    .local v2, "stream":Lcom/subgraph/orchid/Stream;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->notifyInitialization(I)V

    .line 104
    return-object v2
.end method

.method private purposeToEventCode(IZ)I
    .locals 1
    .param p1, "purpose"    # I
    .param p2, "getLoadingEvent"    # Z

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :pswitch_0
    if-eqz p2, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 112
    :pswitch_1
    if-eqz p2, :cond_1

    const/16 v0, 0x28

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    goto :goto_0

    .line 114
    :pswitch_2
    if-eqz p2, :cond_2

    const/16 v0, 0x32

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 1
    .param p1, "bridge"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;-><init>()V

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    return-object v0
.end method

.method public downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 2
    .param p1, "useMicrodescriptors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;-><init>(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/ConsensusDocument;

    return-object v0
.end method

.method public downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;
    .locals 2
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
    .line 50
    .local p1, "required":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;>;"
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;-><init>(Ljava/util/Set;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 2
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
    .line 54
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 2
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
    .line 58
    .local p1, "fingerprints":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/data/HexDigest;>;"
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/MicrodescriptorFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/MicrodescriptorFetcher;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
