.class public Lcom/google/bitcoin/testing/TestWithWallet;
.super Ljava/lang/Object;
.source "TestWithWallet.java"


# static fields
.field protected static final params:Lcom/google/bitcoin/core/NetworkParameters;


# instance fields
.field protected blockStore:Lcom/google/bitcoin/store/BlockStore;

.field protected chain:Lcom/google/bitcoin/core/BlockChain;

.field protected myAddress:Lcom/google/bitcoin/core/Address;

.field protected myKey:Lcom/google/bitcoin/core/ECKey;

.field protected wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/bitcoin/params/UnitTestParams;->get()Lcom/google/bitcoin/params/UnitTestParams;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected sendMoneyToWallet(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "type"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/bitcoin/testing/TestWithWallet;->sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method protected sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;
    .locals 4
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "type"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    if-nez p3, :cond_1

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/core/Wallet;->isPendingTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    return-object v1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithWallet;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/bitcoin/core/Transaction;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeBlock(Lcom/google/bitcoin/store/BlockStore;[Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;

    move-result-object v0

    .line 75
    .local v0, "bp":Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
    iget-object v1, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {p1, p2, v1, p3, v3}, Lcom/google/bitcoin/core/Wallet;->receiveFromBlock(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;I)V

    .line 76
    sget-object v1, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    if-ne p3, v1, :cond_0

    .line 77
    iget-object v1, v0, Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;->storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Wallet;->notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V

    goto :goto_0
.end method

.method protected sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "value"    # Ljava/math/BigInteger;
    .param p3, "toAddress"    # Lcom/google/bitcoin/core/Address;
    .param p4, "type"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-static {v0, p2, p3}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/bitcoin/testing/TestWithWallet;->sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method protected sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "value"    # Ljava/math/BigInteger;
    .param p3, "toPubKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p4, "type"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-static {v0, p2, p3}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/bitcoin/testing/TestWithWallet;->sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method protected sendMoneyToWallet(Ljava/math/BigInteger;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "type"    # Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->wallet:Lcom/google/bitcoin/core/Wallet;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/testing/TestWithWallet;->myAddress:Lcom/google/bitcoin/core/Address;

    invoke-static {v1, p1, v2}, Lcom/google/bitcoin/testing/FakeTxBuilder;->createFakeTx(Lcom/google/bitcoin/core/NetworkParameters;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/bitcoin/testing/TestWithWallet;->sendMoneyToWallet(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setUp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/google/bitcoin/utils/BriefLogFormatter;->init()V

    .line 53
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    .line 54
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v0}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 55
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->myKey:Lcom/google/bitcoin/core/ECKey;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->myAddress:Lcom/google/bitcoin/core/Address;

    .line 56
    new-instance v0, Lcom/google/bitcoin/core/Wallet;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 57
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithWallet;->myKey:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 58
    new-instance v0, Lcom/google/bitcoin/store/MemoryBlockStore;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/MemoryBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    .line 59
    new-instance v0, Lcom/google/bitcoin/core/BlockChain;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithWallet;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/testing/TestWithWallet;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lcom/google/bitcoin/testing/TestWithWallet;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/store/BlockStore;)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithWallet;->chain:Lcom/google/bitcoin/core/BlockChain;

    .line 60
    return-void
.end method

.method public tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    .line 64
    return-void
.end method
