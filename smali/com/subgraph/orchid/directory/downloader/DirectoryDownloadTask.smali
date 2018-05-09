.class public Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
.super Ljava/lang/Object;
.source "DirectoryDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;,
        Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;,
        Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;,
        Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private consensusDownloadTime:Ljava/util/Date;

.field private currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

.field private final descriptorProcessor:Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final downloader:Lcom/subgraph/orchid/DirectoryDownloader;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private volatile isDownloadingCertificates:Z

.field private volatile isDownloadingConsensus:Z

.field private volatile isStopped:Z

.field private final outstandingDescriptorTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/DirectoryDownloader;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p3, "downloader"    # Lcom/subgraph/orchid/DirectoryDownloader;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 46
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->config:Lcom/subgraph/orchid/TorConfig;

    .line 47
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    .line 48
    iput-object p3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->downloader:Lcom/subgraph/orchid/DirectoryDownloader;

    .line 49
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->outstandingDescriptorTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;

    invoke-direct {v0, p1, p2}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->descriptorProcessor:Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->useMicrodescriptors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->downloader:Lcom/subgraph/orchid/DirectoryDownloader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingConsensus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->outstandingDescriptorTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingCertificates:Z

    return p1
.end method

.method private checkCertificates()V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingCertificates:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingCertificates:Z

    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkConsensus()V
    .locals 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingConsensus:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->needConsensusDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isDownloadingConsensus:Z

    .line 153
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkDescriptors()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->outstandingDescriptorTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 169
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->descriptorProcessor:Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->getDescriptorDigestsToDownload()Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "ds":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/subgraph/orchid/data/HexDigest;>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    .local v0, "dlist":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/HexDigest;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->outstandingDescriptorTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 167
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->useMicrodescriptors()Z

    move-result v5

    invoke-direct {v4, p0, v0, v5}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Ljava/util/Collection;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private chooseDownloadTimeForConsensus(Lcom/subgraph/orchid/ConsensusDocument;)Ljava/util/Date;
    .locals 22
    .param p1, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;

    .prologue
    .line 117
    invoke-interface/range {p1 .. p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->getMilliseconds(Lcom/subgraph/orchid/data/Timestamp;)J

    move-result-wide v14

    .line 118
    .local v14, "va":J
    invoke-interface/range {p1 .. p1}, Lcom/subgraph/orchid/ConsensusDocument;->getFreshUntilTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->getMilliseconds(Lcom/subgraph/orchid/data/Timestamp;)J

    move-result-wide v4

    .line 119
    .local v4, "fu":J
    invoke-interface/range {p1 .. p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidUntilTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->getMilliseconds(Lcom/subgraph/orchid/data/Timestamp;)J

    move-result-wide v16

    .line 120
    .local v16, "vu":J
    sub-long v6, v4, v14

    .line 121
    .local v6, "i1":J
    const-wide/16 v18, 0x3

    mul-long v18, v18, v6

    const-wide/16 v20, 0x4

    div-long v18, v18, v20

    add-long v12, v4, v18

    .line 122
    .local v12, "start":J
    sub-long v18, v16, v12

    const-wide/16 v20, 0x7

    mul-long v18, v18, v20

    const-wide/16 v20, 0x8

    div-long v8, v18, v20

    .line 123
    .local v8, "i2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong(J)J

    move-result-wide v10

    .line 124
    .local v10, "r":J
    add-long v2, v12, v10

    .line 125
    .local v2, "download":J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v18
.end method

.method private getMilliseconds(Lcom/subgraph/orchid/data/Timestamp;)J
    .locals 2
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private needConsensusDownload()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->hasPendingConsensus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->isLive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-nez v0, :cond_2

    .line 134
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->logger:Ljava/util/logging/Logger;

    const-string v1, "Downloading consensus because we have no consensus document"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 138
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->logger:Ljava/util/logging/Logger;

    const-string v1, "Downloading consensus because the document we have is not live"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->consensusDownloadTime:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0
.end method

.method private useMicrodescriptors()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getUseMicrodescriptors()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->loadFromStore()V

    .line 64
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->waitUntilLoaded()V

    .line 65
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->setCurrentConsensus(Lcom/subgraph/orchid/ConsensusDocument;)V

    .line 66
    :goto_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isStopped:Z

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->checkCertificates()V

    .line 68
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->checkConsensus()V

    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->checkDescriptors()V

    .line 71
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 77
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method setCurrentConsensus(Lcom/subgraph/orchid/ConsensusDocument;)V
    .locals 1
    .param p1, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;

    .prologue
    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    .line 92
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->chooseDownloadTimeForConsensus(Lcom/subgraph/orchid/ConsensusDocument;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->consensusDownloadTime:Ljava/util/Date;

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    .line 95
    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->consensusDownloadTime:Ljava/util/Date;

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->isStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
