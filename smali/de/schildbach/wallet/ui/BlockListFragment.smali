.class public final Lde/schildbach/wallet/ui/BlockListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "BlockListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/BlockListFragment$TransactionsLoader;,
        Lde/schildbach/wallet/ui/BlockListFragment$BlockLoader;,
        Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;
    }
.end annotation


# static fields
.field private static final ID_BLOCK_LOADER:I = 0x0

.field private static final ID_TRANSACTION_LOADER:I = 0x1

.field private static final MAX_BLOCKS:I = 0x20

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private final blockLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;>;"
        }
    .end annotation
.end field

.field private config:Lde/schildbach/wallet/Configuration;

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private service:Lde/schildbach/wallet/service/BlockchainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final tickReceiver:Landroid/content/BroadcastReceiver;

.field private final transactionLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private transactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/BlockListFragment;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 204
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/BlockListFragment$2;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    .line 223
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/BlockListFragment$3;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->tickReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/BlockListFragment$4;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->blockLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 448
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$5;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/BlockListFragment$5;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->transactionLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/service/BlockchainService;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->service:Lde/schildbach/wallet/service/BlockchainService;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lde/schildbach/wallet/ui/BlockListFragment;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$102(Lde/schildbach/wallet/ui/BlockListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/service/BlockchainService;

    .prologue
    .line 77
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->service:Lde/schildbach/wallet/service/BlockchainService;

    return-object p1
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->blockLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/BlockListFragment;)Landroid/support/v4/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/BlockListFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/BlockListFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->transactions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$802(Lde/schildbach/wallet/ui/BlockListFragment;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 77
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->transactions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$900(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const-class v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lde/schildbach/wallet/ui/BlockListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 115
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    check-cast p1, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 103
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 104
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 105
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 106
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/BlockListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;Lde/schildbach/wallet/ui/BlockListFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    .line 123
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/BlockListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 154
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 159
    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    invoke-virtual {v1, p3}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->getItem(I)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 161
    .local v0, "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v2, Lde/schildbach/wallet/ui/BlockListFragment$1;

    invoke-direct {v2, p0, v0}, Lde/schildbach/wallet/ui/BlockListFragment$1;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;Lcom/google/bitcoin/core/StoredBlock;)V

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 143
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->tickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 131
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment;->tickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/BlockListFragment;->transactionLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 135
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment;->adapter:Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method
