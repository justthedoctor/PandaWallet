.class Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TRANSACTION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$2;

    invoke-direct {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$2;-><init>()V

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->TRANSACTION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "direction"    # Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 387
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 434
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;

    const-wide/16 v2, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;-><init>(Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;JZZZ)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    .line 389
    iput-object p2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 390
    iput-object p3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    .line 391
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;Lde/schildbach/wallet/ui/TransactionsListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "x2"    # Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    .param p4, "x3"    # Lde/schildbach/wallet/ui/TransactionsListFragment$1;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 9
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
    const/4 v6, 0x1

    .line 416
    iget-object v7, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7, v6}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v4

    .line 417
    .local v4, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .local v0, "filteredTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;

    .line 421
    .local v5, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v7, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5, v7}, Lcom/google/bitcoin/core/Transaction;->getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_3

    move v3, v6

    .line 422
    .local v3, "sent":Z
    :goto_1
    invoke-static {v5}, Lde/schildbach/wallet/util/WalletUtils;->isInternal(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v2

    .line 424
    .local v2, "isInternal":Z
    iget-object v7, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v8, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-ne v7, v8, :cond_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v7, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v8, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-ne v7, v8, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 426
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    .end local v2    # "isInternal":Z
    .end local v3    # "sent":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 429
    .end local v5    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    sget-object v6, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->TRANSACTION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 431
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 396
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 398
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 399
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->onReorganize(Lcom/google/bitcoin/core/Wallet;)V

    .line 401
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->forceLoad()V

    .line 402
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 408
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->transactionAddRemoveListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->removeCallbacks()V

    .line 410
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    .line 411
    return-void
.end method
