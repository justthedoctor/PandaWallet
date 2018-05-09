.class public Lcom/google/bitcoin/core/Wallet$SendRequest;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendRequest"
.end annotation


# static fields
.field public static DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;


# instance fields
.field public aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

.field public changeAddress:Lcom/google/bitcoin/core/Address;

.field public coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

.field private completed:Z

.field public emptyWallet:Z

.field public ensureMinRequiredFee:Z

.field public fee:Ljava/math/BigInteger;

.field public feePerKb:Ljava/math/BigInteger;

.field public tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1631
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    .line 1590
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->changeAddress:Lcom/google/bitcoin/core/Address;

    .line 1609
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    .line 1625
    sget-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->ensureMinRequiredFee:Z

    .line 1649
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 1656
    iput-object v1, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    .line 1661
    return-void
.end method

.method static synthetic access$300(Lcom/google/bitcoin/core/Wallet$SendRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet$SendRequest;

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->completed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/bitcoin/core/Wallet$SendRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1561
    iput-boolean p1, p0, Lcom/google/bitcoin/core/Wallet$SendRequest;->completed:Z

    return p1
.end method

.method public static emptyWallet(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 4
    .param p0, "destination"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 1701
    new-instance v1, Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-direct {v1}, Lcom/google/bitcoin/core/Wallet$SendRequest;-><init>()V

    .line 1702
    .local v1, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v0

    .line 1703
    .local v0, "parameters":Lcom/google/bitcoin/core/NetworkParameters;
    const-string v2, "Address is for an unknown network"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v2, v1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 1705
    iget-object v2, v1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, p0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1706
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    .line 1707
    return-object v1
.end method

.method public static forTx(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 1
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 1695
    new-instance v0, Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-direct {v0}, Lcom/google/bitcoin/core/Wallet$SendRequest;-><init>()V

    .line 1696
    .local v0, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    iput-object p0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 1697
    return-object v0
.end method

.method public static to(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 3
    .param p0, "destination"    # Lcom/google/bitcoin/core/Address;
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 1670
    new-instance v1, Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-direct {v1}, Lcom/google/bitcoin/core/Wallet$SendRequest;-><init>()V

    .line 1671
    .local v1, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v0

    .line 1672
    .local v0, "parameters":Lcom/google/bitcoin/core/NetworkParameters;
    const-string v2, "Address is for an unknown network"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v2, v1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 1674
    iget-object v2, v1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2, p1, p0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1675
    return-object v1
.end method

.method public static to(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 2
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "destination"    # Lcom/google/bitcoin/core/ECKey;
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 1687
    new-instance v0, Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-direct {v0}, Lcom/google/bitcoin/core/Wallet$SendRequest;-><init>()V

    .line 1688
    .local v0, "req":Lcom/google/bitcoin/core/Wallet$SendRequest;
    new-instance v1, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v1, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 1689
    iget-object v1, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1, p2, p1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1690
    return-object v0
.end method
