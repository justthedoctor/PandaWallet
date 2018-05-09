.class public Lcom/subgraph/orchid/circuits/hs/HSDirectories;
.super Ljava/lang/Object;
.source "HSDirectories.java"


# static fields
.field private static final DIR_CLUSTER_SZ:I = 0x3


# instance fields
.field private currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private hsDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/Directory;)V
    .locals 1
    .param p1, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 25
    return-void
.end method

.method private getDirectoriesForDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)Ljava/util/List;
    .locals 3
    .param p1, "descriptorId"    # Lcom/subgraph/orchid/data/HexDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "hexId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->refreshFromDirectory()V

    .line 40
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getIndexForDescriptorId(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "idx":I
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->selectDirectoriesAtIndex(I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getHexIdForIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    .line 56
    .local v0, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIndexForDescriptorId(Ljava/lang/String;)I
    .locals 3
    .param p1, "hexId"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 46
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getHexIdForIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "routerId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    .end local v0    # "i":I
    .end local v1    # "routerId":Ljava/lang/String;
    :goto_1
    return v0

    .line 45
    .restart local v0    # "i":I
    .restart local v1    # "routerId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "routerId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private randomShuffle(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->swap(Ljava/util/List;II)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private refreshFromDirectory()V
    .locals 5

    .prologue
    .line 81
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    .line 82
    .local v0, "consensus":Lcom/subgraph/orchid/ConsensusDocument;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-ne v3, v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    .line 86
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 87
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 88
    .local v2, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isHSDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v2    # "r":Lcom/subgraph/orchid/Router;
    :cond_2
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    new-instance v4, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;

    invoke-direct {v4, p0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDirectories;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private selectDirectoriesAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 60
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 61
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 64
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 66
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v0, "dirs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 68
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 71
    const/4 p1, 0x0

    .line 67
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_4
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->randomShuffle(Ljava/util/List;)V

    .line 75
    return-object v0
.end method

.method private swap(Ljava/util/List;II)V
    .locals 2
    .param p2, "idx1"    # I
    .param p3, "idx2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    if-eq p2, p3, :cond_0

    .line 110
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    .line 111
    .local v0, "r1":Lcom/subgraph/orchid/Router;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 112
    .local v1, "r2":Lcom/subgraph/orchid/Router;
    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v0    # "r1":Lcom/subgraph/orchid/Router;
    .end local v1    # "r2":Lcom/subgraph/orchid/Router;
    :cond_0
    return-void
.end method


# virtual methods
.method getDirectoriesForHiddenService(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Ljava/util/List;
    .locals 6
    .param p1, "hs"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v0, "dirs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;>;"
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAllCurrentDescriptorIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/data/HexDigest;

    .line 30
    .local v3, "id":Lcom/subgraph/orchid/data/HexDigest;
    invoke-direct {p0, v3}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getDirectoriesForDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/Router;

    .line 31
    .local v4, "r":Lcom/subgraph/orchid/Router;
    new-instance v5, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-direct {v5, v3, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/Router;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/subgraph/orchid/data/HexDigest;
    .end local v4    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-object v0
.end method
