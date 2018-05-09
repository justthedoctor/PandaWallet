.class public final Lde/schildbach/wallet/ui/WalletAddressesFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "WalletAddressesFragment.java"


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AddressBookActivity;

.field private adapter:Lde/schildbach/wallet/ui/WalletAddressesAdapter;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private config:Lde/schildbach/wallet/Configuration;

.field private final contentObserver:Landroid/database/ContentObserver;

.field private contentResolver:Landroid/content/ContentResolver;

.field private final handler:Landroid/os/Handler;

.field private wallet:Lcom/google/bitcoin/core/Wallet;

.field private final walletListener:Lcom/google/bitcoin/core/WalletEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->handler:Landroid/os/Handler;

    .line 289
    new-instance v0, Lde/schildbach/wallet/ui/WalletAddressesFragment$3;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$3;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentObserver:Landroid/database/ContentObserver;

    .line 298
    new-instance v0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->walletListener:Lcom/google/bitcoin/core/WalletEventListener;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/AddressBookActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/WalletAddressesAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->adapter:Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->updateView()V

    return-void
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleAddAddress()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    invoke-direct {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 156
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 157
    const v1, 0x7f0b00f0

    new-instance v2, Lde/schildbach/wallet/ui/WalletAddressesFragment$1;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment$1;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f0b00ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 283
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 284
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 83
    check-cast v0, Lde/schildbach/wallet/ui/AddressBookActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 85
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 86
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentResolver:Landroid/content/ContentResolver;

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->setHasOptionsMenu(Z)V

    .line 97
    new-instance v1, Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {v1, v2, v3}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->adapter:Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    .line 99
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->determineSelectedAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 100
    .local v0, "selectedAddress":Lcom/google/bitcoin/core/Address;
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->adapter:Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->setSelectedAddress(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->adapter:Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 132
    const v0, 0x7f0600bc

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const v0, 0x7f0e000a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 135
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    new-instance v1, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;

    invoke-direct {v1, p0, p3}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;I)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AddressBookActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 142
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->handleAddAddress()V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600bc
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->walletListener:Lcom/google/bitcoin/core/WalletEventListener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 123
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->activity:Lde/schildbach/wallet/ui/AddressBookActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AddressBookActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->walletListener:Lcom/google/bitcoin/core/WalletEventListener;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 113
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment;->walletListener:Lcom/google/bitcoin/core/WalletEventListener;

    invoke-interface {v0, v4, v4}, Lcom/google/bitcoin/core/WalletEventListener;->onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V

    .line 115
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->updateView()V

    .line 116
    return-void
.end method
