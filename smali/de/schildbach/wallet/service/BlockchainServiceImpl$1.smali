.class Lde/schildbach/wallet/service/BlockchainServiceImpl$1;
.super Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 130
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 140
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$000(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/BlockChain;->getBestChainHeight()I

    move-result v3

    .line 144
    .local v3, "bestChainHeight":I
    invoke-static {p2}, Lde/schildbach/wallet/util/WalletUtils;->getFirstFromAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;

    move-result-object v5

    .line 145
    .local v5, "from":Lcom/google/bitcoin/core/Address;
    invoke-virtual {p2, p1}, Lcom/google/bitcoin/core/Transaction;->getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v2

    .line 146
    .local v2, "amount":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v4

    .line 148
    .local v4, "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/service/BlockchainServiceImpl$1$1;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$1;Ljava/math/BigInteger;ILcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;Lcom/google/bitcoin/core/Address;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 166
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$000(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 167
    return-void
.end method

.method public onThrottledWalletChanged()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$1;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-virtual {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->notifyWidgets()V

    .line 135
    return-void
.end method
