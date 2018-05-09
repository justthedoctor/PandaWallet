.class Lde/schildbach/wallet/ui/BlockListFragment$5;
.super Ljava/lang/Object;
.source "BlockListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$500(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$600(Lde/schildbach/wallet/ui/BlockListFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/BlockListFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 449
    check-cast p2, Ljava/util/Set;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/BlockListFragment$5;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/Set;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;>;"
    .local p2, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0, p2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$802(Lde/schildbach/wallet/ui/BlockListFragment;Ljava/util/Set;)Ljava/util/Set;

    .line 461
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 462
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$800(Lde/schildbach/wallet/ui/BlockListFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 468
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$802(Lde/schildbach/wallet/ui/BlockListFragment;Ljava/util/Set;)Ljava/util/Set;

    .line 470
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$5;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 471
    return-void
.end method
