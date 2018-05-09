.class public interface abstract Lcom/subgraph/orchid/Circuit;
.super Ljava/lang/Object;
.source "Circuit.java"


# virtual methods
.method public abstract appendNode(Lcom/subgraph/orchid/CircuitNode;)V
.end method

.method public abstract createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;
.end method

.method public abstract deliverControlCell(Lcom/subgraph/orchid/Cell;)V
.end method

.method public abstract deliverRelayCell(Lcom/subgraph/orchid/Cell;)V
.end method

.method public abstract destroyCircuit()V
.end method

.method public abstract getActiveStreams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Stream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCircuitId()I
.end method

.method public abstract getConnection()Lcom/subgraph/orchid/Connection;
.end method

.method public abstract getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;
.end method

.method public abstract getSecondsDirty()I
.end method

.method public abstract isClean()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isMarkedForClose()Z
.end method

.method public abstract isPending()Z
.end method

.method public abstract markForClose()V
.end method

.method public abstract receiveRelayCell()Lcom/subgraph/orchid/RelayCell;
.end method

.method public abstract sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V
.end method
