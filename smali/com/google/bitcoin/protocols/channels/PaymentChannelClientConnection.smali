.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"


# instance fields
.field private final channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

.field private final channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final wireParser:Lcom/google/bitcoin/net/ProtobufParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/net/ProtobufParser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;ILcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 6
    .param p1, "server"    # Ljava/net/InetSocketAddress;
    .param p2, "timeoutSeconds"    # I
    .param p3, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p4, "myKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p5, "maxValue"    # Ljava/math/BigInteger;
    .param p6, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 66
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    new-instance v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;

    invoke-direct {v5, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)V

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    .line 88
    new-instance v0, Lcom/google/bitcoin/net/ProtobufParser;

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection$2;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)V

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    const/16 v3, 0x7fff

    mul-int/lit16 v4, p2, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/net/ProtobufParser;-><init>(Lcom/google/bitcoin/net/ProtobufParser$Listener;Lcom/google/protobuf/MessageLite;II)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->wireParser:Lcom/google/bitcoin/net/ProtobufParser;

    .line 114
    new-instance v0, Lcom/google/bitcoin/net/NioClient;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->wireParser:Lcom/google/bitcoin/net/ProtobufParser;

    mul-int/lit16 v2, p2, 0x3e8

    invoke-direct {v0, p1, v1, v2}, Lcom/google/bitcoin/net/NioClient;-><init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/net/ProtobufParser;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->wireParser:Lcom/google/bitcoin/net/ProtobufParser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    return-object v0
.end method


# virtual methods
.method public disconnectWithoutSettlement()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->wireParser:Lcom/google/bitcoin/net/ProtobufParser;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V

    .line 178
    return-void
.end method

.method public getChannelOpenFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public incrementPayment(Ljava/math/BigInteger;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "size"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->incrementPayment(Ljava/math/BigInteger;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public settle()V
    .locals 1

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->settle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientConnection;->channelClient:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    return-object v0
.end method
