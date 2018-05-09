.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->provideMultiSigContract(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$multisigContract:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->val$multisigContract:Lcom/google/bitcoin/core/Transaction;

    iput-object p3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$102(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 259
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 260
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 5
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 242
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Successfully broadcast multisig contract {}. Channel now open."

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iget-object v1, v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->val$multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$102(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 251
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
