.class public Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
.super Ljava/lang/Object;
.source "BandwidthWeightedRouters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 0.1

.field private static final MAX_SCALE:J = 0x1fffffffffffffffL


# instance fields
.field private isScaled:Z

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private totalExitBw:D

.field private totalGuardBw:D

.field private totalNonExitBw:D

.field private unknownCount:I

.field private final weightedRouters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method private adjustTotals(Lcom/subgraph/orchid/Router;D)V
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "bw"    # D

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    .line 68
    :goto_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    .line 71
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    goto :goto_0
.end method

.method private chooseFirstElementAboveRandom(J)Lcom/subgraph/orchid/Router;
    .locals 7
    .param p1, "randomValue"    # J

    .prologue
    .line 141
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "sum":J
    const/4 v0, 0x0

    .line 143
    .local v0, "chosen":Lcom/subgraph/orchid/Router;
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 144
    .local v4, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$300(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 145
    cmp-long v5, v2, p1

    if-lez v5, :cond_0

    .line 146
    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 148
    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    .line 151
    .end local v4    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_1
    if-nez v0, :cond_2

    .line 152
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-static {v5}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 154
    .end local v0    # "chosen":Lcom/subgraph/orchid/Router;
    :cond_2
    return-object v0
.end method

.method private fixUnknownValues(JJ)V
    .locals 8
    .param p1, "fastBw"    # J
    .param p3, "slowBw"    # J

    .prologue
    const/4 v7, 0x0

    .line 102
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 103
    .local v3, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$000(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Router;->isFast()Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v0, p1

    .line 105
    .local v0, "bw":J
    :goto_1
    long-to-double v4, v0

    invoke-static {v3, v4, v5}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    .line 106
    invoke-static {v3, v7}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$002(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;Z)Z

    .line 107
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v4

    long-to-double v5, v0

    invoke-direct {p0, v4, v5, v6}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustTotals(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0

    .end local v0    # "bw":J
    :cond_1
    move-wide v0, p3

    .line 104
    goto :goto_1

    .line 110
    .end local v3    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_2
    iput v7, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    .line 111
    iput-boolean v7, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    .line 112
    return-void
.end method

.method private getScaledTotal()J
    .locals 6

    .prologue
    .line 174
    iget-boolean v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    if-nez v4, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->scaleRouterWeights()V

    .line 177
    :cond_0
    const-wide/16 v1, 0x0

    .line 178
    .local v1, "total":J
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 179
    .local v3, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$300(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 181
    .end local v3    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_1
    return-wide v1
.end method

.method private getWeightedTotal()D
    .locals 6

    .prologue
    .line 158
    const-wide/16 v1, 0x0

    .line 159
    .local v1, "total":D
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 160
    .local v3, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D

    move-result-wide v4

    add-double/2addr v1, v4

    goto :goto_0

    .line 162
    .end local v3    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_0
    return-wide v1
.end method

.method private scaleRouterWeights()V
    .locals 8

    .prologue
    .line 166
    const-wide/high16 v4, 0x43c0000000000000L    # 2.305843009213694E18

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getWeightedTotal()D

    move-result-wide v6

    div-double v1, v4, v6

    .line 167
    .local v1, "scaleFactor":D
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 168
    .local v3, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-virtual {v3, v1, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->scaleBandwidth(D)V

    goto :goto_0

    .line 170
    .end local v3    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    .line 171
    return-void
.end method


# virtual methods
.method addRouter(Lcom/subgraph/orchid/Router;D)V
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "weightedBandwidth"    # D

    .prologue
    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    new-instance v1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-direct {v1, p1, p2, p3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;-><init>(Lcom/subgraph/orchid/Router;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustTotals(Lcom/subgraph/orchid/Router;D)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    .line 42
    return-void
.end method

.method addRouterUnknown(Lcom/subgraph/orchid/Router;)V
    .locals 3
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 74
    new-instance v0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;-><init>(Lcom/subgraph/orchid/Router;D)V

    .line 75
    .local v0, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$002(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;Z)Z

    .line 76
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    .line 78
    return-void
.end method

.method adjustWeights(DD)V
    .locals 5
    .param p1, "exitWeight"    # D
    .param p3, "guardWeight"    # D

    .prologue
    .line 127
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 128
    .local v2, "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    invoke-static {v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 129
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    mul-double v3, p1, p3

    invoke-static {v2, v3, v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$234(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-static {v2, p3, p4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$234(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-static {v2, p1, p2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$234(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 137
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    .end local v2    # "wr":Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    :cond_3
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->scaleRouterWeights()V

    .line 138
    return-void
.end method

.method chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;
    .locals 5

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getScaledTotal()J

    move-result-wide v1

    .line 116
    .local v1, "total":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 118
    const/4 v3, 0x0

    .line 123
    :goto_0
    return-object v3

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    .line 121
    .local v0, "idx":I
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v3

    goto :goto_0

    .line 123
    .end local v0    # "idx":I
    :cond_1
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v3, v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong(J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseFirstElementAboveRandom(J)Lcom/subgraph/orchid/Router;

    move-result-object v3

    goto :goto_0
.end method

.method fixUnknownValues()V
    .locals 7

    .prologue
    .line 89
    iget v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    if-nez v3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isTotalBandwidthZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-wide/32 v3, 0x9c40

    const-wide/16 v5, 0x4e20

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues(JJ)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    sub-int v2, v3, v4

    .line 96
    .local v2, "knownCount":I
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    double-to-long v0, v3

    .line 97
    .local v0, "average":J
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues(JJ)V

    goto :goto_0
.end method

.method getRouterCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getTotalBandwidth()D
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    iget-wide v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getTotalExitBandwidth()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    return-wide v0
.end method

.method getTotalGuardBandwidth()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    return-wide v0
.end method

.method getUnknownCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    return v0
.end method

.method isTotalBandwidthZero()Z
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
