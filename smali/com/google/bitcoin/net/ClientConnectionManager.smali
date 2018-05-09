.class public interface abstract Lcom/google/bitcoin/net/ClientConnectionManager;
.super Ljava/lang/Object;
.source "ClientConnectionManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# virtual methods
.method public abstract closeConnections(I)V
.end method

.method public abstract getConnectedClientCount()I
.end method

.method public abstract openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V
.end method
