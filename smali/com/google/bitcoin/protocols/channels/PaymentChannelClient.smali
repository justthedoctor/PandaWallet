.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;
.super Ljava/lang/Object;
.source "PaymentChannelClient.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$2;,
        Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field public MAX_TIME_WINDOW:J

.field private final conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field connectionOpen:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field lastPaymentActualAmount:Ljava/math/BigInteger;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final maxValue:Ljava/math/BigInteger;

.field private minPayment:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private missing:Ljava/math/BigInteger;

.field private final myKey:Lcom/google/bitcoin/core/ECKey;

.field private final serverId:Lcom/google/bitcoin/core/Sha256Hash;

.field private state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "myKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p3, "maxValue"    # Ljava/math/BigInteger;
    .param p4, "serverId"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p5, "conn"    # Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "channelclient"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 76
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 107
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->MAX_TIME_WINDOW:J

    .line 126
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 127
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 128
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->maxValue:Ljava/math/BigInteger;

    .line 129
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->serverId:Lcom/google/bitcoin/core/Sha256Hash;

    .line 130
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    .line 131
    return-void
.end method

.method private receiveChannelOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 235
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 236
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Got CHANNEL_OPEN message, ready to pay"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    .line 239
    .local v0, "wasInitiated":Z
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v1, v2, :cond_1

    .line 241
    const/4 v0, 0x0

    .line 242
    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;-><init>(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Lcom/google/bitcoin/core/Wallet;)V

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .line 244
    :cond_1
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 247
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-interface {v1, v0}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->channelOpen(Z)V

    .line 248
    return-void

    .line 235
    .end local v0    # "wasInitiated":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private receiveClose(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 4
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 335
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 337
    .local v0, "settleTx":Lcom/google/bitcoin/core/Transaction;
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "CLOSE message received with settlement tx {}"

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->isSettlementTransaction(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    .line 348
    .end local v0    # "settleTx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v1, v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 352
    :goto_1
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 353
    return-void

    .line 346
    :cond_1
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "CLOSE message received without settlement tx"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_1
.end method

.method private receiveInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;Ljava/math/BigInteger;Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 15
    .param p1, "initiate"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p2, "contractValue"    # Ljava/math/BigInteger;
    .param p3, "errorBuilder"    # Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 146
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Got INITIATE message:\n{}"

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 150
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->MAX_TIME_WINDOW:J

    add-long v8, v1, v3

    .line 151
    .local v8, "MAX_EXPIRY_TIME":J
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-lez v1, :cond_1

    .line 152
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Server expiry time was out of our allowed bounds: {} vs {}"

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 156
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_TOO_LARGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 199
    :goto_1
    return-object v1

    .line 148
    .end local v8    # "MAX_EXPIRY_TIME":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    .restart local v8    # "MAX_EXPIRY_TIME":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 160
    .local v13, "minChannelSize":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    .line 161
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Server requested too much value"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 163
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->missing:Ljava/math/BigInteger;

    .line 164
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    goto :goto_1

    .line 169
    :cond_2
    sget-object v1, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 170
    .local v10, "MIN_PAYMENT":J
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-eqz v1, :cond_3

    .line 171
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Server requested a min payment of {} but we expected {}"

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 174
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v1

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->missing:Ljava/math/BigInteger;

    .line 175
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    goto :goto_1

    .line 178
    :cond_3
    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->myKey:Lcom/google/bitcoin/core/ECKey;

    new-instance v4, Lcom/google/bitcoin/core/ECKey;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v6

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;J)V

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->initiate()V
    :try_end_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->minPayment:J

    .line 189
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 191
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getIncompleteRefundTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v14

    .line 195
    .local v14, "provideRefundBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 199
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 183
    .end local v14    # "provideRefundBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    :catch_0
    move-exception v12

    .line 184
    .local v12, "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Value out of range when trying to initiate"

    invoke-interface {v1, v2, v12}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 186
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    goto/16 :goto_1
.end method

.method private receivePaymentAck()V
    .locals 4

    .prologue
    .line 509
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 522
    :goto_0
    return-void

    .line 512
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const-string v3, "Server sent a PAYMENT_ACK with no outstanding payment"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v3, "Received a PAYMENT_ACK from the server"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 515
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/math/BigInteger;>;"
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lastPaymentActualAmount:Ljava/math/BigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .local v1, "value":Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 521
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    .end local v0    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/math/BigInteger;>;"
    .end local v1    # "value":Ljava/math/BigInteger;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private receiveRefund(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 9
    .param p1, "refundMsg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 204
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 205
    sget-object v6, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v7, "Got RETURN_REFUND message, providing signed contract"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v5

    .line 207
    .local v5, "returnedRefund":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v5}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->provideRefundSignature([B)V

    .line 208
    sget-object v6, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 212
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->serverId:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storeChannelInWallet(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 214
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getMultisigContract()Lcom/google/bitcoin/core/Transaction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    .line 219
    .local v0, "contractMsg":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->minPayment:J

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->incrementPaymentBy(Ljava/math/BigInteger;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    move-result-object v4

    .line 220
    .local v4, "payment":Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v2

    .line 221
    .local v2, "initialMsg":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    iget-object v6, v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-virtual {v6}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 222
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getValueRefunded()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :try_end_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    .line 228
    .local v3, "msg":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    invoke-virtual {v3, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 229
    sget-object v6, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v3, v6}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 230
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 231
    return-void

    .line 204
    .end local v0    # "contractMsg":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .end local v2    # "initialMsg":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .end local v3    # "msg":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .end local v4    # "payment":Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    .end local v5    # "returnedRefund":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 223
    .restart local v0    # "contractMsg":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .restart local v5    # "returnedRefund":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 370
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 371
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->disconnectFromChannel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public connectionOpen()V
    .locals 5

    .prologue
    .line 412
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 416
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    .line 417
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    if-eqz v0, :cond_0

    .line 418
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->serverId:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->getUsableChannelForServerID(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 420
    :cond_0
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 422
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v1

    .line 425
    .local v1, "versionNegotiationBuilder":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v2, v2, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 427
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v3, "Begun version handshake, attempting to reopen channel with contract hash {}"

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v4, v4, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 438
    return-void

    .line 429
    :cond_1
    :try_start_1
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v3, "Begun version handshake creating new channel"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    .end local v1    # "versionNegotiationBuilder":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getMissing()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->missing:Ljava/math/BigInteger;

    return-object v0
.end method

.method public incrementPayment(Ljava/math/BigInteger;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
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
    .line 472
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-eq v2, v3, :cond_1

    .line 475
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Channel is not fully initialized/has already been closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 476
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v2, :cond_2

    .line 477
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already incrementing paying, wait for previous payment to complete."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->incrementPaymentBy(Ljava/math/BigInteger;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    move-result-object v0

    .line 480
    .local v0, "payment":Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-virtual {v3}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getValueRefunded()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v1

    .line 484
    .local v1, "updatePaymentBuilder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 485
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$1;

    invoke-direct {v3, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 494
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 498
    iget-object v2, v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;->amount:Ljava/math/BigInteger;

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lastPaymentActualAmount:Ljava/math/BigInteger;

    .line 499
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 255
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    :try_start_0
    iget-boolean v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    sget-object v6, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 304
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v5, "Got unknown message type or type that doesn\'t apply to clients."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v2

    .line 307
    .local v2, "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .local v0, "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v5

    sget-object v6, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v5, v6}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 326
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-interface {v4, v0}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 330
    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    :goto_1
    return-void

    .line 264
    :pswitch_0
    :try_start_3
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 267
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMajor()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 268
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v2

    .line 270
    .restart local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 271
    .restart local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    goto :goto_0

    .line 273
    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    :cond_1
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v5, "Got version handshake, awaiting INITIATE or resume CHANNEL_OPEN"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 274
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 277
    :pswitch_1
    :try_start_4
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v6, v7, :cond_2

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 278
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v3

    .line 279
    .local v3, "initiate":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v2

    .line 280
    .restart local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->maxValue:Ljava/math/BigInteger;

    invoke-direct {p0, v3, v4, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receiveInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;Ljava/math/BigInteger;Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 281
    .restart local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    if-nez v0, :cond_3

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .end local v3    # "initiate":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :cond_2
    move v4, v5

    .line 277
    goto :goto_2

    .line 283
    .restart local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .restart local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .restart local v3    # "initiate":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :cond_3
    :try_start_5
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v5, "Initiate failed with error: {}"

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoin/paymentchannel/Protos$Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 310
    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .end local v3    # "initiate":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_6
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v5, "Caught verification exception handling message from server"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/bitcoin/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v2

    .line 315
    .restart local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 321
    .restart local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    goto/16 :goto_0

    .line 286
    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v1    # "e":Lcom/google/bitcoin/core/VerificationException;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    :pswitch_2
    :try_start_7
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receiveRefund(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_7
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 289
    :pswitch_3
    :try_start_8
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receiveChannelOpen()V
    :try_end_8
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 292
    :pswitch_4
    :try_start_9
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receivePaymentAck()V
    :try_end_9
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 295
    :pswitch_5
    :try_start_a
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->receiveClose(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_a
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 298
    :pswitch_6
    :try_start_b
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 299
    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v6, "Server sent ERROR {} with explanation {}"

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-interface {v5, v6, v7, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v4, v5}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_b
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 328
    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 299
    :cond_4
    :try_start_c
    const-string v4, ""
    :try_end_c
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 316
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_d
    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v5, "Caught illegal state exception handling message from server"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v2

    .line 320
    .restart local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .restart local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    goto/16 :goto_0

    .line 328
    .end local v0    # "closeReason":Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public settle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 394
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 395
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Sending a CLOSE message to the server and waiting for response indicating successful settlement."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->conn:Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public state()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
