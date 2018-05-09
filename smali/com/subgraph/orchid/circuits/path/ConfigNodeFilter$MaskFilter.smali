.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaskFilter"
.end annotation


# instance fields
.field private final bits:I

.field private final mask:I

.field private final network:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 2
    .param p1, "network"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "bits"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->bits:I

    .line 40
    invoke-static {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->createMask(I)I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    .line 41
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    .line 42
    return-void
.end method

.method static createMask(I)I
    .locals 2
    .param p0, "maskBitCount"    # I

    .prologue
    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    add-int/lit8 v1, p0, -0x1

    shr-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 3
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v0

    .line 46
    .local v0, "routerAddress":I
    iget v1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    and-int/2addr v1, v0

    iget v2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    iget v1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    .line 51
    .local v0, "a":Lcom/subgraph/orchid/data/IPv4Address;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->bits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
