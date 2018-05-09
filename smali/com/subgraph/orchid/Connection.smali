.class public interface abstract Lcom/subgraph/orchid/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract bindCircuit(Lcom/subgraph/orchid/Circuit;)I
.end method

.method public abstract getRouter()Lcom/subgraph/orchid/Router;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract removeCircuit(Lcom/subgraph/orchid/Circuit;)V
.end method

.method public abstract sendCell(Lcom/subgraph/orchid/Cell;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation
.end method
