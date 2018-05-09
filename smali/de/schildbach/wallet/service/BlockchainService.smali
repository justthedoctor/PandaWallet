.class public interface abstract Lde/schildbach/wallet/service/BlockchainService;
.super Ljava/lang/Object;
.source "BlockchainService.java"


# static fields
.field public static final ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

.field public static final ACTION_BLOCKCHAIN_STATE_BEST_CHAIN_DATE:Ljava/lang/String; = "best_chain_date"

.field public static final ACTION_BLOCKCHAIN_STATE_BEST_CHAIN_HEIGHT:Ljava/lang/String; = "best_chain_height"

.field public static final ACTION_BLOCKCHAIN_STATE_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final ACTION_BLOCKCHAIN_STATE_DOWNLOAD_NETWORK_PROBLEM:I = 0x2

.field public static final ACTION_BLOCKCHAIN_STATE_DOWNLOAD_OK:I = 0x0

.field public static final ACTION_BLOCKCHAIN_STATE_DOWNLOAD_STORAGE_PROBLEM:I = 0x1

.field public static final ACTION_BLOCKCHAIN_STATE_REPLAYING:Ljava/lang/String; = "replaying"

.field public static final ACTION_BROADCAST_TRANSACTION:Ljava/lang/String;

.field public static final ACTION_BROADCAST_TRANSACTION_HASH:Ljava/lang/String; = "hash"

.field public static final ACTION_CANCEL_COINS_RECEIVED:Ljava/lang/String;

.field public static final ACTION_PEER_STATE:Ljava/lang/String;

.field public static final ACTION_PEER_STATE_NUM_PEERS:Ljava/lang/String; = "num_peers"

.field public static final ACTION_RESET_BLOCKCHAIN:Ljava/lang/String;

.field public static final ACTION_STOP_SERVICE:Ljava/lang/String; = "stop_service"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/schildbach/wallet/service/BlockchainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".peer_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainService;->ACTION_PEER_STATE:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/schildbach/wallet/service/BlockchainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".blockchain_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/schildbach/wallet/service/BlockchainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cancel_coins_received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainService;->ACTION_CANCEL_COINS_RECEIVED:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/schildbach/wallet/service/BlockchainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reset_blockchain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainService;->ACTION_RESET_BLOCKCHAIN:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/schildbach/wallet/service/BlockchainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".broadcast_transaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BROADCAST_TRANSACTION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getConnectedPeers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract getRecentBlocks(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end method
