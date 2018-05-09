.class public abstract Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "AbstractOnDemandServiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected processDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 6
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v3

    invoke-virtual {v3}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    .line 39
    .local v1, "wallet":Lcom/google/bitcoin/core/Wallet;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/Wallet;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    .line 43
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    .line 44
    .local v0, "application":Lde/schildbach/wallet/WalletApplication;
    invoke-virtual {v0, p1}, Lde/schildbach/wallet/WalletApplication;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 55
    .end local v0    # "application":Lde/schildbach/wallet/WalletApplication;
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v3, "Direct transaction is not relevant for you."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->longToast(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 53
    .local v2, "x":Lcom/google/bitcoin/core/VerificationException;
    const-string v3, "Direct transaction is not valid."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->longToast(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
