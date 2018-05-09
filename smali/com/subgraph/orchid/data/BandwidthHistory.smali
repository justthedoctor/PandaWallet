.class public Lcom/subgraph/orchid/data/BandwidthHistory;
.super Ljava/lang/Object;
.source "BandwidthHistory.java"


# instance fields
.field private final reportingInterval:I

.field private final reportingTime:Lcom/subgraph/orchid/data/Timestamp;

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/data/Timestamp;I)V
    .locals 1
    .param p1, "reportingTime"    # Lcom/subgraph/orchid/data/Timestamp;
    .param p2, "reportingInterval"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->samples:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->reportingTime:Lcom/subgraph/orchid/data/Timestamp;

    .line 14
    iput p2, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->reportingInterval:I

    .line 15
    return-void
.end method


# virtual methods
.method public addSample(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->samples:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public getReportingInterval()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->reportingInterval:I

    return v0
.end method

.method public getReportingTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/data/BandwidthHistory;->reportingTime:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method
