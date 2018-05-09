.class Lcom/google/bitcoin/core/Wallet$11;
.super Ljava/lang/Thread;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->rekeyOneBatch(JLcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/core/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field final synthetic val$rekeyTx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$11;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$11;->val$broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object p3, p0, Lcom/google/bitcoin/core/Wallet$11;->val$rekeyTx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3806
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$11;->val$broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet$11;->val$rekeyTx:Lcom/google/bitcoin/core/Transaction;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/bitcoin/core/Wallet$11$1;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/core/Wallet$11$1;-><init>(Lcom/google/bitcoin/core/Wallet$11;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3820
    :goto_0
    return-void

    .line 3817
    :catch_0
    move-exception v0

    .line 3818
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/bitcoin/core/Wallet;->access$900()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Failed to broadcast rekey tx, will try again later"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
