.class public final Lde/schildbach/wallet/ui/WalletBalanceLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "WalletBalanceLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final wallet:Lcom/google/bitcoin/core/Wallet;

.field private final walletChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lde/schildbach/wallet/ui/WalletBalanceLoader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceLoader$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/WalletBalanceLoader$1;-><init>(Lde/schildbach/wallet/ui/WalletBalanceLoader;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->walletChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    .line 51
    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 52
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceLoader;->loadInBackground()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    sget-object v1, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 59
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->walletChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 61
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceLoader;->forceLoad()V

    .line 62
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->walletChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader;->walletChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->removeCallbacks()V

    .line 70
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    .line 71
    return-void
.end method
