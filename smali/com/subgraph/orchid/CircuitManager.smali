.class public interface abstract Lcom/subgraph/orchid/CircuitManager;
.super Ljava/lang/Object;
.source "CircuitManager.java"


# static fields
.field public static final DIRECTORY_PURPOSE_CERTIFICATES:I = 0x2

.field public static final DIRECTORY_PURPOSE_CONSENSUS:I = 0x1

.field public static final DIRECTORY_PURPOSE_DESCRIPTORS:I = 0x3


# virtual methods
.method public abstract getCleanInternalCircuit()Lcom/subgraph/orchid/Circuit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openDirectoryCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/DirectoryCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openDirectoryStream()Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openDirectoryStream(I)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openExitCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/ExitCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openExitStreamTo(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract openInternalCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/InternalCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation
.end method

.method public abstract startBuildingCircuits()V
.end method

.method public abstract stopBuildingCircuits(Z)V
.end method
