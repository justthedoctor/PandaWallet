.class public Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;
.super Ljava/lang/Object;
.source "CircuitNodeChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 0.1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 24
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    .line 25
    new-instance v0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    .line 26
    return-void
.end method

.method private calculateWeight(ZDD)D
    .locals 6
    .param p1, "matchesRule"    # Z
    .param p2, "totalByType"    # D
    .param p4, "total"    # D

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 164
    if-nez p1, :cond_0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, p2, v4

    if-gez v4, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-wide v0

    .line 167
    :cond_1
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p2

    div-double v4, p4, v4

    sub-double/2addr v0, v4

    .line 168
    .local v0, "result":D
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    .line 169
    goto :goto_0
.end method

.method private chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 1
    .param p2, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseNodeByBandwidthWeights(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 96
    .local v0, "choice":Lcom/subgraph/orchid/Router;
    if-eqz v0, :cond_0

    .line 99
    .end local v0    # "choice":Lcom/subgraph/orchid/Router;
    :goto_0
    return-object v0

    .restart local v0    # "choice":Lcom/subgraph/orchid/Router;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseNodeByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    goto :goto_0
.end method

.method private chooseNodeByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 8
    .param p2, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    new-instance v2, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    invoke-direct {v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;-><init>()V

    .line 129
    .local v2, "bwr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/Router;

    .line 130
    .local v5, "r":Lcom/subgraph/orchid/Router;
    invoke-direct {p0, v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getRouterBandwidthBytes(Lcom/subgraph/orchid/Router;)J

    move-result-wide v0

    .line 131
    .local v0, "bw":J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 132
    invoke-virtual {v2, v5}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouterUnknown(Lcom/subgraph/orchid/Router;)V

    goto :goto_0

    .line 134
    :cond_0
    long-to-double v6, v0

    invoke-virtual {v2, v5, v6, v7}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouter(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0

    .line 137
    .end local v0    # "bw":J
    .end local v5    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues()V

    .line 138
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isTotalBandwidthZero()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 140
    const/4 v6, 0x0

    .line 148
    :goto_1
    return-object v6

    .line 143
    :cond_2
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v4

    .line 144
    .local v4, "idx":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/subgraph/orchid/Router;

    goto :goto_1

    .line 147
    .end local v4    # "idx":I
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->computeFinalWeights(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)V

    .line 148
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;

    move-result-object v6

    goto :goto_1
.end method

.method private chooseNodeByBandwidthWeights(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 3
    .param p2, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v1

    .line 105
    .local v1, "consensus":Lcom/subgraph/orchid/ConsensusDocument;
    if-nez v1, :cond_0

    .line 106
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 108
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->computeWeightedBandwidths(Ljava/util/List;Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    move-result-object v0

    .line 109
    .local v0, "bwr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;

    move-result-object v2

    goto :goto_0
.end method

.method private computeFinalWeights(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)V
    .locals 12
    .param p1, "bwr"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    .param p2, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 155
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    if-ne p2, v0, :cond_0

    move v1, v10

    :goto_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalExitBandwidth()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->calculateWeight(ZDD)D

    move-result-wide v6

    .line 157
    .local v6, "exitWeight":D
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    if-ne p2, v0, :cond_1

    move v1, v10

    :goto_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalGuardBandwidth()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->calculateWeight(ZDD)D

    move-result-wide v8

    .line 160
    .local v8, "guardWeight":D
    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustWeights(DD)V

    .line 161
    return-void

    .end local v6    # "exitWeight":D
    .end local v8    # "guardWeight":D
    :cond_0
    move v1, v11

    .line 155
    goto :goto_0

    .restart local v6    # "exitWeight":D
    :cond_1
    move v1, v11

    .line 157
    goto :goto_1
.end method

.method private computeWeightedBandwidths(Ljava/util/List;Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    .locals 8
    .param p2, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;
    .param p3, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-static {p2, p3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->create(Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    move-result-object v5

    .line 115
    .local v5, "wp":Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;
    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    sget-object v6, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->logger:Ljava/util/logging/Logger;

    const-string v7, "Got invalid bandwidth weights. Falling back to old selection method"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 117
    const/4 v4, 0x0

    .line 124
    :cond_0
    return-object v4

    .line 119
    :cond_1
    new-instance v4, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    invoke-direct {v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;-><init>()V

    .line 120
    .local v4, "weightedRouters":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 121
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-virtual {v5, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->calculateWeightedBandwidth(Lcom/subgraph/orchid/Router;)D

    move-result-wide v2

    .line 122
    .local v2, "wbw":D
    invoke-virtual {v4, v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouter(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0
.end method

.method private getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;
    .locals 4
    .param p1, "rf"    # Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .param p2, "needDescriptor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getUsableRouters(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 72
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {p1, v1}, Lcom/subgraph/orchid/circuits/path/RouterFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-object v2
.end method

.method private getRouterBandwidthBytes(Lcom/subgraph/orchid/Router;)J
    .locals 2
    .param p1, "r"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 176
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->hasBandwidth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-wide/16 v0, -0x1

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getEstimatedBandwidth()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->kbToBytes(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private kbToBytes(J)J
    .locals 2
    .param p1, "bw"    # J

    .prologue
    .line 184
    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    goto :goto_0
.end method


# virtual methods
.method public chooseDirectory()Lcom/subgraph/orchid/Router;
    .locals 4

    .prologue
    .line 39
    new-instance v2, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;

    invoke-direct {v2, p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V

    .line 44
    .local v2, "filter":Lcom/subgraph/orchid/circuits/path/RouterFilter;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    sget-object v3, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_DIR:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-direct {p0, v0, v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 46
    .local v1, "choice":Lcom/subgraph/orchid/Router;
    if-nez v1, :cond_0

    .line 47
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getRandomDirectoryAuthority()Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v1

    .line 49
    .end local v1    # "choice":Lcom/subgraph/orchid/Router;
    :cond_0
    return-object v1
.end method

.method public chooseExitNode(Ljava/util/List;)Lcom/subgraph/orchid/Router;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filterExitCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "filteredCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    return-object v1
.end method

.method public chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;
    .locals 3
    .param p1, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .param p2, "routerFilter"    # Lcom/subgraph/orchid/circuits/path/RouterFilter;

    .prologue
    .line 60
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 62
    .local v1, "choice":Lcom/subgraph/orchid/Router;
    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 66
    .end local v1    # "choice":Lcom/subgraph/orchid/Router;
    :cond_0
    return-object v1
.end method

.method getUsableRouters(Z)Ljava/util/List;
    .locals 4
    .param p1, "needDescriptor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 82
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isHibernating()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    :cond_2
    return-object v2
.end method
