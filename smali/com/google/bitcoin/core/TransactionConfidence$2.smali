.class Lcom/google/bitcoin/core/TransactionConfidence$2;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/TransactionConfidence;

.field final synthetic val$depth:I

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/TransactionConfidence;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    iput p2, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->val$depth:I

    iput-object p3, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "reason"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v0

    iget v1, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->val$depth:I

    if-lt v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/TransactionConfidence;->removeEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)Z

    .line 467
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionConfidence$2;->this$0:Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-static {v1}, Lcom/google/bitcoin/core/TransactionConfidence;->access$000(Lcom/google/bitcoin/core/TransactionConfidence;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    return-void
.end method
