.class Lde/schildbach/wallet/ui/PeerListFragment$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PeerListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PeerListFragment;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$5;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    const-string v1, "address"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 336
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v1, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;

    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment$5;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/PeerListFragment;->access$800(Lde/schildbach/wallet/ui/PeerListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;-><init>(Landroid/content/Context;Ljava/net/InetAddress;)V

    return-object v1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/PeerListFragment$5;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/String;)V
    .locals 3
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    check-cast p1, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    iget-object v0, p1, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;->address:Ljava/net/InetAddress;

    .line 343
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$5;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/PeerListFragment;->access$000(Lde/schildbach/wallet/ui/PeerListFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$5;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/PeerListFragment;->access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 346
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    return-void
.end method
