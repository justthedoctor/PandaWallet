.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;,
        Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    }
.end annotation


# static fields
.field private static final CONFIRMATIONS_FOR_DELETE:I = 0x3

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final expiryTime:J

.field private multisigContract:Lcom/google/bitcoin/core/Transaction;

.field private multisigScript:Lcom/google/bitcoin/script/Script;

.field private final myKey:Lcom/google/bitcoin/core/ECKey;

.field private refundFees:Ljava/math/BigInteger;

.field private refundTx:Lcom/google/bitcoin/core/Transaction;

.field private final serverMultisigKey:Lcom/google/bitcoin/core/ECKey;

.field private state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field private storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

.field private final totalValue:Ljava/math/BigInteger;

.field private valueToMe:Ljava/math/BigInteger;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;J)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "myKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p3, "serverMultisigKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p4, "value"    # Ljava/math/BigInteger;
    .param p5, "expiryTimeInSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p4}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 161
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 162
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->initWalletListeners()V

    .line 163
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->serverMultisigKey:Lcom/google/bitcoin/core/ECKey;

    .line 164
    invoke-virtual {p2}, Lcom/google/bitcoin/core/ECKey;->isPubKeyCanonical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/bitcoin/core/ECKey;->isPubKeyCanonical()Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Pubkey was not canonical (ie non-standard)"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 167
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    .line 168
    iput-wide p5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->expiryTime:J

    .line 169
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->NEW:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 170
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Lcom/google/bitcoin/core/Wallet;)V
    .locals 3
    .param p1, "storedClientChannel"    # Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 116
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 117
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigScript:Lcom/google/bitcoin/script/Script;

    .line 118
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    .line 119
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundFees:Ljava/math/BigInteger;

    .line 120
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->expiryTime:J

    .line 121
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->serverMultisigKey:Lcom/google/bitcoin/core/ECKey;

    .line 123
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    .line 124
    iget-object v0, p1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    .line 125
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 126
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 127
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->initWalletListeners()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
    .param p1, "x1"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->updateChannelInWallet()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->deleteChannelFromWallet()V

    return-void
.end method

.method private declared-synchronized deleteChannelFromWallet()V
    .locals 4

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v2, "Close tx has confirmed, deleting channel from wallet: {}"

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    .line 219
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->removeChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V

    .line 220
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 216
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized initWalletListeners()V
    .locals 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v0, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized makeUnsignedChannelContract(Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Transaction;
    .locals 3
    .param p1, "valueToMe"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 354
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 358
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-object v0

    .line 353
    .end local v0    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateChannelInWallet()V
    .locals 3

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 434
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    iput-object v2, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    .line 431
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    .line 433
    .local v0, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v0    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private watchCloseConfirmations()V
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v2, v2, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    .line 201
    .local v0, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    const/4 v2, 0x3

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 202
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 213
    return-void
.end method


# virtual methods
.method public declared-synchronized checkNotExpired()V
    .locals 4

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->expiryTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 368
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 369
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->disconnectFromChannel()V

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel expired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized disconnectFromChannel()V
    .locals 3

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 448
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    :try_start_2
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    .line 447
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 443
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doStoreChannelInWallet(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 9
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    .line 465
    .local v8, "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    const-string v1, "You have not added the StoredPaymentChannelClientStates extension to the wallet."

    invoke-static {v8, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v8, p1, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->getChannel(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 467
    new-instance v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundFees:Ljava/math/BigInteger;

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    .line 468
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    invoke-virtual {v8, v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V

    .line 469
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v0, v8}, Lcom/google/bitcoin/core/Wallet;->addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    .end local v8    # "channels":Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected editContractSendRequest(Lcom/google/bitcoin/core/Wallet$SendRequest;)V
    .locals 0
    .param p1, "req"    # Lcom/google/bitcoin/core/Wallet$SendRequest;

    .prologue
    .line 292
    return-void
.end method

.method declared-synchronized fakeSave()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :try_start_1
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCompletedRefundTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 2

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIncompleteRefundTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_0

    .line 314
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultisigContract()Lcom/google/bitcoin/core/Transaction;
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_0

    .line 302
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRefundTxFees()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->NEW:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 506
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundFees:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTotalValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public declared-synchronized getValueRefunded()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 531
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueSpent()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getTotalValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->getValueRefunded()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementPaymentBy(Ljava/math/BigInteger;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    .locals 9
    .param p1, "size"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v5, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v3, v5, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->checkNotExpired()V

    .line 398
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    .line 400
    new-instance v1, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v2, "Tried to decrement payment"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 401
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 402
    .local v6, "newValueToMe":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_2

    .line 403
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v2, "New value being sent back as change was smaller than minimum nondust output, sending all"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    .line 405
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 407
    :cond_2
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_3

    .line 408
    new-instance v1, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel has too little money to pay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " satoshis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_3
    invoke-direct {p0, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->makeUnsignedChannelContract(Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    .line 410
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v2, "Signing new payment tx {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 415
    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    .line 418
    .local v4, "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigScript:Lcom/google/bitcoin/script/Script;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Transaction;->calculateSignature(ILcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v8

    .line 419
    .local v8, "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->valueToMe:Ljava/math/BigInteger;

    .line 420
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->updateChannelInWallet()V

    .line 421
    new-instance v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    invoke-direct {v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;-><init>()V

    .line 422
    .local v7, "payment":Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    iput-object v8, v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lcom/google/bitcoin/crypto/TransactionSignature;

    .line 423
    iput-object p1, v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;->amount:Ljava/math/BigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    monitor-exit p0

    return-object v7

    .line 417
    .end local v4    # "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    .end local v7    # "payment":Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    .end local v8    # "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    :cond_4
    :try_start_2
    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "mode":Lcom/google/bitcoin/core/Transaction$SigHash;
    goto :goto_1
.end method

.method public declared-synchronized initiate()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;,
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v3

    .line 243
    .local v3, "params":Lcom/google/bitcoin/core/NetworkParameters;
    new-instance v5, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v5, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 246
    .local v5, "template":Lcom/google/bitcoin/core/Transaction;
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/bitcoin/core/ECKey;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->serverMultisigKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    const/4 v8, 0x2

    invoke-static {v8, v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lcom/google/bitcoin/script/Script;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v2

    .line 251
    .local v2, "multisigOutput":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getMinNonDustValue()Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-lez v7, :cond_0

    .line 252
    new-instance v7, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v8, "totalValue too small to use"

    invoke-direct {v7, v8}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v2    # "multisigOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v3    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v5    # "template":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 253
    .restart local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v2    # "multisigOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .restart local v3    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v5    # "template":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/google/bitcoin/core/Wallet$SendRequest;->forTx(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v4

    .line 254
    .local v4, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    invoke-static {}, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;->get()Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    move-result-object v7

    iput-object v7, v4, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    .line 255
    invoke-virtual {p0, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->editContractSendRequest(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 256
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7, v4}, Lcom/google/bitcoin/core/Wallet;->completeTx(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 257
    iget-object v1, v4, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    .line 258
    .local v1, "multisigFee":Ljava/math/BigInteger;
    iget-object v7, v4, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    .line 265
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v7, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    .line 266
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7, v2}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 267
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    iget-wide v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->expiryTime:J

    invoke-virtual {v7, v8, v9}, Lcom/google/bitcoin/core/Transaction;->setLockTime(J)V

    .line 268
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    sget-object v8, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_2

    .line 270
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    sget-object v8, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 271
    .local v6, "valueAfterFee":Ljava/math/BigInteger;
    sget-object v7, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-lez v7, :cond_1

    .line 272
    new-instance v7, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;

    const-string v8, "totalValue too small to use"

    invoke-direct {v7, v8}, Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    :cond_1
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v8, v3}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 274
    sget-object v7, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundFees:Ljava/math/BigInteger;

    .line 279
    .end local v6    # "valueAfterFee":Ljava/math/BigInteger;
    :goto_0
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v7

    sget-object v8, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 280
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v8, "initiated channel with multi-sig contract {}, refund {}"

    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    sget-object v7, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 276
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    iget-object v8, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->totalValue:Ljava/math/BigInteger;

    iget-object v9, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v9, v3}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 277
    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundFees:Ljava/math/BigInteger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized isSettlementTransaction(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 5
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    const/4 v1, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 136
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/bitcoin/core/Transaction;->getInput(I)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/TransactionInput;->verify(Lcom/google/bitcoin/core/TransactionOutput;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const/4 v1, 0x1

    .line 139
    :goto_0
    monitor-exit p0

    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    goto :goto_0

    .line 135
    .end local v0    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized provideRefundSignature([B)V
    .locals 12
    .param p1, "theirSignature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v3, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 330
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/bitcoin/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v11

    .line 331
    .local v11, "theirSig":Lcom/google/bitcoin/crypto/TransactionSignature;
    invoke-virtual {v11}, Lcom/google/bitcoin/crypto/TransactionSignature;->sigHashMode()Lcom/google/bitcoin/core/Transaction$SigHash;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    if-ne v0, v1, :cond_0

    invoke-virtual {v11}, Lcom/google/bitcoin/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "Refund signature was not SIGHASH_NONE|SIGHASH_ANYONECANPAY"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v11    # "theirSig":Lcom/google/bitcoin/crypto/TransactionSignature;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0

    .line 334
    .restart local v11    # "theirSig":Lcom/google/bitcoin/crypto/TransactionSignature;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 336
    .local v7, "multisigContractOutput":Lcom/google/bitcoin/core/TransactionOutput;
    :try_start_2
    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigScript:Lcom/google/bitcoin/script/Script;
    :try_end_2
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :try_start_3
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->myKey:Lcom/google/bitcoin/core/ECKey;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigScript:Lcom/google/bitcoin/script/Script;

    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Transaction;->calculateSignature(ILcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v8

    .line 343
    .local v8, "ourSignature":Lcom/google/bitcoin/crypto/TransactionSignature;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/bitcoin/crypto/TransactionSignature;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    invoke-static {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigInputScript([Lcom/google/bitcoin/crypto/TransactionSignature;)Lcom/google/bitcoin/script/Script;

    move-result-object v10

    .line 344
    .local v10, "scriptSig":Lcom/google/bitcoin/script/Script;
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v1, "Refund scriptSig: {}"

    invoke-interface {v0, v1, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v1, "Multi-sig contract scriptPubKey: {}"

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigScript:Lcom/google/bitcoin/script/Script;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->refundTx:Lcom/google/bitcoin/core/Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getInput(I)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v9

    .line 347
    .local v9, "refundInput":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v9, v10}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    .line 348
    invoke-virtual {v9, v7}, Lcom/google/bitcoin/core/TransactionInput;->verify(Lcom/google/bitcoin/core/TransactionOutput;)V

    .line 349
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 337
    .end local v8    # "ourSignature":Lcom/google/bitcoin/crypto/TransactionSignature;
    .end local v9    # "refundInput":Lcom/google/bitcoin/core/TransactionInput;
    .end local v10    # "scriptSig":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Lcom/google/bitcoin/core/ScriptException;
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized storeChannelInWallet(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 3
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 486
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->storedChannel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :goto_1
    monitor-exit p0

    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 490
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->doStoreChannelInWallet(Lcom/google/bitcoin/core/Sha256Hash;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :try_start_2
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :try_start_3
    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->state:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
