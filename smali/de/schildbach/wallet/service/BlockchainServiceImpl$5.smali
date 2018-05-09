.class Lde/schildbach/wallet/service/BlockchainServiceImpl$5;
.super Ljava/lang/Thread;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;->maybeRotateKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

.field final synthetic val$chainHead:Lcom/google/bitcoin/core/StoredBlock;

.field final synthetic val$wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Wallet;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    iput-object p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->val$chainHead:Lcom/google/bitcoin/core/StoredBlock;

    iput-object p3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 936
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->val$chainHead:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v4}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)I

    move-result v4

    if-ge v3, v4, :cond_0

    move v0, v1

    .line 938
    .local v0, "replaying":Z
    :goto_0
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$5;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/google/bitcoin/core/Wallet;->setKeyRotationEnabled(Z)V

    .line 939
    return-void

    .end local v0    # "replaying":Z
    :cond_0
    move v0, v2

    .line 936
    goto :goto_0

    .restart local v0    # "replaying":Z
    :cond_1
    move v1, v2

    .line 938
    goto :goto_1
.end method
