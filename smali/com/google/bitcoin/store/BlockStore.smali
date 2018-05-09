.class public interface abstract Lcom/google/bitcoin/store/BlockStore;
.super Ljava/lang/Object;
.source "BlockStore.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation
.end method
