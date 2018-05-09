.class public abstract Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
.super Ljava/lang/Object;
.source "ServerConnectionEventHandler.java"


# instance fields
.field private connectionChannel:Lcom/google/bitcoin/net/ProtobufParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract channelClosed(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public abstract channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V
.end method

.method protected final declared-synchronized closeChannel()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lcom/google/bitcoin/net/ProtobufParser;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel is not fully initialized/has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lcom/google/bitcoin/net/ProtobufParser;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/net/ProtobufParser;->write(Lcom/google/protobuf/MessageLite;)V

    .line 54
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lcom/google/bitcoin/net/ProtobufParser;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void
.end method

.method public abstract paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method declared-synchronized setConnectionChannel(Lcom/google/bitcoin/net/ProtobufParser;)V
    .locals 1
    .param p1, "connectionChannel"    # Lcom/google/bitcoin/net/ProtobufParser;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lcom/google/bitcoin/net/ProtobufParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
