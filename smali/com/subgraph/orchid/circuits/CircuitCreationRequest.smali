.class public Lcom/subgraph/orchid/circuits/CircuitCreationRequest;
.super Ljava/lang/Object;
.source "CircuitCreationRequest.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitBuildHandler;


# instance fields
.field private final buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private final isDirectoryCircuit:Z

.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end field

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V
    .locals 1
    .param p1, "pathChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .param p2, "circuit"    # Lcom/subgraph/orchid/Circuit;
    .param p3, "buildHandler"    # Lcom/subgraph/orchid/CircuitBuildHandler;
    .param p4, "isDirectoryCircuit"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    .line 24
    check-cast p2, Lcom/subgraph/orchid/circuits/CircuitImpl;

    .end local p2    # "circuit":Lcom/subgraph/orchid/Circuit;
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 25
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->path:Ljava/util/List;

    .line 27
    iput-boolean p4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit:Z

    .line 28
    return-void
.end method


# virtual methods
.method choosePath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    instance-of v0, v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->choosePath(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->path:Ljava/util/List;

    .line 36
    return-void
.end method

.method public circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V
    .locals 1
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitBuildHandler;->circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V

    .line 84
    :cond_0
    return-void
.end method

.method public circuitBuildFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitBuildHandler;->circuitBuildFailed(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public connectionCompleted(Lcom/subgraph/orchid/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/subgraph/orchid/Connection;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitBuildHandler;->connectionCompleted(Lcom/subgraph/orchid/Connection;)V

    .line 66
    :cond_0
    return-void
.end method

.method public connectionFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitBuildHandler;->connectionFailed(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method getBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    return-object v0
.end method

.method getCircuit()Lcom/subgraph/orchid/circuits/CircuitImpl;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    return-object v0
.end method

.method getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->path:Ljava/util/List;

    return-object v0
.end method

.method getPathElement(I)Lcom/subgraph/orchid/Router;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method getPathLength()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method isDirectoryCircuit()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit:Z

    return v0
.end method

.method public nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 1
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitBuildHandler;->nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V

    .line 78
    :cond_0
    return-void
.end method
