.class public final Lde/schildbach/wallet/ui/PeerListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "PeerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;,
        Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;
    }
.end annotation


# static fields
.field private static final ID_PEER_LOADER:I = 0x0

.field private static final ID_REVERSE_DNS_LOADER:I = 0x1

.field private static final REFRESH_MS:J = 0x3e8L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final hostnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private final peerLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Peer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final reverseDnsLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lde/schildbach/wallet/service/BlockchainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/PeerListFragment;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->handler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->hostnames:Ljava/util/Map;

    .line 215
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/PeerListFragment$3;-><init>(Lde/schildbach/wallet/ui/PeerListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    .line 286
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/PeerListFragment$4;-><init>(Lde/schildbach/wallet/ui/PeerListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->peerLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 329
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$5;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/PeerListFragment$5;-><init>(Lde/schildbach/wallet/ui/PeerListFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->reverseDnsLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/PeerListFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->hostnames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->reverseDnsLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/PeerListFragment;)Lde/schildbach/wallet/service/BlockchainService;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->service:Lde/schildbach/wallet/service/BlockchainService;

    return-object v0
.end method

.method static synthetic access$502(Lde/schildbach/wallet/ui/PeerListFragment;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/service/BlockchainService;

    .prologue
    .line 63
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment;->service:Lde/schildbach/wallet/service/BlockchainService;

    return-object p1
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/PeerListFragment;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->peerLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$700()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lde/schildbach/wallet/ui/PeerListFragment;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/PeerListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PeerListFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const-class v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lde/schildbach/wallet/ui/PeerListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 97
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    check-cast p1, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 88
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PeerListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v0, Lde/schildbach/wallet/ui/PeerListFragment$1;

    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lde/schildbach/wallet/ui/PeerListFragment$1;-><init>(Lde/schildbach/wallet/ui/PeerListFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 156
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/PeerListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 210
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 212
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/ui/PeerListFragment$2;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/PeerListFragment$2;-><init>(Lde/schildbach/wallet/ui/PeerListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/PeerListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/PeerListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
