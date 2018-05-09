.class public Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
.super Ljava/lang/Object;
.source "StoredPaymentChannelClientStates.java"

# interfaces
.implements Lcom/google/bitcoin/core/WalletExtension;


# static fields
.field static final EXTENSION_ID:Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final announcePeerGroup:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field final channelTimeoutHandler:Ljava/util/Timer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private containingWallet:Lcom/google/bitcoin/core/Wallet;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mapChannels:Lcom/google/common/collect/HashMultimap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/protocols/channels/StoredClientChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    .line 45
    const-class v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)V
    .locals 2
    .param p1, "containingWallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "announcePeerGroup"    # Lcom/google/bitcoin/core/TransactionBroadcaster;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    .line 48
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->channelTimeoutHandler:Ljava/util/Timer;

    .line 53
    const-string v0, "StoredPaymentChannelClientStates"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroup:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;)Lcom/google/bitcoin/core/TransactionBroadcaster;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroup:Lcom/google/bitcoin/core/TransactionBroadcaster;

    return-object v0
.end method

.method public static getFromWallet(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    .locals 2
    .param p0, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    return-object v0
.end method

.method private putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Z)V
    .locals 9
    .param p1, "channel"    # Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .param p2, "updateWallet"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->channelTimeoutHandler:Ljava/util/Timer;

    new-instance v1, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;

    invoke-direct {v1, p0, p1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;-><init>(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    if-eqz p2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V

    .line 186
    :cond_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public deserializeWalletExtension(Lcom/google/bitcoin/core/Wallet;[B)V
    .locals 12
    .param p1, "containingWallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 248
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    if-ne v4, p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 249
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    .line 250
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v9

    .line 251
    .local v9, "params":Lcom/google/bitcoin/core/NetworkParameters;
    invoke-static {p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->parseFrom([B)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v10

    .line 252
    .local v10, "states":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    invoke-virtual {v10}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannelsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    .line 253
    .local v11, "storedState":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    new-instance v3, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v9, v1}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 254
    .local v3, "refundTransaction":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 255
    new-instance v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    new-instance v1, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v9, v4}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    new-instance v4, Lcom/google/bitcoin/core/ECKey;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getValueToMe()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundFees()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 261
    .local v0, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasCloseTransactionHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    new-instance v1, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v11}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    iput-object v1, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    .line 263
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 266
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v3    # "refundTransaction":Lcom/google/bitcoin/core/Transaction;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v10    # "states":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .end local v11    # "storedState":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v10    # "states":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    :cond_3
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    return-void
.end method

.method public getBalanceForServer(Lcom/google/bitcoin/core/Sha256Hash;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 73
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 74
    .local v0, "balance":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v4, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 77
    .local v3, "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 78
    .local v1, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    if-eqz v4, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 80
    .restart local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :cond_0
    :try_start_3
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 81
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method getChannel(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .locals 5
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "contractHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 149
    .local v2, "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 150
    .local v0, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    iget-object v3, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 155
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public getSecondsUntilExpiry(Lcom/google/bitcoin/core/Sha256Hash;)J
    .locals 9
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 94
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v6, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 97
    .local v5, "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    .line 98
    .local v3, "nowSeconds":J
    const v1, 0x7fffffff

    .line 99
    .local v1, "earliestTime":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 100
    .local v0, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v1    # "earliestTime":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nowSeconds":J
    .end local v5    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 105
    .restart local v1    # "earliestTime":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nowSeconds":J
    .restart local v5    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :cond_1
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_2

    const-wide/16 v6, 0x0

    .line 107
    :goto_1
    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v6

    .line 105
    :cond_2
    int-to-long v6, v1

    sub-long/2addr v6, v3

    goto :goto_1
.end method

.method getUsableChannelForServerID(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .locals 7
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 119
    .local v2, "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 120
    .local v0, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v4, "Considering channel {} contract {}"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iget-object v3, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v4, "  ... but is closed or empty"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 125
    monitor-exit v0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 127
    .restart local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "setChannels":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/protocols/channels/StoredClientChannel;>;"
    :cond_1
    :try_start_3
    iget-boolean v3, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    if-nez v3, :cond_2

    .line 128
    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v4, "  ... activating"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    .line 130
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :goto_1
    return-object v0

    .line 132
    .restart local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :cond_2
    :try_start_4
    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v4, "  ... but is already active"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 133
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWalletExtensionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public isWalletExtensionMandatory()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V
    .locals 1
    .param p1, "channel"    # Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Z)V

    .line 165
    return-void
.end method

.method removeChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V
    .locals 2
    .param p1, "channel"    # Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V

    .line 204
    return-void

    .line 201
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public serializeWalletExtension()[B
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 218
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 220
    :try_start_0
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    .line 221
    .local v0, "builder":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v4}, Lcom/google/common/collect/HashMultimap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 223
    .local v1, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    sget-object v7, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 224
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    sget-object v7, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 225
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v4

    sget-object v7, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    if-ne v4, v7, :cond_3

    move v4, v5

    :goto_3
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setId(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setValueToMe(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundFees(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v3

    .line 234
    .local v3, "value":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 236
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->addChannels(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 240
    .end local v0    # "builder":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .restart local v0    # "builder":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .restart local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    move v4, v6

    .line 223
    goto/16 :goto_1

    :cond_2
    move v4, v6

    .line 224
    goto/16 :goto_2

    :cond_3
    move v4, v6

    .line 226
    goto :goto_3

    .line 238
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->build()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 240
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Client payment channel states:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v3}, Lcom/google/common/collect/HashMultimap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 276
    .local v1, "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "channel":Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 277
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 279
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3
.end method
