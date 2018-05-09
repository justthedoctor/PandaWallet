.class Lde/schildbach/wallet/ui/BlockListFragment$4;
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
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/StoredBlock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

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
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$500(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$100(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/service/BlockchainService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;-><init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;Lde/schildbach/wallet/ui/BlockListFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 396
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/BlockListFragment$4;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;>;"
    .local p2, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;"
    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->replace(Ljava/util/Collection;)V

    .line 408
    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$300(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 409
    .local v0, "transactionLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 411
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/StoredBlock;>;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$4;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->clear()V

    .line 417
    return-void
.end method
