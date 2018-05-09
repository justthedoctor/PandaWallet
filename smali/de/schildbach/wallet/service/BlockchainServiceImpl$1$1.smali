.class Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;
.super Ljava/lang/Object;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$1;

.field final synthetic val$amount:Ljava/math/BigInteger;

.field final synthetic val$bestChainHeight:I

.field final synthetic val$confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field final synthetic val$from:Lcom/google/bitcoin/core/Address;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$1;Ljava/math/BigInteger;ILcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;Lcom/google/bitcoin/core/Address;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$1;

    iput-object p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$amount:Ljava/math/BigInteger;

    iput p3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$bestChainHeight:I

    iput-object p4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    iput-object p5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$from:Lcom/google/bitcoin/core/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    iget-object v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$amount:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    .line 154
    .local v0, "isReceived":Z
    :goto_0
    iget v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$bestChainHeight:I

    iget-object v6, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$1;

    iget-object v6, v6, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v6}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)I

    move-result v6

    if-ge v5, v6, :cond_2

    move v2, v3

    .line 155
    .local v2, "replaying":Z
    :goto_1
    iget-object v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$confidenceType:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v5, v6, :cond_3

    if-eqz v2, :cond_3

    move v1, v3

    .line 157
    .local v1, "isReplayedTx":Z
    :goto_2
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 158
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$1;

    iget-object v3, v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$from:Lcom/google/bitcoin/core/Address;

    iget-object v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;->val$amount:Ljava/math/BigInteger;

    invoke-static {v3, v4, v5}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$300(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V

    .line 159
    :cond_0
    return-void

    .end local v0    # "isReceived":Z
    .end local v1    # "isReplayedTx":Z
    .end local v2    # "replaying":Z
    :cond_1
    move v0, v4

    .line 153
    goto :goto_0

    .restart local v0    # "isReceived":Z
    :cond_2
    move v2, v4

    .line 154
    goto :goto_1

    .restart local v2    # "replaying":Z
    :cond_3
    move v1, v4

    .line 155
    goto :goto_2
.end method
