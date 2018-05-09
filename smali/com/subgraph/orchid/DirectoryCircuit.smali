.class public interface abstract Lcom/subgraph/orchid/DirectoryCircuit;
.super Ljava/lang/Object;
.source "DirectoryCircuit.java"

# interfaces
.implements Lcom/subgraph/orchid/Circuit;


# virtual methods
.method public abstract openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation
.end method
