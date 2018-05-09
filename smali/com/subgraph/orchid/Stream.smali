.class public interface abstract Lcom/subgraph/orchid/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCircuit()Lcom/subgraph/orchid/Circuit;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getStreamId()I
.end method

.method public abstract getTargetNode()Lcom/subgraph/orchid/CircuitNode;
.end method

.method public abstract waitForSendWindow()V
.end method
