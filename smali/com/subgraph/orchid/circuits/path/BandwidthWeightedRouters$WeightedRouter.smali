.class Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
.super Ljava/lang/Object;
.source "BandwidthWeightedRouters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeightedRouter"
.end annotation


# instance fields
.field private isUnknown:Z

.field private final router:Lcom/subgraph/orchid/Router;

.field private scaledBandwidth:J

.field private weightedBandwidth:D


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/Router;D)V
    .locals 0
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "bw"    # D

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->router:Lcom/subgraph/orchid/Router;

    .line 18
    iput-wide p2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->isUnknown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->isUnknown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->router:Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D
    .locals 2
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    .param p1, "x1"    # D

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    return-wide p1
.end method

.method static synthetic access$234(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D
    .locals 2
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    .param p1, "x1"    # D

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)J
    .locals 2
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->scaledBandwidth:J

    return-wide v0
.end method


# virtual methods
.method scaleBandwidth(D)V
    .locals 2
    .param p1, "scaleFactor"    # D

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->weightedBandwidth:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->scaledBandwidth:J

    .line 23
    return-void
.end method
