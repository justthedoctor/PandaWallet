.class public Lde/schildbach/wallet/ui/TransactionsListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "TransactionsListFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;,
        Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;>;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# static fields
.field private static final KEY_DIRECTION:Ljava/lang/String; = "direction"

.field private static final KEY_ROTATION_URI:Landroid/net/Uri;

.field private static final THROTTLE_MS:J = 0x3e8L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

.field private final addressBookObserver:Landroid/database/ContentObserver;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private config:Lde/schildbach/wallet/Configuration;

.field private direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private nfcManager:Landroid/nfc/NfcManager;

.field private resolver:Landroid/content/ContentResolver;

.field private final transactionChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "http://bitcoin.org/en/alert/2013-08-11-android"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment;->KEY_ROTATION_URI:Landroid/net/Uri;

    .line 116
    const-class v0, Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->handler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$1;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/TransactionsListFragment$1;-><init>(Lde/schildbach/wallet/ui/TransactionsListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->addressBookObserver:Landroid/database/ContentObserver;

    .line 370
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$3;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lde/schildbach/wallet/ui/TransactionsListFragment$3;-><init>(Lde/schildbach/wallet/ui/TransactionsListFragment;J)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->transactionChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/TransactionsListAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionsListFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionsListFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionsListFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/TransactionsListFragment;)Landroid/nfc/NfcManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionsListFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->nfcManager:Landroid/nfc/NfcManager;

    return-object v0
.end method

.method static synthetic access$500()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private handleBackupWarningClick()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    check-cast v0, Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletActivity;->handleExportKeys()V

    .line 350
    return-void
.end method

.method private handleKeyRotationClick()V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lde/schildbach/wallet/ui/TransactionsListFragment;->KEY_ROTATION_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private handleTransactionClick(Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v1, Lde/schildbach/wallet/ui/TransactionsListFragment$2;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/TransactionsListFragment$2;-><init>(Lde/schildbach/wallet/ui/TransactionsListFragment;Lcom/google/bitcoin/core/Transaction;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    .line 340
    return-void
.end method

.method public static instance(Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;)Lde/schildbach/wallet/ui/TransactionsListFragment;
    .locals 3
    .param p0, "direction"    # Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    new-instance v1, Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-direct {v1}, Lde/schildbach/wallet/ui/TransactionsListFragment;-><init>()V

    .line 122
    .local v1, "fragment":Lde/schildbach/wallet/ui/TransactionsListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "direction"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 124
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v1
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 485
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v0

    .line 486
    .local v0, "btcPrecision":I
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v1

    .line 488
    .local v1, "btcShift":I
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v2, v0, v1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->setPrecision(II)V

    .line 489
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->clearLabelCache()V

    .line 490
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 143
    check-cast v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 145
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 146
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 147
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->nfcManager:Landroid/nfc/NfcManager;

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->resolver:Landroid/content/ContentResolver;

    .line 149
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->setRetainInstance(Z)V

    .line 159
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    .line 161
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v2, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-ne v1, v2, :cond_1

    .line 163
    .local v0, "showBackupWarning":Z
    :cond_0
    :goto_0
    new-instance v1, Lde/schildbach/wallet/ui/TransactionsListAdapter;

    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v4, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v4}, Lde/schildbach/wallet/WalletApplication;->maxConnectedPeers()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;IZ)V

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    .line 164
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/TransactionsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void

    .line 161
    .end local v0    # "showBackupWarning":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
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
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;Lde/schildbach/wallet/ui/TransactionsListFragment$1;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 217
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v1, p3}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->getItem(I)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    .line 219
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->handleBackupWarningClick()V

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getPurpose()Lcom/google/bitcoin/core/Transaction$Purpose;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    if-ne v1, v2, :cond_1

    .line 222
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->handleKeyRotationClick()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-direct {p0, v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->handleTransactionClick(Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/TransactionsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;>;"
    .local p2, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->adapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v0, p2}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->replace(Ljava/util/Collection;)V

    .line 362
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->transactionChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->removeEventListener(Lcom/google/bitcoin/core/WalletEventListener;)Z

    .line 202
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->transactionChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->removeCallbacks()V

    .line 204
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 207
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 209
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->addressBookObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->addressBookObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 176
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 178
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->transactionChangeListener:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->addEventListener(Lcom/google/bitcoin/core/WalletEventListener;Ljava/util/concurrent/Executor;)V

    .line 180
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->updateView()V

    .line 181
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string v0, "btc_precision"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->updateView()V

    .line 481
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v2, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-ne v1, v2, :cond_1

    const v1, 0x7f0b0026

    :goto_0
    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    .local v0, "emptyText":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 192
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment;->direction:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v2, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    if-eq v1, v2, :cond_0

    .line 193
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 196
    return-void

    .line 188
    .end local v0    # "emptyText":Landroid/text/SpannableStringBuilder;
    :cond_1
    const v1, 0x7f0b0025

    goto :goto_0
.end method
