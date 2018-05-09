.class public Lcom/google/bitcoin/crypto/DeterministicHierarchy;
.super Ljava/lang/Object;
.source "DeterministicHierarchy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_CHILD_DERIVATION_ATTEMPTS:I = 0x64


# instance fields
.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;",
            "Lcom/google/bitcoin/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final lastPrivDerivedNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final lastPubDerivedNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final rootPath:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/crypto/DeterministicKey;)V
    .locals 1
    .param p1, "rootKey"    # Lcom/google/bitcoin/crypto/DeterministicKey;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->lastPrivDerivedNumbers:Ljava/util/Map;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->lastPubDerivedNumbers:Ljava/util/Map;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->putKey(Lcom/google/bitcoin/crypto/DeterministicKey;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    .line 59
    return-void
.end method

.method private deriveChild(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 1
    .param p1, "parent"    # Lcom/google/bitcoin/crypto/DeterministicKey;
    .param p2, "createChildNumber"    # Lcom/google/bitcoin/crypto/ChildNumber;

    .prologue
    .line 133
    invoke-static {p1, p2}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->deriveChildKey(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    .line 134
    .local v0, "childKey":Lcom/google/bitcoin/crypto/DeterministicKey;
    invoke-direct {p0, v0}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->putKey(Lcom/google/bitcoin/crypto/DeterministicKey;)V

    .line 135
    return-object v0
.end method

.method private getLastDerivedNumbers(Z)Ljava/util/Map;
    .locals 1
    .param p1, "privateDerivation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->lastPrivDerivedNumbers:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->lastPubDerivedNumbers:Ljava/util/Map;

    goto :goto_0
.end method

.method private getNextChildNumberToDerive(Lcom/google/common/collect/ImmutableList;Z)Lcom/google/bitcoin/crypto/ChildNumber;
    .locals 4
    .param p2, "privateDerivation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;Z)",
            "Lcom/google/bitcoin/crypto/ChildNumber;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "path":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-direct {p0, p2}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->getLastDerivedNumbers(Z)Ljava/util/Map;

    move-result-object v1

    .line 112
    .local v1, "lastDerivedNumbers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/crypto/ChildNumber;

    .line 113
    .local v0, "lastChildNumber":Lcom/google/bitcoin/crypto/ChildNumber;
    new-instance v2, Lcom/google/bitcoin/crypto/ChildNumber;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/ChildNumber;->getChildNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-direct {v2, v3, p2}, Lcom/google/bitcoin/crypto/ChildNumber;-><init>(IZ)V

    .line 114
    .local v2, "nextChildNumber":Lcom/google/bitcoin/crypto/ChildNumber;
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object v2

    .line 113
    .end local v2    # "nextChildNumber":Lcom/google/bitcoin/crypto/ChildNumber;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private putKey(Lcom/google/bitcoin/crypto/DeterministicKey;)V
    .locals 2
    .param p1, "key"    # Lcom/google/bitcoin/crypto/DeterministicKey;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public deriveChild(Ljava/util/List;ZZLcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 1
    .param p2, "relative"    # Z
    .param p3, "createParent"    # Z
    .param p4, "createChildNumber"    # Lcom/google/bitcoin/crypto/ChildNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;ZZ",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ")",
            "Lcom/google/bitcoin/crypto/DeterministicKey;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parentPath":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->deriveChild(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public deriveNextChild(Lcom/google/common/collect/ImmutableList;ZZZ)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 6
    .param p2, "relative"    # Z
    .param p3, "createParent"    # Z
    .param p4, "privateDerivation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;ZZZ)",
            "Lcom/google/bitcoin/crypto/DeterministicKey;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parentPath":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v3

    .line 100
    .local v3, "parent":Lcom/google/bitcoin/crypto/DeterministicKey;
    const/4 v1, 0x0

    .local v1, "nAttempts":I
    move v2, v1

    .line 101
    .end local v1    # "nAttempts":I
    .local v2, "nAttempts":I
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "nAttempts":I
    .restart local v1    # "nAttempts":I
    const/16 v4, 0x64

    if-ge v2, v4, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v3}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {p0, v4, p4}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->getNextChildNumberToDerive(Lcom/google/common/collect/ImmutableList;Z)Lcom/google/bitcoin/crypto/ChildNumber;

    move-result-object v0

    .line 104
    .local v0, "createChildNumber":Lcom/google/bitcoin/crypto/ChildNumber;
    invoke-direct {p0, v3, v0}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->deriveChild(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;
    :try_end_0
    .catch Lcom/google/bitcoin/crypto/HDDerivationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 105
    .end local v0    # "createChildNumber":Lcom/google/bitcoin/crypto/ChildNumber;
    :catch_0
    move-exception v4

    move v2, v1

    .end local v1    # "nAttempts":I
    .restart local v2    # "nAttempts":I
    goto :goto_0

    .line 107
    .end local v2    # "nAttempts":I
    .restart local v1    # "nAttempts":I
    :cond_0
    new-instance v4, Lcom/google/bitcoin/crypto/HDDerivationException;

    const-string v5, "Maximum number of child derivation attempts reached, this is probably an indication of a bug."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public get(Ljava/util/List;ZZ)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 7
    .param p2, "relativePath"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;ZZ)",
            "Lcom/google/bitcoin/crypto/DeterministicKey;"
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 78
    .local v0, "absolutePath":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string v5, "No key found for {} path {}."

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string v2, "relative"

    :goto_1
    aput-object v2, v6, v4

    aput-object p1, v6, v3

    invoke-static {p3, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_2
    const-string v5, "Can\'t derive the master key: nothing to derive from."

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v3}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v1

    .line 82
    .local v1, "parent":Lcom/google/bitcoin/crypto/DeterministicKey;
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/crypto/ChildNumber;

    invoke-static {v1, v2}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->deriveChildKey(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->putKey(Lcom/google/bitcoin/crypto/DeterministicKey;)V

    .line 84
    .end local v1    # "parent":Lcom/google/bitcoin/crypto/DeterministicKey;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->keys:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/crypto/DeterministicKey;

    return-object v2

    .line 75
    .end local v0    # "absolutePath":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 79
    .restart local v0    # "absolutePath":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    :cond_2
    const-string v2, "absolute"

    goto :goto_1

    :cond_3
    move v2, v4

    .line 80
    goto :goto_2
.end method

.method public getRootKey()Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->rootPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/bitcoin/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method
