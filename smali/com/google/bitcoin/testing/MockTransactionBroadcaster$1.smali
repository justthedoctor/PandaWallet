.class Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;
.super Ljava/lang/Object;
.source "MockTransactionBroadcaster.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/SettableFuture;
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
.field final synthetic this$0:Lcom/google/bitcoin/testing/MockTransactionBroadcaster;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/testing/MockTransactionBroadcaster;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;->this$0:Lcom/google/bitcoin/testing/MockTransactionBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p1, "result"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;->this$0:Lcom/google/bitcoin/testing/MockTransactionBroadcaster;

    invoke-static {v1}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster;->access$000(Lcom/google/bitcoin/testing/MockTransactionBroadcaster;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$1;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
