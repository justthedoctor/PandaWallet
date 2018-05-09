.class Lde/schildbach/wallet/ui/BlockListFragment$2;
.super Ljava/lang/Object;
.source "BlockListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 209
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    check-cast p2, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;->getService()Lde/schildbach/wallet/service/BlockchainService;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$102(Lde/schildbach/wallet/ui/BlockListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 211
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$300(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/BlockListFragment;->access$200(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 212
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 217
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$300(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 219
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$2;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$102(Lde/schildbach/wallet/ui/BlockListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 220
    return-void
.end method
