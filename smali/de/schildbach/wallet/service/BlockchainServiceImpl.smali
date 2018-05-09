.class public Lde/schildbach/wallet/service/BlockchainServiceImpl;
.super Landroid/app/Service;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Lde/schildbach/wallet/service/BlockchainService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;,
        Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;,
        Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;
    }
.end annotation


# static fields
.field private static final APPWIDGET_THROTTLE_MS:J = 0x3e8L

.field private static final IDLE_BLOCK_TIMEOUT_MIN:I = 0x2

.field private static final IDLE_TRANSACTION_TIMEOUT_MIN:I = 0x9

.field private static final MAX_HISTORY_SIZE:I

.field private static final MIN_COLLECT_HISTORY:I = 0x2

.field private static final NOTIFICATION_ID_COINS_RECEIVED:I = 0x1

.field private static final NOTIFICATION_ID_CONNECTED:I

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private application:Lde/schildbach/wallet/WalletApplication;

.field private bestChainHeightEver:I

.field private blockChain:Lcom/google/bitcoin/core/BlockChain;

.field private blockChainFile:Ljava/io/File;

.field private blockStore:Lcom/google/bitcoin/store/BlockStore;

.field private final blockchainDownloadListener:Lcom/google/bitcoin/core/PeerEventListener;

.field private config:Lde/schildbach/wallet/Configuration;

.field private final connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private final delayHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final mBinder:Landroid/os/IBinder;

.field private nm:Landroid/app/NotificationManager;

.field private notificationAccumulatedAmount:Ljava/math/BigInteger;

.field private final notificationAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Address;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCount:I

.field private peerConnectivityListener:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

.field private peerGroup:Lcom/google/bitcoin/core/PeerGroup;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private resetBlockchainOnShutdown:Z

.field private serviceCreatedAt:J

.field private final tickReceiver:Landroid/content/BroadcastReceiver;

.field private transactionsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private final walletEventListener:Lcom/google/bitcoin/core/WalletEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    const/16 v0, 0x9

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->MAX_HISTORY_SIZE:I

    .line 127
    const-class v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->handler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->delayHandler:Landroid/os/Handler;

    .line 113
    iput v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    .line 114
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAccumulatedAmount:Ljava/math/BigInteger;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAddresses:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->transactionsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    iput-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->resetBlockchainOnShutdown:Z

    .line 129
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;J)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->walletEventListener:Lcom/google/bitcoin/core/WalletEventListener;

    .line 321
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockchainDownloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    .line 352
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$4;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->tickReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->transactionsReceived:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChain:Lcom/google/bitcoin/core/BlockChain;

    return-object v0
.end method

.method static synthetic access$1000(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->sendBroadcastBlockchainState(I)V

    return-void
.end method

.method static synthetic access$1100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    return-object v0
.end method

.method static synthetic access$1302(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/core/PeerGroup;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;
    .param p1, "x1"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 93
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    return-object p1
.end method

.method static synthetic access$1400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerConnectivityListener:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    return-object v0
.end method

.method static synthetic access$1600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerEventListener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockchainDownloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->MAX_HISTORY_SIZE:I

    return v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->bestChainHeightEver:I

    return v0
.end method

.method static synthetic access$202(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->bestChainHeightEver:I

    return p1
.end method

.method static synthetic access$300(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Address;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notifyCoinsReceived(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V

    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->sendBroadcastPeerState(I)V

    return-void
.end method

.method static synthetic access$800(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/service/BlockchainServiceImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->delayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private maybeRotateKeys()V
    .locals 3

    .prologue
    .line 926
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    .line 927
    .local v1, "wallet":Lcom/google/bitcoin/core/Wallet;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->setKeyRotationEnabled(Z)V

    .line 929
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChain:Lcom/google/bitcoin/core/BlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/BlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 931
    .local v0, "chainHead":Lcom/google/bitcoin/core/StoredBlock;
    new-instance v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;

    invoke-direct {v2, p0, v0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Wallet;)V

    invoke-virtual {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->start()V

    .line 941
    return-void
.end method

.method private notifyCoinsReceived(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V
    .locals 23
    .param p1, "from"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->nm:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/NotificationManager;->cancel(I)V

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAccumulatedAmount:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAccumulatedAmount:Ljava/math/BigInteger;

    .line 177
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAddresses:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAddresses:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v6

    .line 181
    .local v6, "btcPrecision":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v8

    .line 182
    .local v8, "btcShift":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "btcPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lde/schildbach/wallet/WalletApplication;->applicationPackageFlavor()Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "packageFlavor":Ljava/lang/String;
    if-eqz v14, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "msgSuffix":Ljava/lang/String;
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0b00e9

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    invoke-static {v0, v6, v8}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "tickerMsg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0b00e9

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAccumulatedAmount:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6, v8}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "msg":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v15, "text":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAddresses:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Address;

    .line 198
    .local v4, "address":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 199
    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "addressStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "label":Ljava/lang/String;
    if-eqz v10, :cond_4

    .end local v10    # "label":Ljava/lang/String;
    :goto_2
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    .end local v4    # "address":Lcom/google/bitcoin/core/Address;
    .end local v5    # "addressStr":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "msgSuffix":Ljava/lang/String;
    .end local v15    # "text":Ljava/lang/StringBuilder;
    .end local v16    # "tickerMsg":Ljava/lang/String;
    :cond_3
    const-string v12, ""

    goto/16 :goto_0

    .restart local v4    # "address":Lcom/google/bitcoin/core/Address;
    .restart local v5    # "addressStr":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "label":Ljava/lang/String;
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "msgSuffix":Ljava/lang/String;
    .restart local v15    # "text":Ljava/lang/StringBuilder;
    .restart local v16    # "tickerMsg":Ljava/lang/String;
    :cond_4
    move-object v10, v5

    .line 203
    goto :goto_2

    .line 206
    .end local v4    # "address":Lcom/google/bitcoin/core/Address;
    .end local v5    # "addressStr":Ljava/lang/String;
    .end local v10    # "label":Ljava/lang/String;
    :cond_5
    new-instance v13, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v13, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    const v17, 0x7f0200a6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 208
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 209
    invoke-virtual {v13, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 210
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 211
    invoke-virtual {v13, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 212
    :cond_6
    const/16 v17, 0x0

    new-instance v18, Landroid/content/Intent;

    const-class v19, Lde/schildbach/wallet/ui/WalletActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 215
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "android.resource://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/high16 v18, 0x7f050000

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->nm:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    return-void

    .line 213
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    move/from16 v17, v0

    goto :goto_3
.end method

.method private removeBroadcastBlockchainState()V
    .locals 2

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 898
    return-void
.end method

.method private removeBroadcastPeerState()V
    .locals 2

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->ACTION_PEER_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 879
    return-void
.end method

.method private sendBroadcastBlockchainState(I)V
    .locals 5
    .param p1, "download"    # I

    .prologue
    .line 883
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChain:Lcom/google/bitcoin/core/BlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/BlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v1

    .line 885
    .local v1, "chainHead":Lcom/google/bitcoin/core/StoredBlock;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lde/schildbach/wallet/service/BlockchainServiceImpl;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v2, "best_chain_date"

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 888
    const-string v2, "best_chain_height"

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    const-string v3, "replaying"

    invoke-virtual {v1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    iget v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->bestChainHeightEver:I

    if-ge v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    const-string v2, "download"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 893
    return-void

    .line 889
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendBroadcastPeerState(I)V
    .locals 2
    .param p1, "numPeers"    # I

    .prologue
    .line 870
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->ACTION_PEER_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v1, "num_peers"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 874
    return-void
.end method


# virtual methods
.method public getConnectedPeers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentBlocks(I)Ljava/util/List;
    .locals 3
    .param p1, "maxBlocks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    .local v1, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    :try_start_0
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChain:Lcom/google/bitcoin/core/BlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/BlockChain;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 850
    .local v0, "block":Lcom/google/bitcoin/core/StoredBlock;
    :goto_0
    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 865
    .end local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    :cond_0
    :goto_1
    return-object v1

    .line 857
    .restart local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/core/StoredBlock;->getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 860
    .end local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public notifyWidgets()V
    .locals 8

    .prologue
    .line 902
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 904
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v6, Lde/schildbach/wallet/WalletBalanceWidgetProvider;

    invoke-direct {v3, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    .local v3, "providerName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 910
    .local v0, "appWidgetIds":[I
    array-length v6, v0

    if-lez v6, :cond_0

    .line 912
    iget-object v6, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v6}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v4

    .line 913
    .local v4, "wallet":Lcom/google/bitcoin/core/Wallet;
    sget-object v6, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v4, v6}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v2

    .line 915
    .local v2, "balance":Ljava/math/BigInteger;
    invoke-static {p0, v1, v0, v2}, Lde/schildbach/wallet/WalletBalanceWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v0    # "appWidgetIds":[I
    .end local v2    # "balance":Ljava/math/BigInteger;
    .end local v4    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_0
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v5

    .line 920
    .local v5, "x":Ljava/lang/RuntimeException;
    sget-object v6, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v7, "cannot update app widgets"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 619
    sget-object v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v1, ".onBind()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->serviceCreatedAt:J

    .line 636
    sget-object v10, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v11, ".onCreate()"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 638
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 640
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->nm:Landroid/app/NotificationManager;

    .line 642
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " blockchain sync"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "lockName":Ljava/lang/String;
    const-string v10, "power"

    invoke-virtual {p0, v10}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 645
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v10, 0x1

    invoke-virtual {v7, v10, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lde/schildbach/wallet/WalletApplication;

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    .line 648
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v10}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v10

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    .line 649
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v10}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v8

    .line 651
    .local v8, "wallet":Lcom/google/bitcoin/core/Wallet;
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v10}, Lde/schildbach/wallet/Configuration;->getBestChainHeightEver()I

    move-result v10

    iput v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->bestChainHeightEver:I

    .line 653
    new-instance v10, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    invoke-direct {v10, p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerConnectivityListener:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    .line 655
    invoke-direct {p0, v13}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->sendBroadcastPeerState(I)V

    .line 657
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 658
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v10, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v10, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v4}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 663
    new-instance v10, Ljava/io/File;

    const-string v11, "blockstore"

    invoke-virtual {p0, v11, v13}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    sget-object v12, Lde/schildbach/wallet/Constants;->BLOCKCHAIN_FILENAME:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChainFile:Ljava/io/File;

    .line 664
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChainFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    .line 666
    .local v0, "blockChainFileExists":Z
    if-nez v0, :cond_0

    .line 668
    sget-object v10, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "blockchain does not exist, resetting wallet"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v8, v13}, Lcom/google/bitcoin/core/Wallet;->clearTransactions(I)V

    .line 671
    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHeight(I)V

    .line 672
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 677
    :cond_0
    :try_start_0
    new-instance v10, Lcom/google/bitcoin/store/SPVBlockStore;

    sget-object v11, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v12, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChainFile:Ljava/io/File;

    invoke-direct {v10, v11, v12}, Lcom/google/bitcoin/store/SPVBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;)V

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    .line 678
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v10}, Lcom/google/bitcoin/store/BlockStore;->getChainHead()Lcom/google/bitcoin/core/StoredBlock;

    .line 680
    invoke-virtual {v8}, Lcom/google/bitcoin/core/Wallet;->getEarliestKeyCreationTime()J
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 682
    .local v2, "earliestKeyCreationTime":J
    if-nez v0, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    .line 686
    :try_start_1
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    sget-object v11, Lde/schildbach/wallet/Constants;->CHECKPOINTS_FILENAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 687
    .local v1, "checkpointsInputStream":Ljava/io/InputStream;
    sget-object v10, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v11, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-static {v10, v1, v11, v2, v3}, Lcom/google/bitcoin/core/CheckpointManager;->checkpoint(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/InputStream;Lcom/google/bitcoin/store/BlockStore;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    .end local v1    # "checkpointsInputStream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    sget-object v10, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "using "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 708
    :try_start_2
    new-instance v10, Lcom/google/bitcoin/core/BlockChain;

    sget-object v11, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v12, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-direct {v10, v11, v8, v12}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/store/BlockStore;)V

    iput-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChain:Lcom/google/bitcoin/core/BlockChain;
    :try_end_2
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_2

    .line 715
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v10}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v10

    iget-object v11, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->walletEventListener:Lcom/google/bitcoin/core/WalletEventListener;

    sget-object v12, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 717
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->tickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.TIME_TICK"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v11}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->maybeRotateKeys()V

    .line 720
    return-void

    .line 689
    :catch_0
    move-exception v9

    .line 691
    .local v9, "x":Ljava/io/IOException;
    :try_start_3
    sget-object v10, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "problem reading checkpoints, continuing without"

    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 695
    .end local v2    # "earliestKeyCreationTime":J
    .end local v9    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 697
    .local v9, "x":Lcom/google/bitcoin/store/BlockStoreException;
    iget-object v10, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChainFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 699
    const-string v6, "blockstore cannot be created"

    .line 700
    .local v6, "msg":Ljava/lang/String;
    sget-object v10, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "blockstore cannot be created"

    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    new-instance v10, Ljava/lang/Error;

    const-string v11, "blockstore cannot be created"

    invoke-direct {v10, v11, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 710
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "x":Lcom/google/bitcoin/store/BlockStoreException;
    .restart local v2    # "earliestKeyCreationTime":J
    :catch_2
    move-exception v9

    .line 712
    .restart local v9    # "x":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v10, Ljava/lang/Error;

    const-string v11, "blockchain cannot be created"

    invoke-direct {v10, v11, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 768
    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v2, ".onDestroy()"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->tickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 774
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->walletEventListener:Lcom/google/bitcoin/core/WalletEventListener;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 776
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerConnectivityListener:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/PeerGroup;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 779
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/PeerGroup;->removeWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 780
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->stopAndWait()Lcom/google/common/util/concurrent/Service$State;

    .line 782
    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "peergroup stopped"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 785
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerConnectivityListener:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    invoke-virtual {v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->stop()V

    .line 787
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->removeBroadcastPeerState()V

    .line 790
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->removeBroadcastBlockchainState()V

    .line 792
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->config:Lde/schildbach/wallet/Configuration;

    iget v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->bestChainHeightEver:I

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/Configuration;->setBestChainHeightEver(I)V

    .line 794
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->delayHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 798
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-interface {v1}, Lcom/google/bitcoin/store/BlockStore;->close()V
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->saveWallet()V

    .line 807
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "wakelock still held, releasing"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 813
    :cond_1
    iget-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->resetBlockchainOnShutdown:Z

    if-eqz v1, :cond_2

    .line 815
    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "removing blockchain"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->blockChainFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 819
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 821
    sget-object v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service was up for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->serviceCreatedAt:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 822
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 802
    .local v0, "x":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 827
    sget-object v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "low memory detected, stopping service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->stopSelf()V

    .line 830
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 725
    sget-object v4, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service start command: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "android.intent.extra.ALARM_COUNT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (alarm count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "android.intent.extra.ALARM_COUNT"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_CANCEL_COINS_RECEIVED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 732
    iput v7, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationCount:I

    .line 733
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAccumulatedAmount:Ljava/math/BigInteger;

    .line 734
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notificationAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 736
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 762
    :cond_0
    :goto_1
    const/4 v3, 0x2

    return v3

    .line 725
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 738
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_RESET_BLOCKCHAIN:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 740
    sget-object v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v4, "will remove blockchain on service shutdown"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 742
    iput-boolean v8, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->resetBlockchainOnShutdown:Z

    .line 744
    invoke-virtual {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->stopSelf()V

    goto :goto_1

    .line 746
    :cond_3
    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BROADCAST_TRANSACTION:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    new-instance v1, Lcom/google/bitcoin/core/Sha256Hash;

    const-string v3, "hash"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 749
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v3}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v2

    .line 751
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    if-eqz v3, :cond_4

    .line 753
    sget-object v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 754
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v3, v2}, Lcom/google/bitcoin/core/PeerGroup;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 758
    :cond_4
    sget-object v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peergroup not available, not broadcasting transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 627
    sget-object v0, Lde/schildbach/wallet/service/BlockchainServiceImpl;->log:Lorg/slf4j/Logger;

    const-string v1, ".onUnbind()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 629
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
