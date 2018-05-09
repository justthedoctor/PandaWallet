.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerHandler"
.end annotation


# instance fields
.field private closeReason:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field private eventHandler:Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

.field private final paymentChannelManager:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

.field private final protobufHandlerListener:Lcom/google/bitcoin/net/ProtobufParser$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/net/ProtobufParser$Listener",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final socketProtobufHandler:Lcom/google/bitcoin/net/ProtobufParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/net/ProtobufParser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
    .locals 5
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "timeoutSeconds"    # I

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/core/TransactionBroadcaster;

    move-result-object v1

    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;-><init>(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->paymentChannelManager:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    .line 88
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler$2;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->protobufHandlerListener:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    .line 116
    new-instance v0, Lcom/google/bitcoin/net/ProtobufParser;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->protobufHandlerListener:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    const/16 v3, 0x7fff

    mul-int/lit16 v4, p3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/net/ProtobufParser;-><init>(Lcom/google/bitcoin/net/ProtobufParser$Listener;Lcom/google/protobuf/MessageLite;II)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->socketProtobufHandler:Lcom/google/bitcoin/net/ProtobufParser;

    .line 118
    return-void
.end method

.method static synthetic access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/net/ProtobufParser;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->socketProtobufHandler:Lcom/google/bitcoin/net/ProtobufParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->closeReason:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;
    .param p1, "x1"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->closeReason:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->eventHandler:Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;
    .param p1, "x1"    # Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->eventHandler:Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->paymentChannelManager:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    return-object v0
.end method
