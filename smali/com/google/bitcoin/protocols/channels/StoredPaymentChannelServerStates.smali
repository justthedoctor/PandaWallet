.class public Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
.super Ljava/lang/Object;
.source "StoredPaymentChannelServerStates.java"

# interfaces
.implements Lcom/google/bitcoin/core/WalletExtension;


# static fields
.field public static final CHANNEL_EXPIRE_OFFSET:J = -0x1c20L

.field static final EXTENSION_ID:Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field private final channelTimeoutHandler:Ljava/util/Timer;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mapChannels:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/protocols/channels/StoredServerChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    .line 39
    const-class v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->channelTimeoutHandler:Ljava/util/Timer;

    .line 47
    const-string v0, "StoredPaymentChannelServerStates"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 64
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public closeChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V
    .locals 3
    .param p1, "channel"    # Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    monitor-enter p1

    .line 84
    :try_start_1
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->closeConnectedHandler()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    invoke-virtual {p1, v1, v2}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->getOrCreateState(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_2
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 93
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1, p0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :try_start_4
    invoke-virtual {v0}, Lcom/google/bitcoin/core/InsufficientMoneyException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0    # "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :catchall_1
    move-exception v1

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_5
    invoke-virtual {v0}, Lcom/google/bitcoin/core/VerificationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public deserializeWalletExtension(Lcom/google/bitcoin/core/Wallet;[B)V
    .locals 13
    .param p1, "containingWallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lcom/google/bitcoin/core/Wallet;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 177
    invoke-static {p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->parseFrom([B)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v11

    .line 178
    .local v11, "states":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v10

    .line 179
    .local v10, "params":Lcom/google/bitcoin/core/NetworkParameters;
    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->getChannelsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .line 180
    .local v12, "storedState":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    new-instance v0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    new-instance v3, Lcom/google/bitcoin/core/TransactionOutput;

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v10, v4, v5, v6}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BI)V

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getRefundTransactionUnlockTimeSecs()J

    move-result-wide v4

    new-instance v6, Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueToMe()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueSignature()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v12}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    :goto_2
    invoke-direct/range {v0 .. v8}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionOutput;JLcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;[B)V

    .line 187
    .local v0, "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 190
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v11    # "states":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    .end local v12    # "storedState":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v11    # "states":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    .restart local v12    # "storedState":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 190
    .end local v12    # "storedState":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    :cond_2
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    return-void
.end method

.method public getChannel(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    .locals 2
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getWalletExtensionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public isWalletExtensionMandatory()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public putChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V
    .locals 7
    .param p1, "channel"    # Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 121
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v3, -0x1c20

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 123
    .local v0, "autocloseTime":Ljava/util/Date;
    sget-object v1, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    const-string v2, "Scheduling channel for automatic closure at {}: {}"

    invoke-interface {v1, v2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->channelTimeoutHandler:Ljava/util/Timer;

    new-instance v2, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;

    invoke-direct {v2, p0, p1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;-><init>(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    return-void

    .line 119
    .end local v0    # "autocloseTime":Ljava/util/Date;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public serializeWalletExtension()[B
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->newBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    .line 151
    .local v0, "builder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 153
    .local v1, "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    sget-object v7, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 154
    iget-wide v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 155
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueToMe(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v4

    iget-wide v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    invoke-virtual {v4, v7, v8}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setRefundTransactionUnlockTimeSecs(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionOutput;->bitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientOutput(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v2

    .line 162
    .local v2, "channelBuilder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueSignature(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 164
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->addChannels(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 168
    .end local v0    # "builder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    .end local v2    # "channelBuilder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .restart local v0    # "builder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .restart local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move v4, v6

    .line 153
    goto :goto_1

    :cond_2
    move v4, v6

    .line 154
    goto :goto_2

    .line 166
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 168
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 200
    .local v2, "stored":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "stored":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 202
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3
.end method
