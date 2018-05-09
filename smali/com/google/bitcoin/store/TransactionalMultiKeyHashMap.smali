.class Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UniqueKeyType:",
        "Ljava/lang/Object;",
        "MultiKeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mapKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TMultiKeyType;",
            "Ljava/util/Set",
            "<TUniqueKeyType;>;>;"
        }
    .end annotation
.end field

.field mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/store/TransactionalHashMap",
            "<TUniqueKeyType;TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-direct {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    .line 177
    return-void
.end method


# virtual methods
.method public AbortTransaction()V
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->abortDatabaseBatchWrite()V

    .line 189
    return-void
.end method

.method public BeginTransaction()V
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->beginDatabaseBatchWrite()V

    .line 181
    return-void
.end method

.method public CommitTransaction()V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/TransactionalHashMap;->commitDatabaseBatchWrite()V

    .line 185
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TUniqueKeyType;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;TMultiKeyType;TValueType;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    .local p1, "uniqueKey":Ljava/lang/Object;, "TUniqueKeyType;"
    .local p2, "multiKey":Ljava/lang/Object;, "TMultiKeyType;"
    .local p3, "value":Ljava/lang/Object;, "TValueType;"
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v1, p1, p3}, Lcom/google/bitcoin/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 199
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TUniqueKeyType;>;"
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TUniqueKeyType;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 201
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TUniqueKeyType;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeByMultiKey(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMultiKeyType;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TMultiKeyType;"
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 215
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TUniqueKeyType;>;"
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 217
    .local v2, "uniqueKey":Ljava/lang/Object;, "TUniqueKeyType;"
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->removeByUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "uniqueKey":Ljava/lang/Object;, "TUniqueKeyType;"
    :cond_0
    return-void
.end method

.method public removeByUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;, "Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap<TUniqueKeyType;TMultiKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TUniqueKeyType;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalMultiKeyHashMap;->mapValues:Lcom/google/bitcoin/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/store/TransactionalHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
