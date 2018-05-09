.class public Lcom/google/bitcoin/jni/NativeTransactionConfidenceListener;
.super Ljava/lang/Object;
.source "NativeTransactionConfidenceListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionConfidence$Listener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
.end method
