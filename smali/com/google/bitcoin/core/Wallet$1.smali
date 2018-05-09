.class Lcom/google/bitcoin/core/Wallet$1;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->createTransientState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "reason"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .prologue
    .line 229
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    if-ne p2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Wallet;->access$000(Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;)V

    .line 233
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-static {v0, p1}, Lcom/google/bitcoin/core/Wallet;->access$100(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V

    .line 234
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-static {v0}, Lcom/google/bitcoin/core/Wallet;->access$200(Lcom/google/bitcoin/core/Wallet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    :cond_0
    return-void

    .line 236
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$1;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, v1, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
