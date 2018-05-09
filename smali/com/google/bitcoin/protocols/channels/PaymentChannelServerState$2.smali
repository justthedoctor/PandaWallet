.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;
.super Ljava/lang/Object;
.source "PaymentChannelServerState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;
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


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 429
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to settle channel, could not broadcast: {}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$102(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 432
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iget-object v0, v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 433
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 423
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "TX {} propagated, channel successfully closed."

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->access$102(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 425
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iget-object v0, v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
