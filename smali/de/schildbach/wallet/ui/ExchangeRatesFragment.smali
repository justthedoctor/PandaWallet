.class public final Lde/schildbach/wallet/ui/ExchangeRatesFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "ExchangeRatesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;,
        Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ID_BALANCE_LOADER:I = 0x0

.field private static final ID_RATE_LOADER:I = 0x1


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private balance:Ljava/math/BigInteger;

.field private final balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastReceiver:Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;

.field private config:Lde/schildbach/wallet/Configuration;

.field private defaultCurrency:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private final rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private replaying:Z

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 73
    iput-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balance:Ljava/math/BigInteger;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->replaying:Z

    .line 75
    iput-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->defaultCurrency:Ljava/lang/String;

    .line 227
    new-instance v0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;

    .line 240
    new-instance v0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 281
    new-instance v0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 303
    return-void
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->replaying:Z

    return v0
.end method

.method static synthetic access$302(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->replaying:Z

    return p1
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->updateView()V

    return-void
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->defaultCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$900(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balance:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$902(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;
    .param p1, "x1"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balance:Ljava/math/BigInteger;

    return-object p1
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 215
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balance:Ljava/math/BigInteger;

    .line 217
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v1

    .line 221
    .local v1, "btcShift":I
    if-nez v1, :cond_1

    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    .line 223
    .local v0, "base":Ljava/math/BigInteger;
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    invoke-virtual {v2, v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->setRateBase(Ljava/math/BigInteger;)V

    .line 225
    .end local v0    # "base":Ljava/math/BigInteger;
    .end local v1    # "btcShift":I
    :cond_0
    return-void

    .line 221
    .restart local v1    # "btcShift":I
    :cond_1
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC:Ljava/math/BigInteger;

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 86
    check-cast v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 88
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 89
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 90
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->setRetainInstance(Z)V

    .line 100
    new-instance v0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-direct {v0, p0, v1, v3}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Landroid/content/Context;Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    .line 101
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 105
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->getExchangeCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->defaultCurrency:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 146
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 147
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 152
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->adapter:Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    invoke-virtual {v2, p3}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 153
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lde/schildbach/wallet/ExchangeRatesProvider;->getExchangeRate(Landroid/database/Cursor;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v1

    .line 155
    .local v1, "exchangeRate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v3, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;

    invoke-direct {v3, p0, v1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 134
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 122
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 126
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->updateView()V

    .line 127
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "exchange_currency"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "btc_precision"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->getExchangeCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->defaultCurrency:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->updateView()V

    .line 211
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
