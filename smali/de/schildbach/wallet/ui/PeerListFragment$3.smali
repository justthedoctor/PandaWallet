.class Lde/schildbach/wallet/ui/PeerListFragment$3;
.super Ljava/lang/Object;
.source "PeerListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/PeerListFragment;
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
    .line 216
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 220
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    check-cast p2, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;->getService()Lde/schildbach/wallet/service/BlockchainService;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/PeerListFragment;->access$502(Lde/schildbach/wallet/ui/PeerListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 222
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/PeerListFragment;->access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/PeerListFragment;->access$600(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 223
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/PeerListFragment;->access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 230
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$3;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/PeerListFragment;->access$502(Lde/schildbach/wallet/ui/PeerListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 231
    return-void
.end method
