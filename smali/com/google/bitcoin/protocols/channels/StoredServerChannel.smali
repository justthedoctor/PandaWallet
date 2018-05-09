.class public Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
.super Ljava/lang/Object;
.source "StoredServerChannel.java"


# instance fields
.field bestValueSignature:[B

.field bestValueToMe:Ljava/math/BigInteger;

.field clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

.field private connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

.field contract:Lcom/google/bitcoin/core/Transaction;

.field myKey:Lcom/google/bitcoin/core/ECKey;

.field refundTransactionUnlockTimeSecs:J

.field state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionOutput;JLcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1, "state"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contract"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "clientOutput"    # Lcom/google/bitcoin/core/TransactionOutput;
    .param p4, "refundTransactionUnlockTimeSecs"    # J
    .param p6, "myKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p7, "bestValueToMe"    # Ljava/math/BigInteger;
    .param p8, "bestValueSignature"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    .line 43
    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 47
    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    .line 48
    iput-object p3, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 49
    iput-wide p4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    .line 50
    iput-object p6, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 51
    iput-object p7, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    .line 52
    iput-object p8, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    .line 53
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 54
    return-void
.end method


# virtual methods
.method declared-synchronized clearConnectedHandler()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closeConnectedHandler()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrCreateState(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;-><init>(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iget-object v0, v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setConnectedHandler(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Z)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    .locals 1
    .param p1, "connectedHandler"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    .param p2, "override"    # Z

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local p1    # "connectedHandler":Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :goto_0
    monitor-exit p0

    return-object p1

    .line 72
    .restart local p1    # "connectedHandler":Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    const-string v1, "%n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "newline":Ljava/lang/String;
    const-string v2, "Stored server channel (%s)%n    Key:           %s%n    Value to me:   %d%n    Client output: %s%n    Refund unlock: %s (%d unix time)%n    Contract:    %s%n"

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->connectedHandler:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    if-eqz v1, :cond_0

    const-string v1, "connected"

    :goto_0
    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "disconnected"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "newline":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateValueToMe(Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1, "newValue"    # Ljava/math/BigInteger;
    .param p2, "newSignature"    # [B

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    .line 62
    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueSignature:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
