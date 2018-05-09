.class Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "BlockListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 428
    iput-object p2, p0, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/BlockListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "x2"    # Lde/schildbach/wallet/ui/BlockListFragment$1;

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;->loadInBackground()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v5, p0, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;->wallet:Lcom/google/bitcoin/core/Wallet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v3

    .line 436
    .local v3, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 437
    .local v1, "filteredTransactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Transaction;

    .line 439
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v0

    .line 440
    .local v0, "appearsIn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 441
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    .end local v0    # "appearsIn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    return-object v1
.end method
