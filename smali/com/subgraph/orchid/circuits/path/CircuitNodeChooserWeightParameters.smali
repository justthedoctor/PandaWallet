.class Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;
.super Ljava/lang/Object;
.source "CircuitNodeChooserWeightParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters$1;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/lang/String; = "one"

.field private static final VAR_COUNT:I = 0x8

.field private static final VAR_WD:I = 0x3

.field private static final VAR_WDB:I = 0x7

.field private static final VAR_WE:I = 0x2

.field private static final VAR_WEB:I = 0x6

.field private static final VAR_WG:I = 0x0

.field private static final VAR_WGB:I = 0x4

.field private static final VAR_WM:I = 0x1

.field private static final VAR_WMB:I = 0x5

.field private static final ZERO:Ljava/lang/String; = "zero"


# instance fields
.field private final isValid:Z

.field private final vars:[D


# direct methods
.method private constructor <init>([DZ)V
    .locals 0
    .param p1, "vars"    # [D
    .param p2, "isValid"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    .line 89
    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid:Z

    .line 90
    return-void
.end method

.method private calculateWeight(ZZZ)D
    .locals 4
    .param p1, "isExit"    # Z
    .param p2, "isGuard"    # Z
    .param p3, "isDir"    # Z

    .prologue
    .line 139
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 140
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWdb()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWd()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 146
    :goto_0
    return-wide v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWd()D

    move-result-wide v0

    goto :goto_0

    .line 141
    :cond_1
    if-eqz p2, :cond_3

    .line 142
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWgb()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWg()D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWg()D

    move-result-wide v0

    goto :goto_0

    .line 143
    :cond_3
    if-eqz p1, :cond_5

    .line 144
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWeb()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWe()D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWe()D

    move-result-wide v0

    goto :goto_0

    .line 146
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWmb()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWm()D

    move-result-wide v0

    goto :goto_0
.end method

.method static create(Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;
    .locals 7
    .param p0, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;
    .param p1, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    .prologue
    const/16 v5, 0x8

    .line 21
    new-array v3, v5, [D

    .line 22
    .local v3, "vars":[D
    invoke-interface {p0}, Lcom/subgraph/orchid/ConsensusDocument;->getWeightScaleParameter()I

    move-result v4

    int-to-long v0, v4

    .line 23
    .local v0, "scale":J
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getTagsForWeightRule(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)[Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "tags":[Ljava/lang/String;
    invoke-static {p0, v0, v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->populateVars(Lcom/subgraph/orchid/ConsensusDocument;J[Ljava/lang/String;[D)Z

    move-result v4

    if-nez v4, :cond_0

    .line 25
    new-instance v4, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;-><init>([DZ)V

    .line 27
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;-><init>([DZ)V

    goto :goto_0
.end method

.method static getTagsForWeightRule(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)[Ljava/lang/String;
    .locals 7
    .param p0, "rule"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters$1;->$SwitchMap$com$subgraph$orchid$circuits$path$CircuitNodeChooser$WeightRule:[I

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled WeightRule type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Wgg"

    aput-object v1, v0, v2

    const-string v1, "Wgm"

    aput-object v1, v0, v3

    const-string v1, "zero"

    aput-object v1, v0, v4

    const-string v1, "Wgd"

    aput-object v1, v0, v5

    const-string v1, "Wgb"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Wmb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Web"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Wdb"

    aput-object v2, v0, v1

    .line 76
    :goto_0
    return-object v0

    .line 61
    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Wmg"

    aput-object v1, v0, v2

    const-string v1, "Wmm"

    aput-object v1, v0, v3

    const-string v1, "Wme"

    aput-object v1, v0, v4

    const-string v1, "Wmd"

    aput-object v1, v0, v5

    const-string v1, "Wgb"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Wmb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Web"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Wdb"

    aput-object v2, v0, v1

    goto :goto_0

    .line 66
    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Wee"

    aput-object v1, v0, v2

    const-string v1, "Wem"

    aput-object v1, v0, v3

    const-string v1, "Wed"

    aput-object v1, v0, v4

    const-string v1, "Weg"

    aput-object v1, v0, v5

    const-string v1, "Wgb"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Wmb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Web"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Wdb"

    aput-object v2, v0, v1

    goto :goto_0

    .line 71
    :pswitch_3
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Wbe"

    aput-object v1, v0, v2

    const-string v1, "Wbm"

    aput-object v1, v0, v3

    const-string v1, "Wbd"

    aput-object v1, v0, v4

    const-string v1, "Wbg"

    aput-object v1, v0, v5

    const-string v1, "one"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "one"

    aput-object v2, v0, v1

    goto :goto_0

    .line 76
    :pswitch_4
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "one"

    aput-object v1, v0, v2

    const-string v1, "one"

    aput-object v1, v0, v3

    const-string v1, "one"

    aput-object v1, v0, v4

    const-string v1, "one"

    aput-object v1, v0, v5

    const-string v1, "one"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "one"

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static populateVars(Lcom/subgraph/orchid/ConsensusDocument;J[Ljava/lang/String;[D)Z
    .locals 5
    .param p0, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;
    .param p1, "scale"    # J
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "vars"    # [D

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 33
    aget-object v1, p3, v0

    invoke-static {p0, p1, p2, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->tagToVarValue(Lcom/subgraph/orchid/ConsensusDocument;JLjava/lang/String;)D

    move-result-wide v1

    aput-wide v1, p4, v0

    .line 34
    aget-wide v1, p4, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 40
    :goto_1
    return v1

    .line 37
    :cond_0
    aget-wide v1, p4, v0

    long-to-double v3, p1

    div-double/2addr v1, v3

    aput-wide v1, p4, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static tagToVarValue(Lcom/subgraph/orchid/ConsensusDocument;JLjava/lang/String;)D
    .locals 2
    .param p0, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;
    .param p1, "scale"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "zero"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-wide/16 v0, 0x0

    .line 49
    :goto_0
    return-wide v0

    .line 46
    :cond_0
    const-string v0, "one"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p0, p3}, Lcom/subgraph/orchid/ConsensusDocument;->getBandwidthWeight(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0
.end method


# virtual methods
.method calculateWeightedBandwidth(Lcom/subgraph/orchid/Router;)D
    .locals 9
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getEstimatedBandwidth()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {p0, v7, v8}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->kbToBytes(J)J

    move-result-wide v0

    .line 127
    .local v0, "bw":J
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isBadExit()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v7

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getDirectoryPort()I

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    invoke-direct {p0, v4, v7, v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->calculateWeight(ZZZ)D

    move-result-wide v2

    .line 131
    .local v2, "w":D
    long-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    return-wide v4

    .end local v2    # "w":D
    :cond_0
    move v4, v6

    .line 127
    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method getWd()D
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWdb()D
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWe()D
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWeb()D
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWg()D
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWgb()D
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWm()D
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getWmb()D
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid:Z

    return v0
.end method

.method kbToBytes(J)J
    .locals 2
    .param p1, "kb"    # J

    .prologue
    .line 135
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
