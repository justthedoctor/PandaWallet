.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
.super Ljava/lang/Object;
.source "PaymentChannelServerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private bestValueSignature:[B

.field private bestValueToMe:Ljava/math/BigInteger;

.field private final broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field private clientKey:Lcom/google/bitcoin/core/ECKey;

.field private clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

.field final closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private feePaidForPayment:Ljava/math/BigInteger;

.field private minExpireTime:J

.field private multisigContract:Lcom/google/bitcoin/core/Transaction;

.field private multisigScript:Lcom/google/bitcoin/script/Script;

.field private refundTransactionUnlockTimeSecs:J

.field private serverKey:Lcom/google/bitcoin/core/ECKey;

.field private state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field private storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

.field private totalValue:Ljava/math/BigInteger;

.field final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;J)V
    .locals 2
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "serverKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p4, "minExpireTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 105
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    .line 114
    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 349
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 146
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 147
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    .line 148
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 149
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 150
    iput-wide p4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->minExpireTime:J

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)V
    .locals 6
    .param p1, "storedServerChannel"    # Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 105
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    .line 114
    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 349
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 117
    monitor-enter p1

    .line 118
    :try_start_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 119
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 120
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 121
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    .line 122
    new-instance v3, Lcom/google/bitcoin/core/ECKey;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->getChunks()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-direct {v3, v4, v0}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientKey:Lcom/google/bitcoin/core/ECKey;

    .line 123
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionOutput;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 124
    iget-wide v3, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    iput-wide v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->refundTransactionUnlockTimeSecs:J

    .line 125
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    .line 126
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    .line 127
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueToMe:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    .line 128
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    .line 129
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 130
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 131
    iput-object p0, p1, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;

    .line 132
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 133
    monitor-exit p1

    .line 134
    return-void

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
    .param p1, "x1"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    return-object p1
.end method

.method private declared-synchronized makeUnsignedChannelContract(Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 3
    .param p1, "valueToMe"    # Ljava/math/BigInteger;

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 268
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/TransactionOutput;->setValue(Ljava/math/BigInteger;)V

    .line 270
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 273
    invoke-static {v0}, Lcom/google/bitcoin/core/Wallet$SendRequest;->forTx(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 267
    .end local v0    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private signMultisigInput(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V
    .locals 9
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "hashType"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p3, "anyoneCanPay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    move-object v0, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Transaction;->calculateSignature(ILcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v8

    .line 344
    .local v8, "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    invoke-virtual {v8}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v6

    .line 345
    .local v6, "mySig":[B
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    invoke-static {v0, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;)Lcom/google/bitcoin/script/Script;

    move-result-object v7

    .line 346
    .local v7, "scriptSig":Lcom/google/bitcoin/script/Script;
    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Transaction;->getInput(I)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    .line 347
    return-void
.end method

.method private declared-synchronized updateChannelInWallet()V
    .locals 4

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->updateValueToMe(Ljava/math/BigInteger;[B)V

    .line 473
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    .line 475
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    :cond_0
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    if-eqz v9, :cond_0

    .line 367
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 368
    .local v7, "temp":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 369
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v9

    sget-object v10, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    .line 371
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    invoke-virtual {v0, v7}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->closeChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V

    .line 372
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v10, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v9, v10}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 373
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    .end local v7    # "temp":Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 376
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v9}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v9

    sget-object v10, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v10}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 377
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt to settle channel in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 378
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 379
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 380
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .line 382
    :cond_1
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v10, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-eq v9, v10, :cond_2

    .line 384
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed attempt to settle a channel in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :cond_2
    const/4 v8, 0x0

    .line 389
    .local v8, "tx":Lcom/google/bitcoin/core/Transaction;
    :try_start_2
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    invoke-direct {p0, v9}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->makeUnsignedChannelContract(Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v6

    .line 390
    .local v6, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    iget-object v8, v6, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 395
    sget-object v9, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->signMultisigInput(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V

    .line 397
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v9, v6}, Lcom/google/bitcoin/core/Wallet;->completeTx(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 398
    iget-object v9, v6, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    iput-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;

    .line 399
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v10, "Calculated fee is {}"

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;

    invoke-interface {v9, v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;

    iget-object v10, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_3

    .line 401
    const-string v9, "Had to pay more in fees (%s) than the channel was worth (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "msg":Ljava/lang/String;
    new-instance v9, Lcom/google/bitcoin/core/InsufficientMoneyException;

    iget-object v10, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/google/bitcoin/core/InsufficientMoneyException;-><init>(Ljava/math/BigInteger;Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    .end local v1    # "e":Lcom/google/bitcoin/core/InsufficientMoneyException;
    .end local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 406
    .restart local v6    # "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    .restart local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    :try_start_4
    sget-object v9, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->signMultisigInput(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V

    .line 408
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 409
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionInput;

    .line 410
    .local v4, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionInput;->verify()V
    :try_end_4
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 413
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v6    # "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    :catch_1
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v10, "Could not verify self-built tx\nMULTISIG {}\nCLOSE {}"

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    if-eqz v8, :cond_4

    .end local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :goto_2
    invoke-interface {v9, v10, v11, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 414
    .restart local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    const-string v8, ""

    goto :goto_2

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    :cond_5
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 418
    sget-object v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v10, "Closing channel, broadcasting tx {}"

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    invoke-interface {v9, v8}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 421
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v9, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;

    invoke-direct {v9, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$2;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;)V

    invoke-static {v2, v9}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 435
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getBestValueToMe()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFeePaid()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 450
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->feePaidForPayment:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultisigContract()Lcom/google/bitcoin/core/Transaction;
    .locals 1

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 458
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRefundTransactionUnlockTime()J
    .locals 2

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 467
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->refundTransactionUnlockTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementPayment(Ljava/math/BigInteger;[B)Z
    .locals 13
    .param p1, "refundSize"    # Ljava/math/BigInteger;
    .param p2, "signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;,
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;,
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v10, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-ne v9, v10, :cond_0

    move v9, v7

    :goto_0
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 288
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/4 v9, 0x1

    invoke-static {p2, v9}, Lcom/google/bitcoin/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v5

    .line 293
    .local v5, "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 294
    .local v0, "fullyUsedUp":Z
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionOutput;->getMinNonDustValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_1

    if-nez v0, :cond_1

    .line 295
    new-instance v7, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v8, "Attempt to refund negative value or value too small to be accepted by the network"

    invoke-direct {v7, v8}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v0    # "fullyUsedUp":Z
    .end local v5    # "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_0
    move v9, v8

    goto :goto_0

    .line 296
    .restart local v0    # "fullyUsedUp":Z
    .restart local v5    # "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 297
    .local v2, "newValueToMe":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-gez v9, :cond_2

    .line 298
    new-instance v7, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v8, "Attempt to refund more than the contract allows."

    invoke-direct {v7, v8}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 299
    :cond_2
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_3

    .line 300
    new-instance v7, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v8, "Attempt to roll back payment on the channel."

    invoke-direct {v7, v8}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 305
    :cond_3
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v10, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v6

    .line 306
    .local v6, "walletContract":Lcom/google/bitcoin/core/Transaction;
    const-string v9, "Wallet did not contain multisig contract {} after state was marked READY"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v9

    sget-object v10, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v9, v10, :cond_4

    .line 313
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 314
    new-instance v7, Lcom/google/bitcoin/core/VerificationException;

    const-string v8, "Multisig contract was double-spent"

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 319
    :cond_4
    if-eqz v0, :cond_6

    .line 320
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    .line 324
    .local v1, "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    :goto_1
    invoke-virtual {v5}, Lcom/google/bitcoin/crypto/TransactionSignature;->sigHashMode()Lcom/google/bitcoin/core/Transaction$SigHash;

    move-result-object v9

    if-ne v9, v1, :cond_5

    invoke-virtual {v5}, Lcom/google/bitcoin/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v9

    if-nez v9, :cond_7

    .line 325
    :cond_5
    new-instance v7, Lcom/google/bitcoin/core/VerificationException;

    const-string v8, "New payment signature was not signed with the right SIGHASH flags."

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 322
    .end local v1    # "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    :cond_6
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;

    .restart local v1    # "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    goto :goto_1

    .line 327
    :cond_7
    invoke-direct {p0, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->makeUnsignedChannelContract(Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v3

    .line 331
    .local v3, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    iget-object v9, v3, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v1, v12}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(ILcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    .line 333
    .local v4, "sighash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v9, v4, v5}, Lcom/google/bitcoin/core/ECKey;->verify(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/ECKey$ECDSASignature;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 334
    new-instance v7, Lcom/google/bitcoin/core/VerificationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Signature does not verify on tx\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 335
    :cond_8
    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    .line 336
    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    .line 337
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->updateChannelInWallet()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    if-nez v0, :cond_9

    :goto_2
    monitor-exit p0

    return v7

    :cond_9
    move v7, v8

    goto :goto_2
.end method

.method public declared-synchronized provideMultiSigContract(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "multisigContract"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v6, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 221
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 222
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    .line 225
    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/bitcoin/core/ECKey;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lcom/google/bitcoin/script/Script;

    move-result-object v1

    .line 226
    .local v1, "expectedScript":Lcom/google/bitcoin/script/Script;
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigScript:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Multisig contract\'s first output was not a standard 2-of-2 multisig to client and server in that order."

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local v1    # "expectedScript":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_2
    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v4, "Provided multisig contract did not verify: {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    move v3, v4

    .line 218
    goto :goto_0

    .line 229
    .restart local v1    # "expectedScript":Lcom/google/bitcoin/script/Script;
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p1, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    .line 230
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gtz v3, :cond_2

    .line 231
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Not accepting an attempt to open a contract with zero value."

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :cond_2
    :try_start_4
    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v4, "Broadcasting multisig contract: {}"

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 239
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    .line 240
    .local v2, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;>;"
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    invoke-interface {v3, p1}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized provideRefundTransaction(Lcom/google/bitcoin/core/Transaction;[B)[B
    .locals 9
    .param p1, "refundTx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "clientMultiSigPubKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v4, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-ne v2, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 174
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v2, "Provided with refund transaction: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 178
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 179
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Refund transaction does not have exactly one input"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Transaction;->getInput(I)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Refund transaction\'s input\'s sequence number is non-0"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v4

    iget-wide v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->minExpireTime:J

    cmp-long v0, v4, v7

    if-gez v0, :cond_3

    .line 184
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Refund transaction has a lock time too soon"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 189
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Refund transaction does not have exactly one output"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->refundTransactionUnlockTimeSecs:J

    .line 195
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientKey:Lcom/google/bitcoin/core/ECKey;

    .line 196
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lcom/google/bitcoin/script/Script;

    move-result-object v3

    .line 199
    .local v3, "multisigPubKey":Lcom/google/bitcoin/script/Script;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Transaction;->calculateSignature(ILcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v6

    .line 200
    .local v6, "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Signed refund transaction."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 202
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 203
    invoke-virtual {v6}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized storeChannelInWallet(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;)V
    .locals 12
    .param p1, "connectedHandler"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    if-ne v0, v1, :cond_0

    move v0, v10

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 492
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 503
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v11

    .line 491
    goto :goto_0

    .line 495
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Storing state with contract hash {}."

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    new-instance v1, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->addOrGetExistingExtension(Lcom/google/bitcoin/core/WalletExtension;)Lcom/google/bitcoin/core/WalletExtension;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    .line 498
    .local v9, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    new-instance v0, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->clientOutput:Lcom/google/bitcoin/core/TransactionOutput;

    iget-wide v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->refundTransactionUnlockTimeSecs:J

    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->serverKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueToMe:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionOutput;JLcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    .line 499
    if-eqz p1, :cond_2

    .line 500
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/bitcoin/protocols/channels/StoredServerChannel;->setConnectedHandler(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Z)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v10

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    invoke-virtual {v9, v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V

    .line 502
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v0, v9}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 491
    .end local v9    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v9    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;
    :cond_3
    move v0, v11

    .line 500
    goto :goto_2
.end method
