.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$3;,
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;,
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field private channelSettling:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

.field private connectionOpen:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private expireTime:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final minAcceptedChannelSize:Ljava/math/BigInteger;

.field private myKey:Lcom/google/bitcoin/core/ECKey;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public timeWindow:J

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;)V
    .locals 2
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "minAcceptedChannelSize"    # Ljava/math/BigInteger;
    .param p4, "conn"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "channelserver"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 110
    iput-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    .line 112
    iput-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->channelSettling:Z

    .line 137
    const-wide/32 v0, 0x15144

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->timeWindow:J

    .line 155
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 156
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 157
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Ljava/math/BigInteger;

    .line 158
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .param p2, "x2"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->multisigContractPropogated(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Sha256Hash;)V

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    return-object v0
.end method

.method private error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .param p3, "closeReason"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .prologue
    .line 393
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 398
    .local v0, "errorBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 402
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {v1, p3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 403
    return-void
.end method

.method private multisigContractPropogated(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 4
    .param p1, "providedContract"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .param p2, "contractHash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->channelSettling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 289
    :goto_0
    return-void

    .line 263
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v1, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storeChannelInWallet(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 284
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 285
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {v1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_4
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Initial payment failed to verify"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-virtual {v0}, Lcom/google/bitcoin/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 270
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    :try_start_5
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Initial payment value was out of range"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 274
    .end local v0    # "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    :catch_2
    move-exception v0

    .line 277
    .local v0, "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :try_start_6
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Tried to settle channel and could not afford the fees whilst updating payment"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    invoke-virtual {v0}, Lcom/google/bitcoin/core/InsufficientMoneyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 287
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private receiveCloseMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 407
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got CLOSE message, closing channel"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->settlePayment(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_0
.end method

.method private receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 5
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
    .line 293
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 294
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Got contract, broadcasting and responding with CHANNEL_OPEN"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    .line 298
    .local v1, "providedContract":Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 299
    .local v0, "multisigContract":Lcom/google/bitcoin/core/Transaction;
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 300
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v2, v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->provideMultiSigContract(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Transaction;)V

    sget-object v4, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 307
    return-void

    .line 293
    .end local v0    # "multisigContract":Lcom/google/bitcoin/core/Transaction;
    .end local v1    # "providedContract":Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private receiveRefundMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 9
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
    .line 239
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 240
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got refund transaction, returning signature"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v6

    .line 243
    .local v6, "providedRefund":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->myKey:Lcom/google/bitcoin/core/ECKey;

    iget-wide v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->expireTime:J

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;-><init>(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;J)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 244
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    new-instance v1, Lcom/google/bitcoin/core/Transaction;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    invoke-virtual {v6}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->provideRefundTransaction(Lcom/google/bitcoin/core/Transaction;[B)[B

    move-result-object v8

    .line 247
    .local v8, "signature":[B
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 249
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v7

    .line 252
    .local v7, "returnRefundBuilder":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 256
    return-void

    .line 239
    .end local v6    # "providedRefund":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .end local v7    # "returnRefundBuilder":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .end local v8    # "signature":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
    .locals 7
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .param p2, "sendAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;,
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 311
    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Got a payment update"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Ljava/math/BigInteger;

    move-result-object v2

    .line 314
    .local v2, "lastBestPayment":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getClientChangeValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 315
    .local v3, "refundSize":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->incrementPayment(Ljava/math/BigInteger;[B)Z

    move-result v4

    .line 316
    .local v4, "stillUsable":Z
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 318
    .local v1, "bestPaymentChange":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-lez v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 321
    :cond_0
    if-eqz p2, :cond_1

    .line 322
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 323
    .local v0, "ack":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0, v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 324
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 327
    .end local v0    # "ack":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    :cond_1
    if-nez v4, :cond_2

    .line 328
    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Channel is now fully exhausted, closing/initiating settlement"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 329
    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->settlePayment(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 331
    :cond_2
    return-void
.end method

.method private receiveVersionMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 12
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 172
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v10, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v7, v10, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMajor()I

    move-result v7

    if-eq v7, v8, :cond_1

    .line 174
    const-string v7, "This server needs protocol v1"

    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v7, v8, v9}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 235
    :goto_1
    return-void

    :cond_0
    move v7, v9

    .line 172
    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v6

    .line 181
    .local v6, "versionNegotiationBuilder":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v10

    sget-object v11, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v10, v11}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 185
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 186
    .local v4, "reopenChannelContractHash":Lcom/google/protobuf/ByteString;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    const/16 v10, 0x20

    if-ne v7, v10, :cond_4

    .line 187
    new-instance v1, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 188
    .local v1, "contractHash":Lcom/google/bitcoin/core/Sha256Hash;
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v10, "New client that wants to resume {}"

    invoke-interface {v7, v10, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v7

    sget-object v10, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    .line 191
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->getChannel(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    move-result-object v5

    .line 193
    .local v5, "storedServerChannel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    if-eqz v5, :cond_3

    .line 194
    invoke-virtual {v5, p0, v9}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->setConnectedHandler(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Z)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    move-result-object v2

    .line 195
    .local v2, "existingHandler":Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    if-eq v2, p0, :cond_2

    .line 196
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v9, "  ... and that channel is already in use, disconnecting other user."

    invoke-interface {v7, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->close()V

    .line 198
    invoke-virtual {v5, p0, v8}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->setConnectedHandler(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Z)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    .line 201
    :cond_2
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v8, "Got resume version message, responding with VERSIONS and CHANNEL_OPEN"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    invoke-virtual {v5, v7, v8}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->getOrCreateState(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 203
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 204
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v8

    sget-object v9, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v8, v9}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 207
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {v7, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V

    goto/16 :goto_1

    .line 210
    .end local v2    # "existingHandler":Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
    :cond_3
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v8, " ... but we do not have any record of that contract! Resume failed."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 216
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    .end local v1    # "contractHash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v5    # "storedServerChannel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :cond_4
    :goto_2
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v8, "Got initial version message, responding with VERSIONS and INITIATE: min value={}"

    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    new-instance v7, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v7}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 220
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 222
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->timeWindow:J

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->expireTime:J

    .line 223
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 225
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->expireTime:J

    invoke-virtual {v7, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v3

    .line 231
    .local v3, "initiateBuilder":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v8

    sget-object v9, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v8, v9}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto/16 :goto_1

    .line 213
    .end local v3    # "initiateBuilder":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .restart local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    .restart local v1    # "contractHash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_5
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v8, " ... but we do not have any stored channels! Resume failed."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private settlePayment(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 2
    .param p1, "clientRequestedClose"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->channelSettling:Z

    .line 421
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$2;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 445
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 504
    :try_start_0
    iget-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->channelSettling:Z

    if-nez v1, :cond_0

    .line 505
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 506
    .local v0, "msg":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 507
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 508
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .end local v0    # "msg":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 513
    return-void

    .line 511
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public connectionClosed()V
    .locals 4

    .prologue
    .line 456
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 458
    :try_start_0
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Server channel closed."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 459
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->getMultisigContract()Lcom/google/bitcoin/core/Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    .line 465
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->getMultisigContract()Lcom/google/bitcoin/core/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->getChannel(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    move-result-object v1

    .line 467
    .local v1, "storedServerChannel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->clearConnectedHandler()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    .end local v1    # "storedServerChannel":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 478
    return-void

    .line 476
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 472
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public connectionOpen()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 486
    :try_start_0
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "New server channel active."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    return-void

    .line 489
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 6
    .param p1, "msg"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    const/4 v2, 0x1

    .line 338
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 340
    :try_start_0
    iget-boolean v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 341
    iget-boolean v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->channelSettling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 390
    :goto_0
    return-void

    .line 347
    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$3;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 371
    const-string v1, "Got unknown message type or type that doesn\'t apply to servers."

    .line 372
    .local v1, "errorText":Ljava/lang/String;
    const-string v2, "Got unknown message type or type that doesn\'t apply to servers."

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    .end local v1    # "errorText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 349
    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveVersionMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 352
    :pswitch_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveRefundMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 355
    :pswitch_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 358
    :pswitch_3
    :try_start_5
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->step:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 359
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
    :try_end_5
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 358
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 362
    :pswitch_4
    :try_start_6
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveCloseMessage()V
    :try_end_6
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 365
    :pswitch_5
    :try_start_7
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 366
    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v4, "Client sent ERROR {} with explanation {}"

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-interface {v3, v4, v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->conn:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_7
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 366
    :cond_2
    :try_start_8
    const-string v2, ""
    :try_end_8
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_9
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Caught verification exception handling message from client"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    invoke-virtual {v0}, Lcom/google/bitcoin/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 388
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 377
    :catch_1
    move-exception v0

    .line 378
    .local v0, "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    :try_start_a
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Caught value out of range exception handling message from client"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto/16 :goto_1

    .line 380
    .end local v0    # "e":Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
    :catch_2
    move-exception v0

    .line 381
    .local v0, "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Caught insufficient money exception handling message from client"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    invoke-virtual {v0}, Lcom/google/bitcoin/core/InsufficientMoneyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto/16 :goto_1

    .line 383
    .end local v0    # "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :catch_3
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Caught illegal state exception handling message from client"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public state()Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    return-object v0
.end method
