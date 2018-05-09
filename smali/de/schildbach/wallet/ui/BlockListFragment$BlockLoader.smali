.class Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "BlockListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/StoredBlock;",
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

    .prologue
    .line 350
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 378
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader$1;-><init>(Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->context:Landroid/content/Context;

    .line 353
    iput-object p2, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->service:Lde/schildbach/wallet/service/BlockchainService;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;Lde/schildbach/wallet/ui/BlockListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lde/schildbach/wallet/service/BlockchainService;
    .param p3, "x2"    # Lde/schildbach/wallet/ui/BlockListFragment$1;

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;-><init>(Landroid/content/Context;Lde/schildbach/wallet/service/BlockchainService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->service:Lde/schildbach/wallet/service/BlockchainService;

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lde/schildbach/wallet/service/BlockchainService;->getRecentBlocks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 359
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 361
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    .line 370
    return-void
.end method
