.class public interface abstract Lcom/subgraph/orchid/ConnectionCache;
.super Ljava/lang/Object;
.source "ConnectionCache.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation
.end method
