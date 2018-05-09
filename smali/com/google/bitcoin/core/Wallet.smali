.class public Lcom/google/bitcoin/core/Wallet;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Lcom/google/bitcoin/core/BlockChainListener;
.implements Lcom/google/bitcoin/core/PeerFilterProvider;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/Wallet$12;,
        Lcom/google/bitcoin/core/Wallet$FeeCalculation;,
        Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;,
        Lcom/google/bitcoin/core/Wallet$TxOffsetPair;,
        Lcom/google/bitcoin/core/Wallet$BalanceType;,
        Lcom/google/bitcoin/core/Wallet$SendRequest;,
        Lcom/google/bitcoin/core/Wallet$SendResult;
    }
.end annotation


# static fields
.field private static final MINIMUM_BLOOM_DATA_LENGTH:I = 0x8

.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private acceptRiskyTransactions:Z

.field private balanceFutureRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected transient coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

.field private confidenceChanged:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            "Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;",
            ">;"
        }
    .end annotation
.end field

.field final dead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private transient eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/bitcoin/utils/ListenerRegistration",
            "<",
            "Lcom/google/bitcoin/core/WalletEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/bitcoin/core/WalletExtension;",
            ">;"
        }
    .end annotation
.end field

.field private transient ignoreNextNewBlock:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private insideReorg:Z

.field private keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

.field private keychain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field private lastBlockSeenHash:Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lastBlockSeenHeight:I

.field private lastBlockSeenTimeSecs:J

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private onWalletChangedSuppressions:I

.field private final params:Lcom/google/bitcoin/core/NetworkParameters;

.field final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private riskAnalyzer:Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;

.field final spent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field final transactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private transient txConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

.field final unspent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

.field private volatile vKeyRotationEnabled:Z

.field private volatile vKeyRotationTimestamp:J

.field protected volatile vTransactionBroadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field private version:I

.field private watchedScripts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/google/bitcoin/core/Wallet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "wallet"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 173
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultCoinSelector;

    invoke-direct {v0}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    .line 188
    sget-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->FACTORY:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->riskAnalyzer:Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;

    .line 3175
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->balanceFutureRequests:Ljava/util/List;

    .line 195
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    .line 197
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    .line 207
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->createTransientState()V

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/crypto/KeyCrypter;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 215
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/crypto/KeyCrypter;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p1, "x1"    # Ljava/math/BigInteger;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;->checkBalanceFuturesLocked(Ljava/math/BigInteger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;->queueOnTransactionConfidenceChanged(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/wallet/CoinSelection;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p1, "x1"    # Lcom/google/bitcoin/wallet/CoinSelection;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;->estimateBytesForSigning(Lcom/google/bitcoin/wallet/CoinSelection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V
    .locals 4
    .param p1, "pool"    # Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1362
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1363
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v2, Lcom/google/bitcoin/core/Wallet$12;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1378
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wallet transaction type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :pswitch_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1382
    :goto_1
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->txConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;Ljava/util/concurrent/Executor;)V

    .line 1383
    return-void

    :cond_0
    move v0, v1

    .line 1366
    goto :goto_0

    .line 1369
    :pswitch_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 1372
    :pswitch_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    .line 1375
    :pswitch_3
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static addWalletTransactionsToSet(Ljava/util/Set;Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V
    .locals 3
    .param p1, "poolType"    # Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/wallet/WalletTransaction;",
            ">;",
            "Lcom/google/bitcoin/wallet/WalletTransaction$Pool;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1339
    .local p0, "txs":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/wallet/WalletTransaction;>;"
    .local p2, "pool":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 1340
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    new-instance v2, Lcom/google/bitcoin/wallet/WalletTransaction;

    invoke-direct {v2, p1, v1}, Lcom/google/bitcoin/wallet/WalletTransaction;-><init>(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1342
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    return-void
.end method

.method private adjustOutputDownwardsForFee(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/wallet/CoinSelection;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "coinSelection"    # Lcom/google/bitcoin/wallet/CoinSelection;
    .param p3, "baseFee"    # Ljava/math/BigInteger;
    .param p4, "feePerKb"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 1984
    invoke-virtual {p1, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    .line 1986
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v4

    array-length v2, v4

    .line 1987
    .local v2, "size":I
    invoke-direct {p0, p2}, Lcom/google/bitcoin/core/Wallet;->estimateBytesForSigning(Lcom/google/bitcoin/wallet/CoinSelection;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1988
    div-int/lit16 v4, v2, 0x3e8

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1989
    .local v0, "fee":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/bitcoin/core/TransactionOutput;->setValue(Ljava/math/BigInteger;)V

    .line 1991
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    sget-object v4, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    .line 1992
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/bitcoin/core/TransactionOutput;->setValue(Ljava/math/BigInteger;)V

    .line 1993
    :cond_0
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getMinNonDustValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private checkBalanceFuturesLocked(Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "avail"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3217
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3218
    const/4 v0, 0x0

    .line 3219
    .local v0, "estimated":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->balanceFutureRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3220
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3221
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;

    .line 3222
    .local v2, "req":Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;
    const/4 v4, 0x0

    .line 3223
    .local v4, "val":Ljava/math/BigInteger;
    iget-object v5, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->type:Lcom/google/bitcoin/core/Wallet$BalanceType;

    sget-object v6, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    if-ne v5, v6, :cond_3

    .line 3224
    if-nez p1, :cond_1

    sget-object v5, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {p0, v5}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object p1

    .line 3225
    :cond_1
    iget-object v5, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->value:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 3226
    move-object v4, p1

    .line 3233
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 3234
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 3236
    .local v3, "v":Ljava/math/BigInteger;
    sget-object v5, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/bitcoin/core/Wallet$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/google/bitcoin/core/Wallet$3;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;Ljava/math/BigInteger;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3227
    .end local v3    # "v":Ljava/math/BigInteger;
    :cond_3
    iget-object v5, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->type:Lcom/google/bitcoin/core/Wallet$BalanceType;

    sget-object v6, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    if-ne v5, v6, :cond_2

    .line 3228
    if-nez v0, :cond_4

    sget-object v5, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {p0, v5}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    .line 3229
    :cond_4
    iget-object v5, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 3230
    move-object v4, v0

    goto :goto_1

    .line 3242
    .end local v2    # "req":Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;
    .end local v4    # "val":Ljava/math/BigInteger;
    :cond_5
    return-void
.end method

.method private checkForDoubleSpendAgainstPending(Lcom/google/bitcoin/core/Transaction;Z)Z
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "takeAction"    # Z

    .prologue
    .line 776
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 778
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 779
    .local v5, "outpoints":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/bitcoin/core/TransactionOutPoint;>;"
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionInput;

    .line 780
    .local v3, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 784
    .local v0, "doubleSpentTxns":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Transaction;

    .line 785
    .local v6, "p":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionInput;

    .line 788
    .restart local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v4

    .line 789
    .local v4, "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 791
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_2

    .line 792
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 796
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v4    # "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    .end local v6    # "p":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 797
    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/Wallet;->killTx(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    .line 799
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private createTransientState()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    .line 220
    new-instance v0, Lcom/google/bitcoin/core/Wallet$1;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/Wallet$1;-><init>(Lcom/google/bitcoin/core/Wallet;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->txConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z

    .line 242
    return-void
.end method

.method private estimateBytesForSigning(Lcom/google/bitcoin/wallet/CoinSelection;)I
    .locals 7
    .param p1, "selection"    # Lcom/google/bitcoin/wallet/CoinSelection;

    .prologue
    .line 3607
    const/4 v4, 0x0

    .line 3608
    .local v4, "size":I
    iget-object v5, p1, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionOutput;

    .line 3610
    .local v3, "output":Lcom/google/bitcoin/core/TransactionOutput;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3612
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubHash([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v2

    .line 3613
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    const-string v5, "Coin selection includes unspendable outputs"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4b

    add-int/2addr v4, v5

    .line 3614
    goto :goto_0

    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3615
    add-int/lit8 v4, v4, 0x4a

    goto :goto_0

    .line 3617
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unknown output type returned in coin selection"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3618
    :catch_0
    move-exception v0

    .line 3621
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 3624
    .end local v0    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v3    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_2
    return v4
.end method

.method private informConfidenceListenersIfNotReorganizing()V
    .locals 5

    .prologue
    .line 950
    iget-boolean v3, p0, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    if-eqz v3, :cond_0

    .line 958
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 953
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 954
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-virtual {v4, v3}, Lcom/google/bitcoin/core/TransactionConfidence;->queueListeners(Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V

    .line 955
    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/Wallet;->queueOnTransactionConfidenceChanged(Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_1

    .line 957
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;>;"
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private isTxOutputBloomFilterable(Lcom/google/bitcoin/core/TransactionOutput;)Z
    .locals 1
    .param p1, "out"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 3132
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/TransactionOutput;->isMine(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/TransactionOutput;->isWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killTx(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    .locals 15
    .param p1, "overridingTx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p2, "killedTx":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v9, Ljava/util/LinkedList;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1144
    .local v9, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1145
    invoke-virtual {v9}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/Transaction;

    .line 1146
    .local v8, "tx":Lcom/google/bitcoin/core/Transaction;
    sget-object v11, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v12, "TX {} killed{}"

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v13

    if-eqz p1, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "by "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-interface {v11, v12, v13, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1148
    sget-object v10, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v11, "Disconnecting each input and moving connected transactions."

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1150
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v10, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v10, v8}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    .line 1154
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionInput;

    .line 1155
    .local v2, "deadInput":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v10

    iget-object v1, v10, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 1156
    .local v1, "connected":Lcom/google/bitcoin/core/Transaction;
    if-eqz v1, :cond_1

    .line 1157
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionInput;->disconnect()Z

    .line 1158
    const-string v10, "kill"

    invoke-direct {p0, v1, v10}, Lcom/google/bitcoin/core/Wallet;->maybeMovePool(Lcom/google/bitcoin/core/Transaction;Ljava/lang/String;)V

    goto :goto_1

    .line 1146
    .end local v1    # "connected":Lcom/google/bitcoin/core/Transaction;
    .end local v2    # "deadInput":Lcom/google/bitcoin/core/TransactionInput;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v10, ""

    goto :goto_0

    .line 1160
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->setOverridingTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 1161
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v11, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1164
    .local v3, "deadOutput":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v1

    .line 1165
    .local v1, "connected":Lcom/google/bitcoin/core/TransactionInput;
    if-eqz v1, :cond_4

    .line 1166
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionInput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v6

    .line 1167
    .local v6, "parentTransaction":Lcom/google/bitcoin/core/Transaction;
    sget-object v10, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v11, "This death invalidated dependent tx {}"

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1168
    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 1171
    .end local v1    # "connected":Lcom/google/bitcoin/core/TransactionInput;
    .end local v3    # "deadOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "parentTransaction":Lcom/google/bitcoin/core/Transaction;
    .end local v8    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_5
    if-nez p1, :cond_7

    .line 1185
    :cond_6
    return-void

    .line 1173
    :cond_7
    sget-object v10, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v11, "Now attempting to connect the inputs of the overriding transaction."

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/TransactionInput;

    .line 1175
    .local v5, "input":Lcom/google/bitcoin/core/TransactionInput;
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    sget-object v11, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v5, v10, v11}, Lcom/google/bitcoin/core/TransactionInput;->connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v7

    .line 1176
    .local v7, "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    sget-object v10, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v7, v10, :cond_9

    .line 1177
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v10

    iget-object v10, v10, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    const-string v11, "kill"

    invoke-direct {p0, v10, v11}, Lcom/google/bitcoin/core/Wallet;->maybeMovePool(Lcom/google/bitcoin/core/Transaction;Ljava/lang/String;)V

    goto :goto_3

    .line 1179
    :cond_9
    iget-object v10, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    sget-object v11, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v5, v10, v11}, Lcom/google/bitcoin/core/TransactionInput;->connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v7

    .line 1180
    sget-object v10, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v7, v10, :cond_8

    .line 1181
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v10

    iget-object v10, v10, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    const-string v11, "kill"

    invoke-direct {p0, v10, v11}, Lcom/google/bitcoin/core/Wallet;->maybeMovePool(Lcom/google/bitcoin/core/Transaction;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static loadFromFile(Ljava/io/File;)Lcom/google/bitcoin/core/Wallet;
    .locals 5
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/google/bitcoin/core/Wallet;->loadFromFileStream(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 510
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v3

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    new-instance v3, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v4, "Could not open file"

    invoke-direct {v3, v4, v0}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 510
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static loadFromFileStream(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    .line 573
    .local v0, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    sget-object v1, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "Loaded an inconsistent wallet"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 576
    :cond_0
    return-object v0
.end method

.method private maybeMovePool(Lcom/google/bitcoin/core/Transaction;Ljava/lang/String;)V
    .locals 3
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "context"    # Ljava/lang/String;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1193
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->isEveryOwnedOutputSpent(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1196
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "  {} {} <-unspent ->spent"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1203
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "  {} {} <-spent ->unspent"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1206
    :cond_3
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private maybeQueueOnWalletChanged()V
    .locals 4

    .prologue
    .line 3334
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3335
    iget v2, p0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3336
    iget v2, p0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    if-lez v2, :cond_2

    .line 3345
    :cond_0
    return-void

    .line 3335
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3337
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3338
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Wallet$5;

    invoke-direct {v3, p0, v1}, Lcom/google/bitcoin/core/Wallet$5;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private maybeRotateKeys()V
    .locals 6

    .prologue
    .line 3723
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3725
    iget-boolean v4, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationEnabled:Z

    if-nez v4, :cond_2

    .line 3738
    :cond_0
    :goto_1
    return-void

    .line 3723
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3727
    :cond_2
    iget-wide v1, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationTimestamp:J

    .line 3728
    .local v1, "keyRotationTimestamp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 3729
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->vTransactionBroadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 3736
    .local v0, "broadcaster":Lcom/google/bitcoin/core/TransactionBroadcaster;
    :cond_3
    invoke-direct {p0, v1, v2, v0}, Lcom/google/bitcoin/core/Wallet;->rekeyOneBatch(JLcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v3

    .line 3737
    .local v3, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x258

    if-eq v4, v5, :cond_3

    goto :goto_1
.end method

.method private processTxFromBestChain(Lcom/google/bitcoin/core/Transaction;Z)V
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "forceAddToPool"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1009
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1010
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1015
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    .line 1016
    .local v1, "isDeadCoinbase":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1024
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "  coinbase tx <-dead: confidence {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1026
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/bitcoin/core/Wallet;->updateForSpends(Lcom/google/bitcoin/core/Transaction;Z)V

    .line 1035
    invoke-virtual {p1, p0, v3}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;Z)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-lez v2, :cond_4

    move v0, v3

    .line 1036
    .local v0, "hasOutputsToMe":Z
    :goto_2
    if-eqz v0, :cond_6

    .line 1038
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->isEveryOwnedOutputSpent(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1039
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  tx {} ->spent (by pending)"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v2, p1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    .line 1055
    :cond_1
    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/google/bitcoin/core/Wallet;->checkForDoubleSpendAgainstPending(Lcom/google/bitcoin/core/Transaction;Z)Z

    .line 1056
    return-void

    .end local v0    # "hasOutputsToMe":Z
    .end local v1    # "isDeadCoinbase":Z
    :cond_2
    move v2, v4

    .line 1010
    goto :goto_0

    :cond_3
    move v1, v4

    .line 1015
    goto :goto_1

    .restart local v1    # "isDeadCoinbase":Z
    :cond_4
    move v0, v4

    .line 1035
    goto :goto_2

    .line 1042
    .restart local v0    # "hasOutputsToMe":Z
    :cond_5
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  tx {} ->unspent"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v2, p1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_3

    .line 1045
    :cond_6
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-lez v2, :cond_7

    .line 1047
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  tx {} ->spent"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v2, p1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_3

    .line 1049
    :cond_7
    if-eqz p2, :cond_1

    .line 1051
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  tx {} ->spent (manually added)"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1052
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v2, p1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_3
.end method

.method private queueOnCoinsReceived(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "balance"    # Ljava/math/BigInteger;
    .param p3, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3349
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3350
    .local v2, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v7, v2, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/bitcoin/core/Wallet$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/Wallet$6;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3357
    .end local v2    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_0
    return-void
.end method

.method private queueOnCoinsSent(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "prevBalance"    # Ljava/math/BigInteger;
    .param p3, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3361
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3362
    .local v2, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v7, v2, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/bitcoin/core/Wallet$7;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/Wallet$7;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3369
    .end local v2    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_0
    return-void
.end method

.method private queueOnKeysAdded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3385
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3386
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3387
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Wallet$9;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/bitcoin/core/Wallet$9;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3394
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_0
    return-void
.end method

.method private queueOnReorganize()V
    .locals 4

    .prologue
    .line 3372
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3373
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3374
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3375
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Wallet$8;

    invoke-direct {v3, p0, v1}, Lcom/google/bitcoin/core/Wallet$8;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3382
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_0
    return-void
.end method

.method private queueOnScriptsAdded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3397
    .local p1, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3398
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3399
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Wallet$10;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/bitcoin/core/Wallet$10;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3406
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_0
    return-void
.end method

.method private queueOnTransactionConfidenceChanged(Lcom/google/bitcoin/core/Transaction;)V
    .locals 4
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 3316
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3317
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 3318
    .local v1, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v2, v3, :cond_0

    .line 3319
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lcom/google/bitcoin/core/WalletEventListener;

    invoke-interface {v2, p0, p1}, Lcom/google/bitcoin/core/WalletEventListener;->onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_0

    .line 3321
    :cond_0
    iget-object v2, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/bitcoin/core/Wallet$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/bitcoin/core/Wallet$4;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3329
    .end local v1    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<Lcom/google/bitcoin/core/WalletEventListener;>;"
    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 581
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->createTransientState()V

    .line 582
    return-void
.end method

.method private receive(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .locals 23
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p4, "relativityOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->getBalance()Ljava/math/BigInteger;

    move-result-object v9

    .line 842
    .local v9, "prevBalance":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v13

    .line 843
    .local v13, "txHash":Lcom/google/bitcoin/core/Sha256Hash;
    sget-object v18, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    .line 844
    .local v3, "bestChain":Z
    :goto_0
    sget-object v18, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->SIDE_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 846
    .local v10, "sideChain":Z
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v15

    .line 847
    .local v15, "valueSentFromMe":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v16

    .line 848
    .local v16, "valueSentToMe":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 850
    .local v14, "valueDifference":Ljava/math/BigInteger;
    sget-object v19, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v20, "Received tx{} for {} {}: {} [{}] in block {}"

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    if-eqz v10, :cond_5

    const-string v18, " on a side chain"

    :goto_2
    aput-object v18, v21, v22

    const/16 v18, 0x1

    invoke-static {v14}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v18

    const/16 v18, 0x2

    const-string v22, "PND"

    aput-object v22, v21, v18

    const/16 v18, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v18

    const/16 v18, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v18

    const/16 v22, 0x5

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    :goto_3
    aput-object v18, v21, v22

    invoke-interface/range {v19 .. v21}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/core/Transaction;

    .line 860
    .local v12, "tmp":Lcom/google/bitcoin/core/Transaction;
    if-eqz v12, :cond_0

    .line 861
    move-object/from16 p1, v12

    .line 864
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7

    const/16 v17, 0x1

    .line 865
    .local v17, "wasPending":Z
    :goto_4
    if-eqz v17, :cond_1

    .line 866
    sget-object v18, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v19, "  <-pending"

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 868
    :cond_1
    if-eqz v3, :cond_d

    .line 869
    if-eqz v17, :cond_8

    .line 872
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/TransactionOutput;

    .line 873
    .local v8, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v11

    .line 874
    .local v11, "spentBy":Lcom/google/bitcoin/core/TransactionInput;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/google/bitcoin/core/TransactionInput;->disconnect()Z

    goto :goto_5

    .line 843
    .end local v3    # "bestChain":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v10    # "sideChain":Z
    .end local v11    # "spentBy":Lcom/google/bitcoin/core/TransactionInput;
    .end local v12    # "tmp":Lcom/google/bitcoin/core/Transaction;
    .end local v14    # "valueDifference":Ljava/math/BigInteger;
    .end local v15    # "valueSentFromMe":Ljava/math/BigInteger;
    .end local v16    # "valueSentToMe":Ljava/math/BigInteger;
    .end local v17    # "wasPending":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 844
    .restart local v3    # "bestChain":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 850
    .restart local v10    # "sideChain":Z
    .restart local v14    # "valueDifference":Ljava/math/BigInteger;
    .restart local v15    # "valueSentFromMe":Ljava/math/BigInteger;
    .restart local v16    # "valueSentToMe":Ljava/math/BigInteger;
    :cond_5
    const-string v18, ""

    goto/16 :goto_2

    :cond_6
    const-string v18, "(unit test)"

    goto :goto_3

    .line 864
    .restart local v12    # "tmp":Lcom/google/bitcoin/core/Transaction;
    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    .line 877
    .restart local v17    # "wasPending":Z
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->processTxFromBestChain(Lcom/google/bitcoin/core/Transaction;Z)V

    .line 899
    :cond_9
    :goto_6
    if-eqz p2, :cond_a

    .line 902
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/bitcoin/core/Transaction;->setBlockAppearance(Lcom/google/bitcoin/core/StoredBlock;ZI)V

    .line 903
    if-eqz v3, :cond_a

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    .line 914
    if-eqz v3, :cond_f

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    if-eqz v3, :cond_c

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->getBalance()Ljava/math/BigInteger;

    move-result-object v7

    .line 930
    .local v7, "newBalance":Ljava/math/BigInteger;
    sget-object v18, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Balance is now: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 931
    if-nez v17, :cond_b

    .line 932
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v4

    .line 935
    .local v4, "diff":I
    if-lez v4, :cond_10

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v7}, Lcom/google/bitcoin/core/Wallet;->queueOnCoinsReceived(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 941
    .end local v4    # "diff":I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/bitcoin/core/Wallet;->checkBalanceFuturesLocked(Ljava/math/BigInteger;)V

    .line 944
    .end local v7    # "newBalance":Ljava/math/BigInteger;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V

    .line 947
    return-void

    .line 879
    :cond_d
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 883
    if-eqz v17, :cond_e

    .line 885
    sget-object v18, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    .line 886
    sget-object v18, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v19, "  ->pending"

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 890
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    .line 891
    .local v5, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 894
    invoke-virtual/range {p0 .. p1}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V

    goto/16 :goto_6

    .line 918
    .end local v5    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V

    goto/16 :goto_7

    .line 937
    .restart local v4    # "diff":I
    .restart local v7    # "newBalance":Ljava/math/BigInteger;
    :cond_10
    if-gez v4, :cond_b

    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v7}, Lcom/google/bitcoin/core/Wallet;->queueOnCoinsSent(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_8
.end method

.method private rekeyOneBatch(JLcom/google/bitcoin/core/TransactionBroadcaster;)Lcom/google/bitcoin/core/Transaction;
    .locals 15
    .param p1, "keyRotationTimestamp"    # J
    .param p3, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3744
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3747
    const/4 v8, 0x0

    .line 3748
    .local v8, "safeKey":Lcom/google/bitcoin/core/ECKey;
    const/4 v3, 0x0

    .line 3749
    .local v3, "haveRotatingKeys":Z
    :try_start_0
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/ECKey;

    .line 3750
    .local v5, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 3751
    .local v10, "t":J
    cmp-long v13, v10, p1

    if-gez v13, :cond_0

    .line 3752
    const/4 v3, 0x1

    goto :goto_0

    .line 3754
    :cond_0
    move-object v8, v5

    goto :goto_0

    .line 3757
    .end local v5    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v10    # "t":J
    :cond_1
    if-nez v3, :cond_3

    .line 3758
    const/4 v7, 0x0

    .line 3792
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3822
    :cond_2
    :goto_1
    return-object v7

    .line 3759
    :cond_3
    if-nez v8, :cond_4

    .line 3760
    :try_start_1
    sget-object v13, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v14, "Key rotation requested but no keys newer than the timestamp are available."

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3761
    const/4 v7, 0x0

    .line 3792
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 3771
    :cond_4
    :try_start_2
    new-instance v9, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;

    const/4 v13, 0x1

    move-wide/from16 v0, p1

    invoke-direct {v9, p0, v0, v1, v13}, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;-><init>(Lcom/google/bitcoin/core/Wallet;JZ)V

    .line 3772
    .local v9, "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v14, 0x1

    invoke-virtual {p0, v14}, Lcom/google/bitcoin/core/Wallet;->calculateAllSpendCandidates(Z)Ljava/util/LinkedList;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Lcom/google/bitcoin/wallet/CoinSelector;->select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v12

    .line 3773
    .local v12, "toMove":Lcom/google/bitcoin/wallet/CoinSelection;
    iget-object v13, v12, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    sget-object v14, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x0

    .line 3792
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 3774
    :cond_5
    :try_start_3
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v7, v13}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 3775
    .local v7, "rekeyTx":Lcom/google/bitcoin/core/Transaction;
    iget-object v13, v12, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/TransactionOutput;

    .line 3776
    .local v6, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v7, v6}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;
    :try_end_3
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3789
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v7    # "rekeyTx":Lcom/google/bitcoin/core/Transaction;
    .end local v9    # "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    .end local v12    # "toMove":Lcom/google/bitcoin/wallet/CoinSelection;
    :catch_0
    move-exception v2

    .line 3790
    .local v2, "e":Lcom/google/bitcoin/core/VerificationException;
    :try_start_4
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3792
    .end local v2    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catchall_0
    move-exception v13

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v13

    .line 3778
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rekeyTx":Lcom/google/bitcoin/core/Transaction;
    .restart local v9    # "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    .restart local v12    # "toMove":Lcom/google/bitcoin/wallet/CoinSelection;
    :cond_6
    :try_start_5
    iget-object v13, v12, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    invoke-virtual {v7, v13, v8}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 3779
    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v14, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    invoke-direct {p0, v7, v12, v13, v14}, Lcom/google/bitcoin/core/Wallet;->adjustOutputDownwardsForFee(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/wallet/CoinSelection;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 3780
    sget-object v13, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v14, "Failed to adjust rekey tx for fees."

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3781
    const/4 v7, 0x0

    .line 3792
    .end local v7    # "rekeyTx":Lcom/google/bitcoin/core/Transaction;
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 3783
    .restart local v7    # "rekeyTx":Lcom/google/bitcoin/core/Transaction;
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v13

    sget-object v14, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v13, v14}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 3784
    sget-object v13, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    invoke-virtual {v7, v13}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    .line 3785
    sget-object v13, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v7, v13, p0}, Lcom/google/bitcoin/core/Transaction;->signInputs(Lcom/google/bitcoin/core/Transaction$SigHash;Lcom/google/bitcoin/core/Wallet;)V

    .line 3787
    invoke-virtual {v7}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v13

    array-length v13, v13

    const v14, 0x19000

    if-ge v13, v14, :cond_8

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3788
    invoke-virtual {p0, v7}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_6
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3792
    iget-object v13, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3794
    if-eqz p3, :cond_2

    .line 3797
    sget-object v13, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v14, "Attempting to send key rotation tx: {}"

    invoke-interface {v13, v14, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3801
    new-instance v13, Lcom/google/bitcoin/core/Wallet$11;

    move-object/from16 v0, p3

    invoke-direct {v13, p0, v0, v7}, Lcom/google/bitcoin/core/Wallet$11;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Transaction;)V

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Wallet$11;->start()V

    goto/16 :goto_1

    .line 3787
    :cond_8
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private subtractDepthAndWorkDone(ILjava/math/BigInteger;Ljava/util/Collection;)V
    .locals 4
    .param p1, "depthToSubtract"    # I
    .param p2, "workDoneToSubtract"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/math/BigInteger;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2626
    .local p3, "transactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 2627
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v2, v3, :cond_0

    .line 2628
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/TransactionConfidence;->setDepthInBlocks(I)V

    .line 2629
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionConfidence;->getWorkDone()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/TransactionConfidence;->setWorkDone(Ljava/math/BigInteger;)V

    .line 2630
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2633
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    return-void
.end method

.method private toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/google/bitcoin/core/AbstractBlockChain;Ljava/util/Comparator;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/AbstractBlockChain;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2426
    .local p2, "transactionMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    .local p4, "sortOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2429
    if-eqz p4, :cond_0

    .line 2430
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, p4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 2431
    .local v2, "txns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2436
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 2438
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    :try_start_0
    const-string v3, "Sends "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    invoke-virtual {v1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    const-string v3, " and receives "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {v1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    const-string v3, ", total value "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {v1, p0}, Lcom/google/bitcoin/core/Transaction;->getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    const-string v3, ".\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2448
    :goto_2
    invoke-virtual {v1, p3}, Lcom/google/bitcoin/core/Transaction;->toString(Lcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v2    # "txns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "txns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    goto :goto_0

    .line 2450
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 2445
    .restart local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private updateForSpends(Lcom/google/bitcoin/core/Transaction;Z)V
    .locals 12
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "fromChain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 1077
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1078
    if-eqz p2, :cond_0

    .line 1079
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1080
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionInput;

    .line 1081
    .local v3, "input":Lcom/google/bitcoin/core/TransactionInput;
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    sget-object v8, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v3, v7, v8}, Lcom/google/bitcoin/core/TransactionInput;->connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v6

    .line 1082
    .local v6, "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v6, v7, :cond_2

    .line 1084
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    sget-object v8, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v3, v7, v8}, Lcom/google/bitcoin/core/TransactionInput;->connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v6

    .line 1085
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v6, v7, :cond_2

    .line 1087
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    sget-object v8, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v3, v7, v8}, Lcom/google/bitcoin/core/TransactionInput;->connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v6

    .line 1088
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-eq v6, v7, :cond_1

    .line 1095
    :cond_2
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v6, v7, :cond_5

    .line 1096
    if-eqz p2, :cond_4

    .line 1098
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "updateForSpends: saw double spend from chain, handling later."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 1079
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v6    # "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 1103
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v6    # "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    :cond_4
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "Saw two pending transactions double spend each other"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1104
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "  offending input is input {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "{}: {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v11

    invoke-static {v11}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1106
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    .line 1107
    .local v4, "other":Lcom/google/bitcoin/core/Transaction;
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "{}: {}"

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v11

    invoke-static {v11}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1109
    .end local v4    # "other":Lcom/google/bitcoin/core/Transaction;
    :cond_5
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v6, v7, :cond_1

    .line 1113
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v7

    iget-object v7, v7, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 1114
    .local v0, "connected":Lcom/google/bitcoin/core/Transaction;
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "  marked {} as spent"

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    const-string v7, "prevtx"

    invoke-direct {p0, v0, v7}, Lcom/google/bitcoin/core/Wallet;->maybeMovePool(Lcom/google/bitcoin/core/Transaction;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1123
    .end local v0    # "connected":Lcom/google/bitcoin/core/Transaction;
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v6    # "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    :cond_6
    if-eqz p2, :cond_a

    .line 1124
    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;

    .line 1125
    .local v5, "pendingTx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionInput;

    .line 1126
    .restart local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v3, p1, v7}, Lcom/google/bitcoin/core/TransactionInput;->connect(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v6

    .line 1129
    .restart local v6    # "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-eq v6, v7, :cond_9

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1130
    sget-object v7, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    if-ne v6, v7, :cond_8

    .line 1131
    sget-object v7, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "Connected pending tx input {}:{}"

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1129
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 1139
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v5    # "pendingTx":Lcom/google/bitcoin/core/Transaction;
    .end local v6    # "result":Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    :cond_a
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/bitcoin/core/WalletEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/WalletEventListener;

    .prologue
    .line 1216
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 1217
    return-void
.end method

.method public addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/bitcoin/core/WalletEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {v1, p1, p2}, Lcom/google/bitcoin/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    return-void
.end method

.method public addExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    .locals 4
    .param p1, "extension"    # Lcom/google/bitcoin/core/WalletExtension;

    .prologue
    .line 3254
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/WalletExtension;

    invoke-interface {v1}, Lcom/google/bitcoin/core/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 3255
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3257
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3258
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add two extensions with the same ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3262
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 3259
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3262
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3264
    return-void
.end method

.method public addKey(Lcom/google/bitcoin/core/ECKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2069
    new-array v2, v0, [Lcom/google/bitcoin/core/ECKey;

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Wallet;->addKeys(Ljava/util/List;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public addKeys(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2080
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2082
    const/4 v0, 0x0

    .line 2084
    .local v0, "added":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/ECKey;

    .line 2085
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2089
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2090
    :cond_1
    new-instance v3, Lcom/google/bitcoin/crypto/KeyCrypterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because the keyCrypter does not match the wallets. Keys must be homogenous."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 2091
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->isEncrypted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2092
    new-instance v3, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v4, "Cannot add key because it\'s encrypted and this wallet is not."

    invoke-direct {v3, v4}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2094
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2097
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;->queueOnKeysAdded(Ljava/util/List;)V

    .line 2099
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public addNewEncryptedKey(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;
    .locals 4
    .param p1, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;

    .prologue
    .line 2877
    new-instance v3, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v3}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v3, v1, v2}, Lcom/google/bitcoin/core/ECKey;->encrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .line 2878
    .local v0, "newKey":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 2879
    return-object v0
.end method

.method public addNewEncryptedKey(Ljava/lang/CharSequence;)Lcom/google/bitcoin/core/ECKey;
    .locals 2
    .param p1, "password"    # Ljava/lang/CharSequence;

    .prologue
    .line 2891
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2893
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    const-string v1, "Wallet is not encrypted, you must call encrypt() first."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2894
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-interface {v1, p1}, Lcom/google/bitcoin/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Wallet;->addNewEncryptedKey(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2896
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addOrGetExistingExtension(Lcom/google/bitcoin/core/WalletExtension;)Lcom/google/bitcoin/core/WalletExtension;
    .locals 4
    .param p1, "extension"    # Lcom/google/bitcoin/core/WalletExtension;

    .prologue
    .line 3270
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/WalletExtension;

    invoke-interface {v2}, Lcom/google/bitcoin/core/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 3271
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3273
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/WalletExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3274
    .local v1, "previousExtension":Lcom/google/bitcoin/core/WalletExtension;
    if-eqz v1, :cond_0

    .line 3280
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1    # "previousExtension":Lcom/google/bitcoin/core/WalletExtension;
    :goto_0
    return-object v1

    .line 3276
    .restart local v1    # "previousExtension":Lcom/google/bitcoin/core/WalletExtension;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3277
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3280
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, p1

    goto :goto_0

    .end local v1    # "previousExtension":Lcom/google/bitcoin/core/WalletExtension;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public addOrUpdateExtension(Lcom/google/bitcoin/core/WalletExtension;)V
    .locals 3
    .param p1, "extension"    # Lcom/google/bitcoin/core/WalletExtension;

    .prologue
    .line 3290
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/WalletExtension;

    invoke-interface {v1}, Lcom/google/bitcoin/core/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 3291
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3293
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3296
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3298
    return-void

    .line 3296
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction;)V
    .locals 2
    .param p1, "wtx"    # Lcom/google/bitcoin/wallet/WalletTransaction;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1352
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/wallet/WalletTransaction;->getPool()Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/bitcoin/wallet/WalletTransaction;->getTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1356
    return-void

    .line 1354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addWatchedAddress(Lcom/google/bitcoin/core/Address;)Z
    .locals 5
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2118
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    .line 2119
    .local v0, "now":J
    new-array v4, v2, [Lcom/google/bitcoin/core/Address;

    aput-object p1, v4, v3

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/bitcoin/core/Wallet;->addWatchedAddresses(Ljava/util/List;J)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public addWatchedAddress(Lcom/google/bitcoin/core/Address;J)Z
    .locals 3
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
    .param p2, "creationTime"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2129
    new-array v2, v0, [Lcom/google/bitcoin/core/Address;

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/google/bitcoin/core/Wallet;->addWatchedAddresses(Ljava/util/List;J)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public addWatchedAddresses(Ljava/util/List;J)I
    .locals 5
    .param p2, "creationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Address;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2139
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Address;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2141
    .local v3, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Address;

    .line 2142
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    invoke-static {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v2

    .line 2143
    .local v2, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v2, p2, p3}, Lcom/google/bitcoin/script/Script;->setCreationTimeSeconds(J)V

    .line 2144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2147
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v2    # "script":Lcom/google/bitcoin/script/Script;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Wallet;->addWatchedScripts(Ljava/util/List;)I

    move-result v4

    return v4
.end method

.method public addWatchedScripts(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2157
    .local p1, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2159
    const/4 v0, 0x0

    .line 2160
    .local v0, "added":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/Script;

    .line 2161
    .local v2, "script":Lcom/google/bitcoin/script/Script;
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2163
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2167
    .end local v2    # "script":Lcom/google/bitcoin/script/Script;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Wallet;->queueOnScriptsAdded(Ljava/util/List;)V

    .line 2168
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public allowSpendingUnconfirmedTransactions()V
    .locals 1

    .prologue
    .line 3167
    invoke-static {}, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;->get()Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->setCoinSelector(Lcom/google/bitcoin/wallet/CoinSelector;)V

    .line 3168
    return-void
.end method

.method public autosaveToFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Lcom/google/bitcoin/wallet/WalletFiles$Listener;)Lcom/google/bitcoin/wallet/WalletFiles;
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "delayTime"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "eventListener"    # Lcom/google/bitcoin/wallet/WalletFiles$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Already auto saving this wallet."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 430
    new-instance v0, Lcom/google/bitcoin/wallet/WalletFiles;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/wallet/WalletFiles;-><init>(Lcom/google/bitcoin/core/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V

    .line 431
    .local v0, "manager":Lcom/google/bitcoin/wallet/WalletFiles;
    if-eqz p5, :cond_0

    .line 432
    invoke-virtual {v0, p5}, Lcom/google/bitcoin/wallet/WalletFiles;->setListener(Lcom/google/bitcoin/wallet/WalletFiles$Listener;)V

    .line 433
    :cond_0
    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 429
    .end local v0    # "manager":Lcom/google/bitcoin/wallet/WalletFiles;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public calculateAllSpendCandidates(Z)Ljava/util/LinkedList;
    .locals 7
    .param p1, "excludeImmatureCoinbases"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2002
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2004
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 2005
    .local v0, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Transaction;

    .line 2007
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->isMature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2008
    :cond_1
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionOutput;

    .line 2009
    .local v3, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2010
    invoke-virtual {v3, p0}, Lcom/google/bitcoin/core/TransactionOutput;->isMine(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2011
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2016
    .end local v0    # "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .restart local v0    # "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    :cond_3
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 9
    .param p1, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;

    .prologue
    const/4 v7, 0x0

    .line 2921
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2924
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 2953
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v7

    .line 2927
    :cond_0
    const/4 v1, 0x0

    .line 2928
    .local v1, "firstEncryptedECKey":Lcom/google/bitcoin/core/ECKey;
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2929
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/ECKey;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v1, :cond_2

    .line 2930
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 2931
    .local v3, "loopECKey":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 2932
    move-object v1, v3

    goto :goto_1

    .line 2936
    .end local v3    # "loopECKey":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    if-nez v1, :cond_3

    .line 2953
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2938
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2939
    .local v4, "originalAddress":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->getEncryptedPrivateKey()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2941
    :try_start_3
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-virtual {v1, v8, p1}, Lcom/google/bitcoin/core/ECKey;->decrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v6

    .line 2944
    .local v6, "rebornKey":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2945
    .local v5, "rebornAddress":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/google/bitcoin/crypto/KeyCrypterException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 2953
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2946
    .end local v5    # "rebornAddress":Ljava/lang/String;
    .end local v6    # "rebornKey":Lcom/google/bitcoin/core/ECKey;
    :catch_0
    move-exception v0

    .line 2953
    .local v0, "ede":Lcom/google/bitcoin/crypto/KeyCrypterException;
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "ede":Lcom/google/bitcoin/crypto/KeyCrypterException;
    :cond_4
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "firstEncryptedECKey":Lcom/google/bitcoin/core/ECKey;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v4    # "originalAddress":Ljava/lang/String;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public checkPassword(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/CharSequence;

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2909
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Lcom/google/bitcoin/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2911
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 2909
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2911
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public cleanup()V
    .locals 6

    .prologue
    .line 1470
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "dirty":Z
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 1475
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/bitcoin/core/Wallet;->isTransactionRisky(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z

    if-nez v3, :cond_0

    .line 1476
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Found risky transaction {} in wallet during cleanup."

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1477
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->isAnyOutputSpent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1478
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->disconnectInputs()Z

    .line 1479
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1480
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const/4 v0, 0x1

    .line 1482
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Removed transaction {} from pending pool during cleanup."

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1495
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1484
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Cannot remove transaction {} from pending pool during cleanup, as it\'s already spent partially."

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1490
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    if-eqz v0, :cond_3

    .line 1491
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1492
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveLater()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1497
    return-void
.end method

.method public clearTransactions(I)V
    .locals 2
    .param p1, "fromHeight"    # I

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1450
    if-nez p1, :cond_0

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1452
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1453
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1454
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1455
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1456
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1463
    return-void

    .line 1458
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public commitTx(Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->maybeCommitTx(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v0

    const-string v1, "commitTx called on the same transaction twice"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1299
    return-void
.end method

.method public completeTx(Lcom/google/bitcoin/core/Wallet$SendRequest;)V
    .locals 25
    .param p1, "req"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1870
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet$SendRequest;->access$300(Lcom/google/bitcoin/core/Wallet$SendRequest;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Given SendRequest has already been completed."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1872
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1873
    .local v5, "value":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1874
    .local v16, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_1

    .line 1870
    .end local v5    # "value":Ljava/math/BigInteger;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1876
    .restart local v5    # "value":Ljava/math/BigInteger;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v20, v5

    .line 1878
    .local v20, "totalOutput":Ljava/math/BigInteger;
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Completing send tx with {} outputs totalling {} satoshis (not including fees)"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1882
    sget-object v19, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1883
    .local v19, "totalInput":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/bitcoin/core/TransactionInput;

    .line 1884
    .local v15, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v15}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1885
    invoke-virtual {v15}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    goto :goto_2

    .line 1887
    :cond_2
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "SendRequest transaction already has inputs but we don\'t know how much they are worth - they will be added to fee."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1978
    .end local v5    # "value":Ljava/math/BigInteger;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v19    # "totalInput":Ljava/math/BigInteger;
    .end local v20    # "totalOutput":Ljava/math/BigInteger;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1888
    .restart local v5    # "value":Ljava/math/BigInteger;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v19    # "totalInput":Ljava/math/BigInteger;
    .restart local v20    # "totalOutput":Ljava/math/BigInteger;
    :cond_3
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1890
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1893
    .local v6, "originalInputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionInput;>;"
    const/4 v7, 0x0

    .line 1894
    .local v7, "needAtLeastReferenceFee":Z
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->ensureMinRequiredFee:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    if-nez v3, :cond_6

    .line 1895
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1896
    .restart local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_4

    .line 1897
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/TransactionOutput;->getMinNonDustValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_5

    .line 1898
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tried to send dust with ensureMinRequiredFee set - no way to complete this"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1899
    :cond_5
    const/4 v7, 0x1

    .line 1912
    .end local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Wallet;->calculateAllSpendCandidates(Z)Ljava/util/LinkedList;

    move-result-object v8

    .line 1914
    .local v8, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    const/4 v10, 0x0

    .line 1915
    .local v10, "bestChangeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    if-nez v3, :cond_7

    .line 1918
    new-instance v2, Lcom/google/bitcoin/core/Wallet$FeeCalculation;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/bitcoin/core/Wallet$FeeCalculation;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Wallet$SendRequest;Ljava/math/BigInteger;Ljava/util/List;ZLjava/util/LinkedList;)V

    .line 1919
    .local v2, "feeCalculation":Lcom/google/bitcoin/core/Wallet$FeeCalculation;
    invoke-static {v2}, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->access$400(Lcom/google/bitcoin/core/Wallet$FeeCalculation;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v11

    .line 1920
    .local v11, "bestCoinSelection":Lcom/google/bitcoin/wallet/CoinSelection;
    invoke-static {v2}, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->access$500(Lcom/google/bitcoin/core/Wallet$FeeCalculation;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v10

    .line 1932
    .end local v2    # "feeCalculation":Lcom/google/bitcoin/core/Wallet$FeeCalculation;
    :goto_3
    iget-object v3, v11, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1933
    .restart local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    goto :goto_4

    .line 1924
    .end local v11    # "bestCoinSelection":Lcom/google/bitcoin/wallet/CoinSelection;
    .end local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_5
    const-string v4, "Empty wallet TX must have a single output only."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1925
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    move-object/from16 v17, v0

    .line 1926
    .local v17, "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    :goto_6
    sget-object v3, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v8}, Lcom/google/bitcoin/wallet/CoinSelector;->select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v11

    .line 1927
    .restart local v11    # "bestCoinSelection":Lcom/google/bitcoin/wallet/CoinSelection;
    const/4 v8, 0x0

    .line 1928
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v3

    iget-object v4, v11, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionOutput;->setValue(Ljava/math/BigInteger;)V

    .line 1929
    iget-object v0, v11, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    goto :goto_3

    .line 1924
    .end local v11    # "bestCoinSelection":Lcom/google/bitcoin/wallet/CoinSelection;
    .end local v17    # "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 1925
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    move-object/from16 v17, v0

    goto :goto_6

    .line 1935
    .restart local v11    # "bestCoinSelection":Lcom/google/bitcoin/wallet/CoinSelection;
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->ensureMinRequiredFee:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    if-eqz v3, :cond_d

    .line 1936
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    if-nez v3, :cond_b

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1937
    .local v9, "baseFee":Ljava/math/BigInteger;
    :goto_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    if-nez v3, :cond_c

    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1938
    .local v13, "feePerKb":Ljava/math/BigInteger;
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v21, v0

    .line 1939
    .local v21, "tx":Lcom/google/bitcoin/core/Transaction;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v9, v13}, Lcom/google/bitcoin/core/Wallet;->adjustOutputDownwardsForFee(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/wallet/CoinSelection;Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1940
    new-instance v3, Lcom/google/bitcoin/core/InsufficientMoneyException$CouldNotAdjustDownwards;

    invoke-direct {v3}, Lcom/google/bitcoin/core/InsufficientMoneyException$CouldNotAdjustDownwards;-><init>()V

    throw v3

    .line 1936
    .end local v9    # "baseFee":Ljava/math/BigInteger;
    .end local v13    # "feePerKb":Ljava/math/BigInteger;
    .end local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_b
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    goto :goto_7

    .line 1937
    .restart local v9    # "baseFee":Ljava/math/BigInteger;
    :cond_c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    goto :goto_8

    .line 1943
    .end local v9    # "baseFee":Ljava/math/BigInteger;
    :cond_d
    iget-object v3, v11, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 1945
    if-eqz v10, :cond_e

    .line 1946
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3, v10}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1947
    invoke-virtual {v10}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 1948
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  with {} coins change"

    invoke-virtual {v10}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1950
    :cond_e
    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 1951
    .local v12, "calculatedFee":Ljava/math/BigInteger;
    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-lez v3, :cond_f

    .line 1952
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  with a fee of {}"

    invoke-static {v12}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1956
    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/bitcoin/core/Transaction;->signInputs(Lcom/google/bitcoin/core/Transaction$SigHash;Lcom/google/bitcoin/core/Wallet;Lorg/spongycastle/crypto/params/KeyParameter;)V

    .line 1959
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v3

    array-length v0, v3

    move/from16 v18, v0

    .line 1960
    .local v18, "size":I
    const v3, 0x19000

    move/from16 v0, v18

    if-le v0, v3, :cond_10

    .line 1961
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Transaction could not be created without exceeding max size: %d vs %d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const v24, 0x19000

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1969
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 1973
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    sget-object v4, Lcom/google/bitcoin/core/Transaction$Purpose;->USER_PAYMENT:Lcom/google/bitcoin/core/Transaction$Purpose;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    .line 1974
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/bitcoin/core/Wallet$SendRequest;->access$302(Lcom/google/bitcoin/core/Wallet$SendRequest;Z)Z

    .line 1975
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    .line 1976
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  completed: {}"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1980
    return-void
.end method

.method public createSend(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Transaction;
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
    .param p2, "nanocoins"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1740
    invoke-static {p1, p2}, Lcom/google/bitcoin/core/Wallet$SendRequest;->to(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v0

    .line 1741
    .local v0, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->completeTx(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 1742
    iget-object v1, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    return-object v1
.end method

.method public decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 6
    .param p1, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;

    .prologue
    .line 2836
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2839
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v4

    sget-object v5, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Wallet is already decrypted"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2842
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2847
    .local v1, "decryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 2849
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2851
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2865
    .end local v1    # "decryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 2839
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2853
    .restart local v1    # "decryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-virtual {v3, v4, p1}, Lcom/google/bitcoin/core/ECKey;->decrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .line 2854
    .local v0, "decryptedECKey":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2859
    .end local v0    # "decryptedECKey":Lcom/google/bitcoin/core/ECKey;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    .line 2862
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    .line 2863
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2865
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2867
    return-void
.end method

.method public doesAcceptRiskyTransactions()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public encrypt(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 3
    .param p1, "password"    # Ljava/lang/CharSequence;

    .prologue
    .line 2765
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2767
    new-instance v1, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    invoke-direct {v1}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;-><init>()V

    .line 2768
    .local v1, "scrypt":Lcom/google/bitcoin/crypto/KeyCrypter;
    invoke-interface {v1, p1}, Lcom/google/bitcoin/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 2769
    .local v0, "derivedKey":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {p0, v1, v0}, Lcom/google/bitcoin/core/Wallet;->encrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V

    .line 2770
    return-object v0

    .line 2766
    .end local v0    # "derivedKey":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v1    # "scrypt":Lcom/google/bitcoin/crypto/KeyCrypter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public encrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 7
    .param p1, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;

    .prologue
    .line 2782
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2784
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v4

    sget-object v5, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Wallet is already encrypted"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2787
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2788
    .local v1, "encryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 2789
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2791
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2825
    .end local v1    # "encryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 2785
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2794
    .restart local v1    # "encryptedKeyChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/google/bitcoin/core/ECKey;->encrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .line 2800
    .local v0, "encryptedKey":Lcom/google/bitcoin/core/ECKey;
    invoke-static {v3, v0, p1, p2}, Lcom/google/bitcoin/core/ECKey;->encryptionIsReversible(Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2802
    new-instance v4, Lcom/google/bitcoin/crypto/KeyCrypterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be successfully decrypted after encryption so aborting wallet encryption."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2805
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2811
    .end local v0    # "encryptedKey":Lcom/google/bitcoin/core/ECKey;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_3
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 2812
    .restart local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2813
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->clearPrivateKey()V

    goto :goto_2

    .line 2818
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_5
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    .line 2821
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    .line 2823
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2825
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2827
    return-void
.end method

.method public findKeyFromPubHash([B)Lcom/google/bitcoin/core/ECKey;
    .locals 4
    .param p1, "pubkeyHash"    # [B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2183
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2185
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ECKey;

    .line 2186
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->getPubKeyHash()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2190
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    :goto_0
    return-object v1

    .line 2188
    :cond_1
    const/4 v1, 0x0

    .line 2190
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public findKeyFromPubKey([B)Lcom/google/bitcoin/core/ECKey;
    .locals 4
    .param p1, "pubkey"    # [B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2227
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2229
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ECKey;

    .line 2230
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2234
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    :goto_0
    return-object v1

    .line 2232
    :cond_1
    const/4 v1, 0x0

    .line 2234
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getBalance()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 2274
    sget-object v0, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "balanceType"    # Lcom/google/bitcoin/core/Wallet$BalanceType;

    .prologue
    .line 2281
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2283
    :try_start_0
    sget-object v4, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    if-ne p1, v4, :cond_0

    .line 2284
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/wallet/CoinSelector;)Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2294
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v3

    .line 2285
    :cond_0
    :try_start_1
    sget-object v4, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    if-ne p1, v4, :cond_2

    .line 2286
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Wallet;->calculateAllSpendCandidates(Z)Ljava/util/LinkedList;

    move-result-object v0

    .line 2287
    .local v0, "all":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2288
    .local v3, "value":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionOutput;

    .local v2, "out":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 2294
    .end local v2    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2291
    .end local v0    # "all":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/math/BigInteger;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Unknown balance type"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2294
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public getBalance(Lcom/google/bitcoin/wallet/CoinSelector;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "selector"    # Lcom/google/bitcoin/wallet/CoinSelector;

    .prologue
    .line 2303
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2305
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Wallet;->calculateAllSpendCandidates(Z)Ljava/util/LinkedList;

    move-result-object v0

    .line 2307
    .local v0, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    sget-object v2, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-interface {p1, v2, v0}, Lcom/google/bitcoin/wallet/CoinSelector;->select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v1

    .line 2308
    .local v1, "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    iget-object v2, v1, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .end local v0    # "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v1    # "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getBalanceFuture(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Wallet$BalanceType;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "type"    # Lcom/google/bitcoin/core/Wallet$BalanceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Lcom/google/bitcoin/core/Wallet$BalanceType;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3192
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3194
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 3195
    .local v1, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/math/BigInteger;>;"
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    .line 3196
    .local v0, "current":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 3198
    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3211
    :goto_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 3203
    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;-><init>(Lcom/google/bitcoin/core/Wallet$1;)V

    .line 3204
    .local v2, "req":Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;
    iput-object v1, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3205
    iput-object p1, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->value:Ljava/math/BigInteger;

    .line 3206
    iput-object p2, v2, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->type:Lcom/google/bitcoin/core/Wallet$BalanceType;

    .line 3207
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->balanceFutureRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3211
    .end local v0    # "current":Ljava/math/BigInteger;
    .end local v1    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/math/BigInteger;>;"
    .end local v2    # "req":Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public getBloomFilter(D)Lcom/google/bitcoin/core/BloomFilter;
    .locals 6
    .param p1, "falsePositiveRate"    # D

    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getBloomFilterElementCount()I

    move-result v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v2, v4

    double-to-long v4, v2

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Wallet;->getBloomFilter(IDJ)Lcom/google/bitcoin/core/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBloomFilter(IDJ)Lcom/google/bitcoin/core/BloomFilter;
    .locals 17
    .param p1, "size"    # I
    .param p2, "falsePositiveRate"    # D
    .param p4, "nTweak"    # J

    .prologue
    .line 3093
    new-instance v1, Lcom/google/bitcoin/core/BloomFilter;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/bitcoin/core/BloomFilter;-><init>(IDJ)V

    .line 3094
    .local v1, "filter":Lcom/google/bitcoin/core/BloomFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3096
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/core/ECKey;

    .line 3097
    .local v12, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v12}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/BloomFilter;->insert([B)V

    .line 3098
    invoke-virtual {v12}, Lcom/google/bitcoin/core/ECKey;->getPubKeyHash()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/BloomFilter;->insert([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3112
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 3101
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/bitcoin/script/Script;

    .line 3102
    .local v15, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v15}, Lcom/google/bitcoin/script/Script;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/script/ScriptChunk;

    .line 3106
    .local v7, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v7}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v7, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 3107
    iget-object v2, v7, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/BloomFilter;->insert([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3112
    .end local v7    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "script":Lcom/google/bitcoin/script/Script;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/Transaction;

    .line 3115
    .local v16, "tx":Lcom/google/bitcoin/core/Transaction;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    .line 3116
    invoke-virtual/range {v16 .. v16}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/bitcoin/core/TransactionOutput;

    .line 3118
    .local v13, "out":Lcom/google/bitcoin/core/TransactionOutput;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/bitcoin/core/Wallet;->isTxOutputBloomFilterable(Lcom/google/bitcoin/core/TransactionOutput;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3119
    new-instance v14, Lcom/google/bitcoin/core/TransactionOutPoint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    int-to-long v3, v9

    move-object/from16 v0, v16

    invoke-direct {v14, v2, v3, v4, v0}, Lcom/google/bitcoin/core/TransactionOutPoint;-><init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Transaction;)V

    .line 3120
    .local v14, "outPoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    invoke-virtual {v14}, Lcom/google/bitcoin/core/TransactionOutPoint;->bitcoinSerialize()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/BloomFilter;->insert([B)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3115
    .end local v14    # "outPoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3122
    :catch_0
    move-exception v8

    .line 3123
    .local v8, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3128
    .end local v8    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v9    # "i":I
    .end local v13    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v16    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_6
    return-object v1
.end method

.method public getBloomFilterElementCount()I
    .locals 7

    .prologue
    .line 3044
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getKeychainSize()I

    move-result v6

    mul-int/lit8 v4, v6, 0x2

    .line 3045
    .local v4, "size":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;

    .line 3046
    .local v5, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionOutput;

    .line 3048
    .local v3, "out":Lcom/google/bitcoin/core/TransactionOutput;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/Wallet;->isTxOutputBloomFilterable(Lcom/google/bitcoin/core/TransactionOutput;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 3049
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3050
    :catch_0
    move-exception v0

    .line 3051
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 3058
    .end local v0    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 3060
    return v4
.end method

.method public getChangeAddress()Lcom/google/bitcoin/core/Address;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2050
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2054
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "Can\'t send value without an address to use for receiving change"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2055
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    .line 2056
    .local v0, "first":Lcom/google/bitcoin/core/ECKey;
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2058
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .end local v0    # "first":Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getCoinSelector()Lcom/google/bitcoin/wallet/CoinSelector;
    .locals 2

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3140
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3142
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getContainingPools(Lcom/google/bitcoin/core/Transaction;)Ljava/util/EnumSet;
    .locals 4
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/bitcoin/wallet/WalletTransaction$Pool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1502
    :try_start_0
    const-class v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1503
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 1504
    .local v1, "txHash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1510
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1511
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1513
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1514
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    :cond_3
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    .end local v1    # "txHash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEarliestKeyCreationTime()J
    .locals 7

    .prologue
    .line 2661
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2663
    const-wide v0, 0x7fffffffffffffffL

    .line 2664
    .local v0, "earliestTime":J
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 2665
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 2666
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/script/Script;

    .line 2667
    .local v4, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v4}, Lcom/google/bitcoin/script/Script;->getCreationTimeSeconds()J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 2668
    .end local v4    # "script":Lcom/google/bitcoin/script/Script;
    :cond_1
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 2669
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2672
    .end local v0    # "earliestTime":J
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2
    return-wide v0

    .restart local v0    # "earliestTime":J
    :cond_2
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 2

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2995
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-nez v0, :cond_0

    .line 2997
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3002
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2999
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-interface {v0}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3002
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/bitcoin/core/WalletExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3304
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3306
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;
    .locals 2

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2964
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyRotationTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 3686
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationTimestamp:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getKeychainSize()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2681
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenHash:Lcom/google/bitcoin/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLastBlockSeenHeight()I
    .locals 2

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2753
    :try_start_0
    iget v0, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLastBlockSeenTime()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2739
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v0

    .line 2740
    .local v0, "secs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2741
    const/4 v2, 0x0

    .line 2743
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getLastBlockSeenTimeSecs()J
    .locals 3

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2724
    :try_start_0
    iget-wide v0, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method public getParams()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method public getPendingTransactions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2641
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2643
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getPoolSize(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;)I
    .locals 2
    .param p1, "pool"    # Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1525
    :try_start_0
    sget-object v0, Lcom/google/bitcoin/core/Wallet$12;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1535
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1527
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1537
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 1529
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 1537
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1531
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 1537
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1533
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .line 1537
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRecentTransactions(IZ)Ljava/util/List;
    .locals 4
    .param p1, "numTransactions"    # I
    .param p2, "includeDead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1403
    if-ltz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1405
    sget-object v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Wallet;->getPoolSize(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;)I

    move-result v2

    sget-object v3, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Wallet;->getPoolSize(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Wallet;->getPoolSize(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;)I

    move-result v3

    add-int v1, v2, v3

    .line 1408
    .local v1, "size":I
    if-gt p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 1409
    :cond_0
    move p1, v1

    .line 1411
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1413
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v2, Lcom/google/bitcoin/core/Wallet$2;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/core/Wallet$2;-><init>(Lcom/google/bitcoin/core/Wallet;)V

    invoke-static {v2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne p1, v2, :cond_3

    .line 1425
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    .line 1403
    .end local v0    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v1    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1421
    .restart local v0    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v1    # "size":I
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v0    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getRiskAnalyzer()Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->riskAnalyzer:Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTransactions(Z)Ljava/util/Set;
    .locals 3
    .param p1, "includeDead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1308
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1309
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1310
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1311
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1312
    if-eqz p1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getTransactionsByTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1389
    invoke-virtual {p0, v0, v0}, Lcom/google/bitcoin/core/Wallet;->getRecentTransactions(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 3017
    iget v0, p0, Lcom/google/bitcoin/core/Wallet;->version:I

    return v0
.end method

.method public getWalletTransactions()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/bitcoin/wallet/WalletTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1326
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1327
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/wallet/WalletTransaction;>;"
    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 1328
    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 1329
    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 1330
    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/wallet/WalletTransaction;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getWatchedBalance()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->getWatchedBalance(Lcom/google/bitcoin/wallet/CoinSelector;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getWatchedBalance(Lcom/google/bitcoin/wallet/CoinSelector;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "selector"    # Lcom/google/bitcoin/wallet/CoinSelector;

    .prologue
    .line 2324
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2326
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Wallet;->getWatchedOutputs(Z)Ljava/util/LinkedList;

    move-result-object v0

    .line 2328
    .local v0, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    sget-object v2, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-interface {p1, v2, v0}, Lcom/google/bitcoin/wallet/CoinSelector;->select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v1

    .line 2329
    .local v1, "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    iget-object v2, v1, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2331
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .end local v0    # "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v1    # "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getWatchedOutputs(Z)Ljava/util/LinkedList;
    .locals 8
    .param p1, "excludeImmatureCoinbases"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2026
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2028
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 2029
    .local v0, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;

    .line 2030
    .local v5, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz p1, :cond_1

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->isMature()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2031
    :cond_1
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/TransactionOutput;

    .line 2032
    .local v3, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 2034
    :try_start_1
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v4

    .line 2035
    .local v4, "scriptPubKey":Lcom/google/bitcoin/script/Script;
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2036
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2037
    .end local v4    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2044
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public getWatchedScripts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 266
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasKey(Lcom/google/bitcoin/core/ECKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2198
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2200
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isAddressWatched(Lcom/google/bitcoin/core/Address;)Z
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 2110
    invoke-static {p1}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    .line 2111
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->isWatchedScript(Lcom/google/bitcoin/script/Script;)Z

    move-result v1

    return v1
.end method

.method public isConsistent()Z
    .locals 12

    .prologue
    .line 518
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 520
    const/4 v4, 0x1

    .line 521
    .local v4, "success":Z
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v5

    .line 523
    .local v5, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 524
    .local v0, "hashes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Sha256Hash;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Transaction;

    .line 525
    .local v6, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 564
    .end local v0    # "hashes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 528
    .restart local v0    # "hashes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    .line 530
    .local v2, "size1":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v2, v8, :cond_1

    .line 531
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Two transactions with same hash"

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x0

    .line 535
    :cond_1
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    add-int v3, v8, v9

    .line 536
    .local v3, "size2":I
    if-eq v2, v3, :cond_2

    .line 537
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Inconsistent wallet sizes: {} {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    const/4 v4, 0x0

    .line 541
    :cond_2
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Transaction;

    .line 542
    .restart local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8}, Lcom/google/bitcoin/core/Transaction;->isConsistent(Lcom/google/bitcoin/core/Wallet;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 543
    const/4 v4, 0x0

    .line 544
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Inconsistent unspent tx {}"

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 548
    .end local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Transaction;

    .line 549
    .restart local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    const/4 v8, 0x1

    invoke-virtual {v6, p0, v8}, Lcom/google/bitcoin/core/Transaction;->isConsistent(Lcom/google/bitcoin/core/Wallet;Z)Z

    move-result v8

    if-nez v8, :cond_5

    .line 550
    const/4 v4, 0x0

    .line 551
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Inconsistent spent tx {}"

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 555
    .end local v6    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_6
    if-nez v4, :cond_7

    .line 557
    :try_start_2
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .line 558
    :catch_0
    move-exception v7

    .line 559
    .local v7, "x":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v8, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Printing inconsistent wallet failed"

    invoke-interface {v8, v9, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public isEncrypted()Z
    .locals 2

    .prologue
    .line 3008
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 3717
    iget-wide v0, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationTimestamp:J

    .line 3718
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPendingTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 7
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 723
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 727
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->getContainingPools(Lcom/google/bitcoin/core/Transaction;)Ljava/util/EnumSet;

    move-result-object v0

    .line 728
    .local v0, "containingPools":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    const-class v2, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received tx we already saw in a block or created ourselves: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v1

    .line 736
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 737
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Received tx that isn\'t relevant to this wallet, discarding."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 741
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/google/bitcoin/core/Wallet;->isTransactionRisky(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z

    if-nez v2, :cond_2

    .line 742
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Received transaction {} with a lock time of {}, but not configured to accept these, discarding"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 746
    :cond_2
    const/4 v1, 0x1

    .line 748
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "containingPools":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public isPubKeyHashMine([B)Z
    .locals 1
    .param p1, "pubkeyHash"    # [B

    .prologue
    .line 2208
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubHash([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPubKeyMine([B)Z
    .locals 1
    .param p1, "pubkey"    # [B

    .prologue
    .line 2242
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubKey([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequiringUpdateAllBloomFilter()Z
    .locals 1

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 763
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/bitcoin/core/Wallet;->checkForDoubleSpendAgainstPending(Lcom/google/bitcoin/core/Transaction;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isTransactionRisky(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Z
    .locals 5
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 687
    if-nez p2, :cond_0

    .line 688
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->riskAnalyzer:Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;->create(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Lcom/google/bitcoin/wallet/RiskAnalysis;

    move-result-object v0

    .line 690
    .local v0, "analysis":Lcom/google/bitcoin/wallet/RiskAnalysis;
    invoke-interface {v0}, Lcom/google/bitcoin/wallet/RiskAnalysis;->analyze()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    move-result-object v1

    .line 691
    .local v1, "result":Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    sget-object v2, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    if-eq v1, v2, :cond_1

    .line 692
    sget-object v2, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Pending transaction {} was considered risky: {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    const/4 v2, 0x1

    .line 697
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 695
    :cond_1
    const/4 v2, 0x0

    .line 697
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "analysis":Lcom/google/bitcoin/wallet/RiskAnalysis;
    .end local v1    # "result":Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public isWatchedScript(Lcom/google/bitcoin/script/Script;)Z
    .locals 2
    .param p1, "script"    # Lcom/google/bitcoin/script/Script;

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2215
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2217
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public maybeCommitTx(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1241
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 1242
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1244
    :try_start_0
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1281
    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1283
    :goto_0
    return v5

    .line 1246
    :cond_0
    :try_start_1
    sget-object v5, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v6, "commitTx of {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getBalance()Ljava/math/BigInteger;

    move-result-object v0

    .line 1248
    .local v0, "balance":Ljava/math/BigInteger;
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->now()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/bitcoin/core/Transaction;->setUpdateTime(Ljava/util/Date;)V

    .line 1252
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/google/bitcoin/core/Wallet;->updateForSpends(Lcom/google/bitcoin/core/Transaction;Z)V

    .line 1255
    sget-object v5, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v6, "->pending: {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1256
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v5

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/TransactionConfidence;->setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V

    .line 1257
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v5, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v5, p1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1262
    .local v3, "valueSentFromMe":Ljava/math/BigInteger;
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1263
    .local v4, "valueSentToMe":Ljava/math/BigInteger;
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1264
    .local v2, "newBalance":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-lez v5, :cond_1

    .line 1265
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/bitcoin/core/Wallet;->checkBalanceFuturesLocked(Ljava/math/BigInteger;)V

    .line 1266
    invoke-direct {p0, p1, v0, v2}, Lcom/google/bitcoin/core/Wallet;->queueOnCoinsReceived(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1268
    :cond_1
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-lez v5, :cond_2

    .line 1269
    invoke-direct {p0, p1, v0, v2}, Lcom/google/bitcoin/core/Wallet;->queueOnCoinsSent(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1271
    :cond_2
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V
    :try_end_2
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    :try_start_3
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1278
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 1279
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1281
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1283
    const/4 v5, 0x1

    goto :goto_0

    .line 1272
    .end local v2    # "newBalance":Ljava/math/BigInteger;
    .end local v3    # "valueSentFromMe":Ljava/math/BigInteger;
    .end local v4    # "valueSentToMe":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 1274
    .local v1, "e":Lcom/google/bitcoin/core/ScriptException;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1281
    .end local v0    # "balance":Ljava/math/BigInteger;
    .end local v1    # "e":Lcom/google/bitcoin/core/ScriptException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 6
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 972
    .local v1, "newBlockHash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 977
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 978
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHeight(I)V

    .line 979
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenTimeSecs(J)V

    .line 983
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v2

    .line 984
    .local v2, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Transaction;

    .line 985
    .local v3, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 988
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1000
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 989
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v4

    sget-object v5, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v4, v5, :cond_1

    .line 990
    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/TransactionConfidence;->notifyWorkDone(Lcom/google/bitcoin/core/Block;)Z

    .line 991
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v5, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 995
    .end local v3    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 996
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V

    .line 998
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveLater()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public notifyTransactionIsInBlock(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .locals 3
    .param p1, "txHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p4, "relativityOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 608
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    if-nez v0, :cond_1

    .line 609
    sget-object v1, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "TX {} not found despite being sent to wallet"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/bitcoin/core/Wallet;->receive(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    sget-object v1, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    if-ne p3, v1, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeRotateKeys()V

    goto :goto_0

    .line 614
    .end local v0    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public receiveFromBlock(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p3, "blockType"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .param p4, "relativityOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 826
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/bitcoin/core/Wallet;->receive(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 830
    sget-object v0, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    if-ne p3, v0, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeRotateKeys()V

    .line 835
    :cond_0
    return-void

    .line 828
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 713
    .local p2, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V

    .line 714
    return-void
.end method

.method public receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "overrideIsRelevant"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 642
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 645
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->getContainingPools(Lcom/google/bitcoin/core/Transaction;)Ljava/util/EnumSet;

    move-result-object v0

    .line 646
    .local v0, "containingPools":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    const-class v3, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 647
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received tx we already saw in a block or created ourselves: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 675
    :goto_0
    return-void

    .line 652
    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->isPendingTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 654
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/Wallet;->isTransactionRisky(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 671
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 656
    :cond_2
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v2

    .line 657
    .local v2, "valueSentToMe":Ljava/math/BigInteger;
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v1

    .line 658
    .local v1, "valueSentFromMe":Ljava/math/BigInteger;
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 659
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Received a pending transaction %s that spends %s %s from our own wallet, and sends us %s %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "PND"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "PND"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 663
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v3

    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Wallet received transaction with an unknown source. Consider tagging it!"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 669
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "containingPools":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/bitcoin/wallet/WalletTransaction$Pool;>;"
    .end local v1    # "valueSentFromMe":Ljava/math/BigInteger;
    .end local v2    # "valueSentToMe":Ljava/math/BigInteger;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/WalletEventListener;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lcom/google/bitcoin/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeKey(Lcom/google/bitcoin/core/ECKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public reorganize(Lcom/google/bitcoin/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .locals 27
    .param p1, "splitPoint"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/StoredBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 2476
    .local p2, "oldBlocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    .local p3, "newBlocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2492
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v24

    if-nez v24, :cond_1

    const/16 v24, 0x1

    :goto_0
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    const/16 v24, 0x1

    :goto_1
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2494
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    .line 2495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    const/16 v24, 0x1

    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    .line 2500
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v16

    .line 2501
    .local v16, "mapBlockTx":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Wallet$TxOffsetPair;>;"
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/Transaction;

    .line 2502
    .local v21, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v4

    .line 2503
    .local v4, "appearsIn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    .line 2504
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2505
    .local v8, "block":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    new-instance v26, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;-><init>(Lcom/google/bitcoin/core/Transaction;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 2617
    .end local v4    # "appearsIn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    .end local v8    # "block":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "mapBlockTx":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Wallet$TxOffsetPair;>;"
    .end local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v24

    .line 2492
    :cond_1
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 2493
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2495
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2507
    .restart local v16    # "mapBlockTx":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Wallet$TxOffsetPair;>;"
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/common/collect/ArrayListMultimap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/Sha256Hash;

    .line 2508
    .local v9, "blockHash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4

    .line 2510
    .end local v9    # "blockHash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_5
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2511
    .local v17, "oldBlockHashes":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "Old part of chain (top to bottom):"

    invoke-interface/range {v24 .. v25}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2512
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/StoredBlock;

    .line 2513
    .local v5, "b":Lcom/google/bitcoin/core/StoredBlock;
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "  {}"

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2514
    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2516
    .end local v5    # "b":Lcom/google/bitcoin/core/StoredBlock;
    :cond_6
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "New part of chain (top to bottom):"

    invoke-interface/range {v24 .. v25}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2517
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/StoredBlock;

    .line 2518
    .restart local v5    # "b":Lcom/google/bitcoin/core/StoredBlock;
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "  {}"

    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 2521
    .end local v5    # "b":Lcom/google/bitcoin/core/StoredBlock;
    :cond_7
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2524
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v18

    .line 2525
    .local v18, "oldChainTxns":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/Sha256Hash;

    .line 2526
    .restart local v9    # "blockHash":Lcom/google/bitcoin/core/Sha256Hash;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;

    .line 2527
    .local v20, "pair":Lcom/google/bitcoin/core/Wallet$TxOffsetPair;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v21, v0

    .line 2528
    .restart local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v22

    .line 2529
    .local v22, "txHash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2538
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "Coinbase killed by re-org: {}"

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2539
    const/16 v24, 0x0

    invoke-static/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->killTx(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    goto :goto_7

    .line 2541
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/bitcoin/core/TransactionOutput;

    .line 2542
    .local v19, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v15

    .line 2543
    .local v15, "input":Lcom/google/bitcoin/core/TransactionInput;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/google/bitcoin/core/TransactionInput;->disconnect()Z

    goto :goto_8

    .line 2545
    .end local v15    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v19    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->disconnectInputs()Z

    .line 2546
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const/16 v24, 0x1

    :goto_9
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    const/16 v24, 0x1

    :goto_a
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_7

    .line 2549
    :cond_c
    const/16 v24, 0x0

    goto :goto_9

    .line 2550
    :cond_d
    const/16 v24, 0x0

    goto :goto_a

    .line 2556
    .end local v9    # "blockHash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "pair":Lcom/google/bitcoin/core/Wallet$TxOffsetPair;
    .end local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v22    # "txHash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/bitcoin/core/Transaction;

    .line 2559
    .restart local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v24

    if-nez v24, :cond_f

    .line 2560
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "  ->pending {}"

    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2561
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v24

    sget-object v25, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual/range {v24 .. v25}, Lcom/google/bitcoin/core/TransactionConfidence;->setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->confidenceChanged:Ljava/util/Map;

    move-object/from16 v24, v0

    sget-object v25, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    sget-object v24, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    .line 2564
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->updateForSpends(Lcom/google/bitcoin/core/Transaction;Z)V

    goto :goto_b

    .line 2575
    .end local v21    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 2576
    .local v10, "depthToSubtract":I
    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2577
    .local v23, "workDoneToSubtract":Ljava/math/BigInteger;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/StoredBlock;

    .line 2578
    .restart local v5    # "b":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    goto :goto_c

    .line 2580
    .end local v5    # "b":Lcom/google/bitcoin/core/StoredBlock;
    :cond_11
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "depthToSubtract = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", workDoneToSubtract = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/google/bitcoin/core/Wallet;->subtractDepthAndWorkDone(ILjava/math/BigInteger;Ljava/util/Collection;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/google/bitcoin/core/Wallet;->subtractDepthAndWorkDone(ILjava/math/BigInteger;Ljava/util/Collection;)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lcom/google/bitcoin/core/Wallet;->subtractDepthAndWorkDone(ILjava/math/BigInteger;Ljava/util/Collection;)V

    .line 2587
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 2593
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/StoredBlock;

    .line 2594
    .local v7, "block":Lcom/google/bitcoin/core/StoredBlock;
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "Replaying block {}"

    invoke-virtual {v7}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2595
    invoke-virtual {v7}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;

    .line 2596
    .restart local v20    # "pair":Lcom/google/bitcoin/core/Wallet$TxOffsetPair;
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "  tx {}"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v24, v0

    sget-object v25, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->offset:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/bitcoin/core/Wallet;->receive(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    .line 2599
    :catch_0
    move-exception v11

    .line 2600
    .local v11, "e":Lcom/google/bitcoin/core/ScriptException;
    :try_start_3
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 2603
    .end local v11    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v20    # "pair":Lcom/google/bitcoin/core/Wallet$TxOffsetPair;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/bitcoin/core/Wallet;->notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V

    goto :goto_d

    .line 2605
    .end local v7    # "block":Lcom/google/bitcoin/core/StoredBlock;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2606
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->getBalance()Ljava/math/BigInteger;

    move-result-object v6

    .line 2607
    .local v6, "balance":Ljava/math/BigInteger;
    sget-object v24, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v25, "post-reorg balance is {}"

    invoke-static {v6}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2609
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->queueOnReorganize()V

    .line 2610
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/bitcoin/core/Wallet;->insideReorg:Z

    .line 2611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/bitcoin/core/Wallet;->onWalletChangedSuppressions:I

    .line 2612
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V

    .line 2613
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/bitcoin/core/Wallet;->checkBalanceFuturesLocked(Ljava/math/BigInteger;)V

    .line 2614
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 2615
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Wallet;->saveLater()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2619
    return-void
.end method

.method protected saveLater()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

    .line 462
    .local v0, "files":Lcom/google/bitcoin/wallet/WalletFiles;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/google/bitcoin/wallet/WalletFiles;->saveLater()V

    .line 464
    :cond_0
    return-void
.end method

.method protected saveNow()V
    .locals 5

    .prologue
    .line 468
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

    .line 469
    .local v1, "files":Lcom/google/bitcoin/wallet/WalletFiles;
    if-eqz v1, :cond_0

    .line 471
    :try_start_0
    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletFiles;->saveNow()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Failed to save wallet to disk!"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    sget-object v2, Lcom/google/bitcoin/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 476
    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v2, :cond_0

    .line 477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "directory":Ljava/io/File;
    const-string v2, "wallet"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 343
    .local v1, "temp":Ljava/io/File;
    invoke-virtual {p0, v1, p1}, Lcom/google/bitcoin/core/Wallet;->saveToFile(Ljava/io/File;Ljava/io/File;)V

    .line 344
    return-void
.end method

.method public saveToFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 303
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/Wallet;->saveToFileStream(Ljava/io/OutputStream;)V

    .line 307
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 308
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 309
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    const/4 v2, 0x0

    .line 311
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->isWindows()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, "canonical":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    sget-object v4, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "Deleted temp file after failed save."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 333
    .end local v0    # "canonical":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 317
    .restart local v0    # "canonical":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    .end local v0    # "canonical":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_4
    sget-object v4, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "Failed whilst saving wallet"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    :goto_2
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 329
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    sget-object v5, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v6, "Deleted temp file after failed save."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_4
    throw v4

    .line 318
    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 319
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    :cond_6
    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    if-eqz v2, :cond_7

    .line 327
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 329
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    sget-object v4, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "Deleted temp file after failed save."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 321
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public saveToFileStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "f"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 489
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v0}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->writeWallet(Lcom/google/bitcoin/core/Wallet;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public sendCoins(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "request"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1852
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/Wallet;->sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    .line 1853
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 1854
    return-object v0
.end method

.method public sendCoins(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendResult;
    .locals 2
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .param p2, "to"    # Lcom/google/bitcoin/core/Address;
    .param p3, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-static {p2, p3}, Lcom/google/bitcoin/core/Wallet$SendRequest;->to(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v0

    .line 1789
    .local v0, "request":Lcom/google/bitcoin/core/Wallet$SendRequest;
    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Wallet;->sendCoins(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Wallet$SendResult;

    move-result-object v1

    return-object v1
.end method

.method public sendCoins(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Wallet$SendResult;
    .locals 3
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .param p2, "request"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1815
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/Wallet;->sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    .line 1816
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    new-instance v0, Lcom/google/bitcoin/core/Wallet$SendResult;

    invoke-direct {v0}, Lcom/google/bitcoin/core/Wallet$SendResult;-><init>()V

    .line 1817
    .local v0, "result":Lcom/google/bitcoin/core/Wallet$SendResult;
    iput-object v1, v0, Lcom/google/bitcoin/core/Wallet$SendResult;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 1823
    invoke-interface {p1, v1}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/google/bitcoin/core/Wallet$SendResult;->broadcastComplete:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1824
    return-object v0

    .line 1811
    .end local v0    # "result":Lcom/google/bitcoin/core/Wallet$SendResult;
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendCoins(Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Wallet$SendResult;
    .locals 3
    .param p1, "request"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->vTransactionBroadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 1838
    .local v0, "broadcaster":Lcom/google/bitcoin/core/TransactionBroadcaster;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "No transaction broadcaster is configured"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1839
    invoke-virtual {p0, v0, p1}, Lcom/google/bitcoin/core/Wallet;->sendCoins(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Wallet$SendResult;

    move-result-object v1

    return-object v1

    .line 1838
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Transaction;
    .locals 2
    .param p1, "request"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1757
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet;->completeTx(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 1758
    iget-object v0, p1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Wallet;->commitTx(Lcom/google/bitcoin/core/Transaction;)V

    .line 1759
    iget-object v0, p1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAcceptRiskyTransactions(Z)V
    .locals 2
    .param p1, "acceptRiskyTransactions"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    :try_start_0
    iput-boolean p1, p0, Lcom/google/bitcoin/core/Wallet;->acceptRiskyTransactions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    return-void

    .line 361
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setCoinSelector(Lcom/google/bitcoin/wallet/CoinSelector;)V
    .locals 2
    .param p1, "coinSelector"    # Lcom/google/bitcoin/wallet/CoinSelector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3155
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/CoinSelector;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3159
    return-void

    .line 3157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 3032
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet;->description:Ljava/lang/String;

    .line 3033
    return-void
.end method

.method public setKeyCrypter(Lcom/google/bitcoin/crypto/KeyCrypter;)V
    .locals 2
    .param p1, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2980
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2981
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2985
    return-void

    .line 2980
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2983
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setKeyRotationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3710
    iput-boolean p1, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationEnabled:Z

    .line 3711
    if-eqz p1, :cond_0

    .line 3712
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeRotateKeys()V

    .line 3713
    :cond_0
    return-void
.end method

.method public setKeyRotationTime(J)V
    .locals 3
    .param p1, "unixTimeSeconds"    # J

    .prologue
    .line 3700
    iput-wide p1, p0, Lcom/google/bitcoin/core/Wallet;->vKeyRotationTimestamp:J

    .line 3701
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3702
    sget-object v0, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Key rotation time set: {}"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3703
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet;->maybeRotateKeys()V

    .line 3705
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->saveNow()V

    .line 3706
    return-void
.end method

.method public setKeyRotationTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 3679
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Wallet;->setKeyRotationTime(J)V

    .line 3680
    return-void
.end method

.method public setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 2
    .param p1, "lastBlockSeenHash"    # Lcom/google/bitcoin/core/Sha256Hash;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2690
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenHash:Lcom/google/bitcoin/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2694
    return-void

    .line 2692
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setLastBlockSeenHeight(I)V
    .locals 2
    .param p1, "lastBlockSeenHeight"    # I

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2699
    :try_start_0
    iput p1, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2703
    return-void

    .line 2701
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setLastBlockSeenTimeSecs(J)V
    .locals 2
    .param p1, "timeSecs"    # J

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2708
    :try_start_0
    iput-wide p1, p0, Lcom/google/bitcoin/core/Wallet;->lastBlockSeenTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2712
    return-void

    .line 2710
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRiskAnalyzer(Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;)V
    .locals 2
    .param p1, "analyzer"    # Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet;->riskAnalyzer:Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setTransactionBroadcaster(Lcom/google/bitcoin/core/TransactionBroadcaster;)V
    .locals 9
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 3644
    new-array v3, v6, [Lcom/google/bitcoin/core/Transaction;

    .line 3645
    .local v3, "toBroadcast":[Lcom/google/bitcoin/core/Transaction;
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3647
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->vTransactionBroadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p1, :cond_1

    .line 3654
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3668
    :cond_0
    :goto_0
    return-void

    .line 3649
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet;->vTransactionBroadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3650
    if-nez p1, :cond_2

    .line 3654
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3652
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "toBroadcast":[Lcom/google/bitcoin/core/Transaction;
    check-cast v3, [Lcom/google/bitcoin/core/Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3654
    .restart local v3    # "toBroadcast":[Lcom/google/bitcoin/core/Transaction;
    iget-object v5, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3659
    move-object v0, v3

    .local v0, "arr$":[Lcom/google/bitcoin/core/Transaction;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 3660
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    sget-object v7, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v5, v7, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3665
    sget-object v5, Lcom/google/bitcoin/core/Wallet;->log:Lorg/slf4j/Logger;

    const-string v7, "New broadcaster so uploading waiting tx {}"

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3666
    invoke-interface {p1, v4}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3659
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3654
    .end local v0    # "arr$":[Lcom/google/bitcoin/core/Transaction;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "toBroadcast":[Lcom/google/bitcoin/core/Transaction;
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .restart local v0    # "arr$":[Lcom/google/bitcoin/core/Transaction;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "toBroadcast":[Lcom/google/bitcoin/core/Transaction;
    .restart local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    move v5, v6

    .line 3660
    goto :goto_2
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 3024
    iput p1, p0, Lcom/google/bitcoin/core/Wallet;->version:I

    .line 3025
    return-void
.end method

.method public shutdownAutosaveAndWait()V
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

    .line 451
    .local v0, "files":Lcom/google/bitcoin/wallet/WalletFiles;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet;->vFileManager:Lcom/google/bitcoin/wallet/WalletFiles;

    .line 452
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Auto saving not enabled."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 453
    invoke-virtual {v0}, Lcom/google/bitcoin/wallet/WalletFiles;->shutdownAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    return-void

    .line 452
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    .end local v0    # "files":Lcom/google/bitcoin/wallet/WalletFiles;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2337
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/bitcoin/core/Wallet;->toString(ZZZLcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZZZLcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;
    .locals 15
    .param p1, "includePrivateKeys"    # Z
    .param p2, "includeTransactions"    # Z
    .param p3, "includeExtensions"    # Z
    .param p4, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2351
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2353
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2354
    .local v3, "builder":Ljava/lang/StringBuilder;
    sget-object v11, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {p0, v11}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v4

    .line 2355
    .local v4, "estimatedBalance":Ljava/math/BigInteger;
    sget-object v11, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {p0, v11}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v2

    .line 2356
    .local v2, "availableBalance":Ljava/math/BigInteger;
    const-string v11, "Wallet containing %s %s (available: %s %s) in:%n"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToPlainString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "PND"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToPlainString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "PND"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    const-string v11, "  %d pending transactions%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    const-string v11, "  %d unspent transactions%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    const-string v11, "  %d spent transactions%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    const-string v11, "  %d dead transactions%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenTime()Ljava/util/Date;

    move-result-object v8

    .line 2365
    .local v8, "lastBlockSeenTime":Ljava/util/Date;
    if-nez v8, :cond_1

    const-string v9, "time unknown"

    .line 2366
    .local v9, "lastBlockSeenTimeStr":Ljava/lang/String;
    :goto_0
    const-string v11, "Last seen best block: %d (%s): %s%n"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-eqz v11, :cond_0

    .line 2369
    const-string v11, "Encryption: %s%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/bitcoin/core/Wallet;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    :cond_0
    const-string v11, "\nKeys:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->keychain:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/ECKey;

    .line 2374
    .local v7, "key":Lcom/google/bitcoin/core/ECKey;
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v7, v11}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    .line 2375
    .local v1, "address":Lcom/google/bitcoin/core/Address;
    const-string v11, "  addr:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    const-string v11, " hash160:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v11

    invoke-static {v11}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    if-eqz p1, :cond_2

    invoke-virtual {v7}, Lcom/google/bitcoin/core/ECKey;->toStringWithPrivate()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2420
    .end local v1    # "address":Lcom/google/bitcoin/core/Address;
    .end local v2    # "availableBalance":Ljava/math/BigInteger;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "estimatedBalance":Ljava/math/BigInteger;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v8    # "lastBlockSeenTime":Ljava/util/Date;
    .end local v9    # "lastBlockSeenTimeStr":Ljava/lang/String;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v11

    .line 2365
    .restart local v2    # "availableBalance":Ljava/math/BigInteger;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "estimatedBalance":Ljava/math/BigInteger;
    .restart local v8    # "lastBlockSeenTime":Ljava/util/Date;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 2380
    .restart local v1    # "address":Lcom/google/bitcoin/core/Address;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "key":Lcom/google/bitcoin/core/ECKey;
    .restart local v9    # "lastBlockSeenTimeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 2384
    .end local v1    # "address":Lcom/google/bitcoin/core/Address;
    .end local v7    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_3
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2385
    const-string v11, "\nWatched scripts:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/script/Script;

    .line 2387
    .local v10, "script":Lcom/google/bitcoin/script/Script;
    const-string v11, "  "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    invoke-virtual {v10}, Lcom/google/bitcoin/script/Script;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2393
    .end local v10    # "script":Lcom/google/bitcoin/script/Script;
    :cond_4
    if-eqz p2, :cond_8

    .line 2395
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 2396
    const-string v11, "\n>>> PENDING:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    sget-object v12, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v11, v0, v12}, Lcom/google/bitcoin/core/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/google/bitcoin/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 2399
    :cond_5
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 2400
    const-string v11, "\n>>> UNSPENT:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    sget-object v12, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v11, v0, v12}, Lcom/google/bitcoin/core/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/google/bitcoin/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 2403
    :cond_6
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 2404
    const-string v11, "\n>>> SPENT:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    sget-object v12, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v11, v0, v12}, Lcom/google/bitcoin/core/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/google/bitcoin/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 2407
    :cond_7
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 2408
    const-string v11, "\n>>> DEAD:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->dead:Ljava/util/Map;

    sget-object v12, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v11, v0, v12}, Lcom/google/bitcoin/core/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/google/bitcoin/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 2412
    :cond_8
    if-eqz p3, :cond_9

    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 2413
    const-string v11, "\n>>> EXTENSIONS:\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    iget-object v11, p0, Lcom/google/bitcoin/core/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/WalletExtension;

    .line 2415
    .local v5, "extension":Lcom/google/bitcoin/core/WalletExtension;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2418
    .end local v5    # "extension":Lcom/google/bitcoin/core/WalletExtension;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 2420
    iget-object v12, p0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v11
.end method
