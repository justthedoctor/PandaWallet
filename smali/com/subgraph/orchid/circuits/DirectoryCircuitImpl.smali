.class public Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "DirectoryCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryCircuit;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "prechosenPath":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .locals 1
    .param p1, "pathChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->prechosenPath:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->prechosenPath:Ljava/util/List;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseDirectoryPath()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "Directory"

    return-object v0
.end method

.method public openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "autoclose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v1

    .line 22
    .local v1, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamImpl;->openDirectory(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :goto_0
    return-object v1

    .line 24
    .restart local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    goto :goto_0
.end method
