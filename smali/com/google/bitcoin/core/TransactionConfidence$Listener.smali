.class public interface abstract Lcom/google/bitcoin/core/TransactionConfidence$Listener;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;
    }
.end annotation


# virtual methods
.method public abstract onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
.end method
