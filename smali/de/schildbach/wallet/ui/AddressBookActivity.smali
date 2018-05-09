.class public final Lde/schildbach/wallet/ui/AddressBookActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "AddressBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_SENDING:Ljava/lang/String; = "sending"

.field private static final TAG_LEFT:Ljava/lang/String; = "wallet_addresses"

.field private static final TAG_RIGHT:Ljava/lang/String; = "sending_addresses"


# instance fields
.field private sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

.field private walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    .line 150
    return-void
.end method

.method public static start(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sending"    # Z

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/AddressBookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sending"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 67
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v6, 0x7f030045

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/AddressBookActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 76
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v6, "wallet_addresses"

    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lde/schildbach/wallet/ui/WalletAddressesFragment;

    iput-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .line 77
    const-string v6, "sending_addresses"

    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iput-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    .line 79
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 81
    .local v5, "removal":Landroid/support/v4/app/FragmentTransaction;
    iget-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    if-nez v6, :cond_1

    .line 82
    new-instance v6, Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-direct {v6}, Lde/schildbach/wallet/ui/WalletAddressesFragment;-><init>()V

    iput-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    .line 86
    :goto_0
    iget-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    if-nez v6, :cond_2

    .line 87
    new-instance v6, Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-direct {v6}, Lde/schildbach/wallet/ui/SendingAddressesFragment;-><init>()V

    iput-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    .line 91
    :goto_1
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 97
    :cond_0
    const v6, 0x7f060029

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/AddressBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 98
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v2, :cond_4

    .line 100
    new-instance v6, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;

    iget-object v8, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    iget-object v9, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-direct {v6, v1, v8, v9}, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    const v6, 0x7f060028

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/AddressBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lde/schildbach/wallet/util/ViewPagerTabs;

    .line 103
    .local v3, "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    invoke-virtual {v3, v6}, Lde/schildbach/wallet/util/ViewPagerTabs;->addTabLabels([I)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "sending"

    invoke-virtual {v6, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    .local v4, "position":I
    :goto_2
    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 108
    invoke-virtual {v2, v10}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 109
    const v6, 0x7f080010

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 111
    invoke-virtual {v3, v4}, Lde/schildbach/wallet/util/ViewPagerTabs;->onPageSelected(I)V

    .line 112
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lde/schildbach/wallet/util/ViewPagerTabs;->onPageScrolled(IFI)V

    .line 120
    .end local v3    # "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    .end local v4    # "position":I
    :goto_3
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->updateFragments()V

    .line 121
    return-void

    .line 84
    .end local v2    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_1
    iget-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 89
    :cond_2
    iget-object v6, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .restart local v2    # "pager":Landroid/support/v4/view/ViewPager;
    .restart local v3    # "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    :cond_3
    move v4, v7

    .line 106
    goto :goto_2

    .line 116
    .end local v3    # "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f06002e

    iget-object v8, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->walletAddressesFragment:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    const-string v9, "wallet_addresses"

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f06002f

    iget-object v8, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    const-string v9, "sending_addresses"

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 103
    nop

    :array_0
    .array-data 4
        0x7f0b0066
        0x7f0b0067
    .end array-data
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 126
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->finish()V

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method updateFragments()V
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AddressBookActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v5

    invoke-virtual {v5}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 139
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Address;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 143
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3, v5}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 144
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    iget-object v5, p0, Lde/schildbach/wallet/ui/AddressBookActivity;->sendingAddressesFragment:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-virtual {v5, v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->setWalletAddresses(Ljava/util/ArrayList;)V

    .line 148
    return-void
.end method
