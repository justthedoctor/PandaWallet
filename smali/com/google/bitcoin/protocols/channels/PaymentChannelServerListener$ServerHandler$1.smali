.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

.field final synthetic val$this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->val$this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 2
    .param p1, "contractHash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/net/ProtobufParser;->setSocketTimeout(I)V

    .line 80
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 81
    return-void
.end method

.method public destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 1
    .param p1, "reason"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$402(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V

    .line 76
    return-void
.end method

.method public paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "by"    # Ljava/math/BigInteger;
    .param p2, "to"    # Ljava/math/BigInteger;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 85
    return-void
.end method

.method public sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/net/ProtobufParser;->write(Lcom/google/protobuf/MessageLite;)V

    .line 70
    return-void
.end method
