.class Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"

# interfaces
.implements Lcom/google/bitcoin/net/ProtobufParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/bitcoin/net/ProtobufParser$Listener",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed(Lcom/google/bitcoin/net/ProtobufParser;)V
    .locals 4
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionClosed()V

    .line 107
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;

    const-string v2, "The TCP socket died"

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;-><init>(Ljava/lang/String;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 109
    return-void
.end method

.method public connectionOpen(Lcom/google/bitcoin/net/ProtobufParser;)V
    .locals 1
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen()V

    .line 102
    return-void
.end method

.method public bridge synthetic messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/net/ProtobufParser;
    .param p2, "x1"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 88
    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .end local p2    # "x1":Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method public messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 2
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;
    .param p2, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
