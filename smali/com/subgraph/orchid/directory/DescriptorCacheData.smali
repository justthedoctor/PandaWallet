.class public Lcom/subgraph/orchid/directory/DescriptorCacheData;
.super Ljava/lang/Object;
.source "DescriptorCacheData.java"


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
.field private static final EXPIRY_PERIOD:J = 0x240c8400L


# instance fields
.field private final allDescriptors:Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final descriptorMap:Ljava/util/Map;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    .line 30
    return-void
.end method

.method private getExpiredSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 76
    .local v3, "now":J
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v1, "expired":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 78
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    invoke-direct {p0, v0, v3, v4}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->isExpired(Lcom/subgraph/orchid/Descriptor;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    :cond_1
    return-object v1
.end method

.method private isExpired(Lcom/subgraph/orchid/Descriptor;J)Z
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    .local p1, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getLastListed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getLastListed()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long v2, p2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    .local p1, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 46
    :goto_0
    monitor-exit p0

    return v0

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanExpired()I
    .locals 5

    .prologue
    .line 55
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->getExpiredSet()Ljava/util/Set;

    move-result-object v2

    .line 57
    .local v2, "expired":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 71
    :cond_0
    monitor-exit p0

    return v1

    .line 61
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->clear()V

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "dropped":I
    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 64
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getBodyLength()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;, "TT;"
    .end local v1    # "dropped":I
    .end local v2    # "expired":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized findByDigest(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;
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
    .line 33
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAllDescriptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/subgraph/orchid/directory/DescriptorCacheData;, "Lcom/subgraph/orchid/directory/DescriptorCacheData<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
