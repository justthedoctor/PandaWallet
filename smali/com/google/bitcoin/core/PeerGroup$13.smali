.class Lcom/google/bitcoin/core/PeerGroup$13;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;

.field final synthetic val$broadcast:Lcom/google/bitcoin/core/TransactionBroadcast;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/TransactionBroadcast;)V
    .locals 0

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$13;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    iput-object p2, p0, Lcom/google/bitcoin/core/PeerGroup$13;->val$broadcast:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$13;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v0}, Lcom/google/bitcoin/core/PeerGroup;->access$1300(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$13;->val$broadcast:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1420
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 5
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 1398
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup$13;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v3}, Lcom/google/bitcoin/core/PeerGroup;->access$1300(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup$13;->val$broadcast:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1403
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup$13;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v3}, Lcom/google/bitcoin/core/PeerGroup;->access$1400(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Wallet;

    .line 1409
    .local v2, "wallet":Lcom/google/bitcoin/core/Wallet;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1414
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    .end local v2    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1395
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/PeerGroup$13;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
