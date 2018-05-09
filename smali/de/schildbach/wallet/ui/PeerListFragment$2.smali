.class Lde/schildbach/wallet/ui/PeerListFragment$2;
.super Ljava/lang/Object;
.source "PeerListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/PeerListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PeerListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PeerListFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 171
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v3

    .line 172
    .local v3, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    .line 174
    .local v4, "loaderRunning":Z
    :goto_0
    if-nez v4, :cond_0

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 178
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Peer;

    .line 179
    .local v5, "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v0

    .line 181
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$000(Lde/schildbach/wallet/ui/PeerListFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v1, "args":Landroid/os/Bundle;
    const-string v7, "address"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 185
    iget-object v7, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/PeerListFragment;->access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v7

    iget-object v8, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/PeerListFragment;->access$300(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v8

    invoke-virtual {v7, v6, v1, v8}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 192
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v5    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_0
    iget-object v6, p0, Lde/schildbach/wallet/ui/PeerListFragment$2;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v6}, Lde/schildbach/wallet/ui/PeerListFragment;->access$400(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void

    .line 172
    .end local v4    # "loaderRunning":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 176
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v2    # "i":I
    .restart local v4    # "loaderRunning":Z
    .restart local v5    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
