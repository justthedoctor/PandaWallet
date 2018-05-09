.class public interface abstract Lcom/subgraph/orchid/CircuitNode;
.super Ljava/lang/Object;
.source "CircuitNode.java"


# virtual methods
.method public abstract considerSendingSendme()Z
.end method

.method public abstract decrementDeliverWindow()V
.end method

.method public abstract decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z
.end method

.method public abstract encryptForwardCell(Lcom/subgraph/orchid/RelayCell;)V
.end method

.method public abstract getForwardDigestBytes()[B
.end method

.method public abstract getPreviousNode()Lcom/subgraph/orchid/CircuitNode;
.end method

.method public abstract getRouter()Lcom/subgraph/orchid/Router;
.end method

.method public abstract incrementSendWindow()V
.end method

.method public abstract updateForwardDigest(Lcom/subgraph/orchid/RelayCell;)V
.end method

.method public abstract waitForSendWindow()V
.end method

.method public abstract waitForSendWindowAndDecrement()V
.end method
