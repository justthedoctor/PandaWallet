.class Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public channelOpen(Z)V
    .locals 2
    .param p1, "wasInitiated"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/net/ProtobufParser;->setSocketTimeout(I)V

    .line 83
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 4
    .param p1, "reason"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payment channel client requested that the connection be closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;-><init>(Ljava/lang/String;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 76
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V

    .line 77
    return-void
.end method

.method public sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/net/ProtobufParser;->write(Lcom/google/protobuf/MessageLite;)V

    .line 71
    return-void
.end method
