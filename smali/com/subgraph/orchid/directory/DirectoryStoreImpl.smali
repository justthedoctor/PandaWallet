.class public Lcom/subgraph/orchid/directory/DirectoryStoreImpl;
.super Ljava/lang/Object;
.source "DirectoryStoreImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryStore;


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Lcom/subgraph/orchid/directory/DirectoryStoreFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    .line 20
    return-void
.end method

.method private getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;
    .locals 4
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    new-instance v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {p1}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized appendDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .locals 1
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "documents":Ljava/util/List;, "Ljava/util/List<+Lcom/subgraph/orchid/Document;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->appendDocuments(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->loadContents()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllCacheFiles()V
    .locals 5

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->values()[Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 48
    .local v1, "cf":Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "cf":Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "arr$":[Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 1
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeData(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeData(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V
    .locals 2
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .param p2, "document"    # Lcom/subgraph/orchid/Document;

    .prologue
    .line 31
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/subgraph/orchid/Document;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .locals 1
    .param p1, "cacheFile"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "documents":Ljava/util/List;, "Ljava/util/List<+Lcom/subgraph/orchid/Document;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocuments(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
