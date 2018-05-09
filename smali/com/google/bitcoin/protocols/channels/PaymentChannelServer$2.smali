.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->settlePayment(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
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
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

.field final synthetic val$clientRequestedClose:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->val$clientRequestedClose:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 441
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to broadcast settlement tx"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->val$clientRequestedClose:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 443
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p1, "result"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 425
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 426
    .local v0, "msg":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 427
    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 431
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Sending CLOSE back with broadcast settlement tx."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 436
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->val$clientRequestedClose:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 437
    return-void

    .line 433
    :cond_0
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Sending CLOSE back without broadcast settlement tx."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
