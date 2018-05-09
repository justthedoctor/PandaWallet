.class public Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;
.super Ljava/lang/Object;
.source "DescriptorProcessor.java"


# static fields
.field private static final MAX_CLIENT_INTERVAL_WITHOUT_REQUEST:I = 0x927c0

.field private static final MAX_DL_PER_REQUEST:I = 0x60

.field private static final MAX_DL_TO_DELAY:I = 0x10

.field private static final MIN_DL_REQUESTS:I = 0x3


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private lastDescriptorDownload:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->config:Lcom/subgraph/orchid/TorConfig;

    .line 29
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    .line 30
    return-void
.end method

.method private canDownloadDescriptors(I)Z
    .locals 9
    .param p1, "downloadableCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const/16 v5, 0x10

    if-lt p1, v5, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v3

    .line 35
    :cond_1
    if-nez p1, :cond_2

    move v3, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v5, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    if-eqz v5, :cond_0

    .line 39
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 40
    .local v2, "now":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 41
    .local v0, "diff":J
    const-wide/32 v5, 0x927c0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private createPartitionList(Ljava/util/List;II)Ljava/util/List;
    .locals 4
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/HexDigest;>;"
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v1, v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Router;

    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->getDescriptorDigestForRouter(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 82
    .local v0, "digest":Lcom/subgraph/orchid/data/HexDigest;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "digest":Lcom/subgraph/orchid/data/HexDigest;
    :cond_0
    return-object v2
.end method

.method private getDescriptorDigestForRouter(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1
    .param p1, "r"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->useMicrodescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    goto :goto_0
.end method

.method private partitionDescriptors(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 49
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "partitions":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/subgraph/orchid/data/HexDigest;>;>;"
    const/16 v7, 0xa

    if-gt v5, v7, :cond_1

    .line 51
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, v5}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-object v4

    .line 53
    :cond_1
    const/16 v7, 0x120

    if-gt v5, v7, :cond_3

    .line 54
    div-int/lit8 v0, v5, 0x3

    .line 55
    .local v0, "chunk":I
    rem-int/lit8 v3, v5, 0x3

    .line 56
    .local v3, "over":I
    const/4 v2, 0x0

    .line 57
    .local v2, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v1, v7, :cond_0

    .line 58
    move v6, v0

    .line 59
    .local v6, "sz":I
    if-eqz v3, :cond_2

    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    add-int/lit8 v3, v3, -0x1

    .line 63
    :cond_2
    invoke-direct {p0, p1, v2, v6}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/2addr v2, v6

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "chunk":I
    .end local v1    # "i":I
    .end local v2    # "off":I
    .end local v3    # "over":I
    .end local v6    # "sz":I
    :cond_3
    const/4 v2, 0x0

    .line 70
    .restart local v2    # "off":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 71
    const/16 v7, 0x60

    invoke-direct {p0, p1, v2, v7}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x60

    goto :goto_1
.end method

.method private useMicrodescriptors()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->config:Lcom/subgraph/orchid/TorConfig;

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
.method getDescriptorDigestsToDownload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    .line 101
    .local v0, "consensus":Lcom/subgraph/orchid/ConsensusDocument;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->isLive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 110
    :goto_0
    return-object v2

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getRoutersWithDownloadableDescriptors()Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "downloadables":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->canDownloadDescriptors(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 109
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    .line 110
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->partitionDescriptors(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
