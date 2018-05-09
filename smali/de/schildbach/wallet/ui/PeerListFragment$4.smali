.class Lde/schildbach/wallet/ui/PeerListFragment$4;
.super Ljava/lang/Object;
.source "PeerListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/PeerListFragment;
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
        "Lcom/google/bitcoin/core/Peer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PeerListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PeerListFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

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
            "Lcom/google/bitcoin/core/Peer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/PeerListFragment;->access$800(Lde/schildbach/wallet/ui/PeerListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/PeerListFragment;->access$500(Lde/schildbach/wallet/ui/PeerListFragment;)Lde/schildbach/wallet/service/BlockchainService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;-><init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;Lde/schildbach/wallet/ui/PeerListFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/PeerListFragment$4;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/google/bitcoin/core/Peer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;>;"
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;"
    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 299
    if-eqz p2, :cond_0

    .line 300
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer;

    .line 301
    .local v1, "peer":Lcom/google/bitcoin/core/Peer;
    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "peer":Lcom/google/bitcoin/core/Peer;
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
            "Lcom/google/bitcoin/core/Peer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$4;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 308
    return-void
.end method
