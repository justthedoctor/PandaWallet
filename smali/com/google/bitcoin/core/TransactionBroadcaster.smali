.class public interface abstract Lcom/google/bitcoin/core/TransactionBroadcaster;
.super Ljava/lang/Object;
.source "TransactionBroadcaster.java"


# virtual methods
.method public abstract broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end method
