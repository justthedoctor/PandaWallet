.class Lcom/google/bitcoin/core/TransactionConfidence$1;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/TransactionConfidence;->queueListeners(Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/TransactionConfidence;

.field final synthetic val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/TransactionConfidence;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-static {v1}, Lcom/google/bitcoin/core/TransactionConfidence;->access$000(Lcom/google/bitcoin/core/TransactionConfidence;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionConfidence$1;->val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence$Listener;->onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V

    .line 428
    return-void
.end method
