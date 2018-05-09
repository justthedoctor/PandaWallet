.class Lcom/google/bitcoin/store/TransactionalHashMap;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private inTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKeyType;TValueType;>;"
        }
    .end annotation
.end field

.field tempMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashMap",
            "<TKeyType;TValueType;>;>;"
        }
    .end annotation
.end field

.field tempSetRemoved:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashSet",
            "<TKeyType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    .line 95
    return-void
.end method


# virtual methods
.method public abortDatabaseBatchWrite()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 114
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 115
    return-void
.end method

.method public beginDatabaseBatchWrite()V
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public commitDatabaseBatchWrite()V
    .locals 6

    .prologue
    .line 102
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "key":Ljava/lang/Object;, "TKeyType;"
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;, "TKeyType;"
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKeyType;TValueType;>;"
    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKeyType;TValueType;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/store/TransactionalHashMap;->abortDatabaseBatchWrite()V

    .line 109
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "value":Ljava/lang/Object;, "TValueType;"
    if-eqz v0, :cond_0

    .line 128
    .end local v0    # "value":Ljava/lang/Object;, "TValueType;"
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    .local p2, "value":Ljava/lang/Object;, "TValueType;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/google/bitcoin/store/TransactionalHashMap;, "Lcom/google/bitcoin/store/TransactionalHashMap<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "retVal":Ljava/lang/Object;, "TValueType;"
    if-eqz v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempSetRemoved:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->tempMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "tempVal":Ljava/lang/Object;, "TValueType;"
    if-eqz v1, :cond_2

    .line 159
    .end local v0    # "retVal":Ljava/lang/Object;, "TValueType;"
    .end local v1    # "tempVal":Ljava/lang/Object;, "TValueType;"
    :goto_0
    return-object v1

    .restart local v0    # "retVal":Ljava/lang/Object;, "TValueType;"
    :cond_2
    move-object v1, v0

    .line 157
    goto :goto_0

    .line 159
    .end local v0    # "retVal":Ljava/lang/Object;, "TValueType;"
    :cond_3
    iget-object v2, p0, Lcom/google/bitcoin/store/TransactionalHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
