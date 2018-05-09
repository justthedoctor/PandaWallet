.class public interface abstract Lcom/subgraph/orchid/ExitCircuit;
.super Ljava/lang/Object;
.source "ExitCircuit.java"

# interfaces
.implements Lcom/subgraph/orchid/Circuit;


# virtual methods
.method public abstract canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
.end method

.method public abstract canHandleExitToPort(I)Z
.end method

.method public abstract openExitStream(Lcom/subgraph/orchid/data/IPv4Address;IJ)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation
.end method

.method public abstract openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation
.end method

.method public abstract recordFailedExitTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V
.end method
