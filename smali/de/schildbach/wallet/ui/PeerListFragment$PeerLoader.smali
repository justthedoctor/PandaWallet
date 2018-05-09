.class Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PeerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/PeerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeerLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/Peer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private service:Lde/schildbach/wallet/service/BlockchainService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lde/schildbach/wallet/service/BlockchainService;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;-><init>(Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->context:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->service:Lde/schildbach/wallet/service/BlockchainService;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;Lde/schildbach/wallet/ui/PeerListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lde/schildbach/wallet/service/BlockchainService;
    .param p3, "x2"    # Lde/schildbach/wallet/ui/PeerListFragment$1;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;-><init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->service:Lde/schildbach/wallet/service/BlockchainService;

    invoke-interface {v0}, Lde/schildbach/wallet/service/BlockchainService;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 250
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 252
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_PEER_STATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    .line 261
    return-void
.end method
