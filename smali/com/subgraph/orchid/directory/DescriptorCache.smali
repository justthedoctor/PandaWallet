.class public abstract Lcom/subgraph/orchid/directory/DescriptorCache;
.super Ljava/lang/Object;
.source "DescriptorCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/subgraph/orchid/Descriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field private cacheLength:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final data:Lcom/subgraph/orchid/directory/DescriptorCacheData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCacheData",
            "<TT;>;"
        }
    .end annotation
.end field

.field private droppedBytes:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private initiallyLoaded:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field private journalLength:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final store:Lcom/subgraph/orchid/DirectoryStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 1
    .param p1, "store"    # Lcom/subgraph/orchid/DirectoryStore;
    .param p2, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .param p3, "journalFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .prologue
    .line 42
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    new-instance v0, Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    .line 44
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    .line 45
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 46
    iput-object p3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 47
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->startRebuildTask()Ljava/util/concurrent/ScheduledFuture;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/DescriptorCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/DescriptorCache;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->maybeRebuildCache()V

    return-void
.end method

.method private declared-synchronized clearMemoryCache()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->clear()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadCacheBuffers()[Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 111
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    monitor-enter v2

    .line 112
    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    .line 113
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 114
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 115
    monitor-exit v2

    return-object v0

    .line 116
    .end local v0    # "buffers":[Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadCacheFileBuffer(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 120
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    iput v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    .line 121
    iget v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    if-nez v4, :cond_1

    .line 133
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v2

    .line 125
    .local v2, "parser":Lcom/subgraph/orchid/directory/parsing/DocumentParser;, "Lcom/subgraph/orchid/directory/parsing/DocumentParser<TT;>;"
    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object v3

    .line 126
    .local v3, "result":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<TT;>;"
    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 128
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    sget-object v4, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_CACHEFILE:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-interface {v0, v4}, Lcom/subgraph/orchid/Descriptor;->setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V

    .line 129
    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v4, v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    goto :goto_0
.end method

.method private loadJournalFileBuffer(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 136
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    iput v5, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    .line 137
    iget v5, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    if-nez v5, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v3

    .line 141
    .local v3, "parser":Lcom/subgraph/orchid/directory/parsing/DocumentParser;, "Lcom/subgraph/orchid/directory/parsing/DocumentParser<TT;>;"
    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object v4

    .line 142
    .local v4, "result":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<TT;>;"
    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "duplicateCount":I
    sget-object v5, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " descriptors from journal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 146
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    sget-object v5, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_JOURNAL:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-interface {v0, v5}, Lcom/subgraph/orchid/Descriptor;->setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V

    .line 147
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v5, v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    :cond_3
    if-lez v1, :cond_0

    .line 152
    sget-object v5, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " duplicate descriptors in journal file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v1    # "duplicateCount":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    sget-object v5, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid descriptor data parsing from journal file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_5
    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    sget-object v5, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing descriptors from journal file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized maybeRebuildCache()V
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->cleanExpired()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    .line 178
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shouldRebuildCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rebuildCache()V
    .locals 4

    .prologue
    .line 198
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->getAllDescriptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/subgraph/orchid/DirectoryStore;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v0, v2}, Lcom/subgraph/orchid/DirectoryStore;->removeCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->reloadCache()V

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized reloadCache()V
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->clearMemoryCache()V

    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadCacheBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadCacheFileBuffer(Ljava/nio/ByteBuffer;)V

    .line 104
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadJournalFileBuffer(Ljava/nio/ByteBuffer;)V

    .line 105
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "buffers":[Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shouldRebuildCache()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    iget v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    const/16 v3, 0x4000

    if-ge v2, v3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    iget v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    iget v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_2

    move v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    iget v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    iget v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    move v0, v1

    .line 192
    goto :goto_0
.end method

.method private startRebuildTask()Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/subgraph/orchid/directory/DescriptorCache$1;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/directory/DescriptorCache$1;-><init>(Lcom/subgraph/orchid/directory/DescriptorCache;)V

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDescriptor(Lcom/subgraph/orchid/Descriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    .local p1, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "descriptors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public declared-synchronized addDescriptors(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "journalDescriptors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "duplicateCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 69
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v4, v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;

    move-result-object v4

    sget-object v5, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    if-ne v4, v5, :cond_0

    .line 71
    iget v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getBodyLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    .line 72
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    .end local v1    # "duplicateCount":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "journalDescriptors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 75
    .restart local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    .restart local v1    # "duplicateCount":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "journalDescriptors":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v5, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v4, v5, v3}, Lcom/subgraph/orchid/DirectoryStore;->appendDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    .line 82
    :cond_3
    if-lez v1, :cond_4

    .line 83
    sget-object v4, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate descriptors added to journal, count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_4
    monitor-exit p0

    return-void
.end method

.method protected abstract createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;
    .locals 1
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->findByDigest(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialLoad()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->reloadCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCache;, "Lcom/subgraph/orchid/directory/DescriptorCache<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 59
    return-void
.end method
