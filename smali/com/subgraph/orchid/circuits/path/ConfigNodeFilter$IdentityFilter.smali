.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;
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
    name = "IdentityFilter"
.end annotation


# instance fields
.field private final identity:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;->identity:Lcom/subgraph/orchid/data/HexDigest;

    .line 60
    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 62
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
