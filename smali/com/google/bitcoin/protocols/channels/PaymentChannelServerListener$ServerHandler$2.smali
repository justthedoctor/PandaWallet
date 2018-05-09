.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lcom/google/bitcoin/net/ProtobufParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
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
.field final synthetic this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    iput-object p3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized connectionClosed(Lcom/google/bitcoin/net/ProtobufParser;)V
    .locals 2
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionClosed()V

    .line 97
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->channelClosed(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->setConnectionChannel(Lcom/google/bitcoin/net/ProtobufParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->channelClosed(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionOpen(Lcom/google/bitcoin/net/ProtobufParser;)V
    .locals 3
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iget-object v1, v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->access$700(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$address:Ljava/net/SocketAddress;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;->onNewConnection(Ljava/net/SocketAddress;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    .line 107
    .local v0, "eventHandler":Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v1, v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$502(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    .line 111
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "eventHandler":Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/net/ProtobufParser;
    .param p2, "x1"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 88
    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .end local p2    # "x1":Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method public declared-synchronized messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 1
    .param p1, "handler"    # Lcom/google/bitcoin/net/ProtobufParser;
    .param p2, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
