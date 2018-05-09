.class public final Lde/schildbach/wallet/ui/NetworkMonitorActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "NetworkMonitorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;
    }
.end annotation


# instance fields
.field private blockListFragment:Lde/schildbach/wallet/ui/BlockListFragment;

.field private peerListFragment:Lde/schildbach/wallet/ui/PeerListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/NetworkMonitorActivity;)Lde/schildbach/wallet/ui/PeerListFragment;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->peerListFragment:Lde/schildbach/wallet/ui/PeerListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/NetworkMonitorActivity;)Lde/schildbach/wallet/ui/BlockListFragment;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->blockListFragment:Lde/schildbach/wallet/ui/BlockListFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    .line 43
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v5, 0x7f030046

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    const v5, 0x7f060044

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 52
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 54
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v2, :cond_0

    .line 56
    const v5, 0x7f060043

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lde/schildbach/wallet/util/ViewPagerTabs;

    .line 57
    .local v4, "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Lde/schildbach/wallet/util/ViewPagerTabs;->addTabLabels([I)V

    .line 59
    new-instance v3, Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;

    invoke-direct {v3, p0, v1}, Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;-><init>(Lde/schildbach/wallet/ui/NetworkMonitorActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 61
    .local v3, "pagerAdapter":Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 64
    const v5, 0x7f080010

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 66
    new-instance v5, Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-direct {v5}, Lde/schildbach/wallet/ui/PeerListFragment;-><init>()V

    iput-object v5, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->peerListFragment:Lde/schildbach/wallet/ui/PeerListFragment;

    .line 67
    new-instance v5, Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-direct {v5}, Lde/schildbach/wallet/ui/BlockListFragment;-><init>()V

    iput-object v5, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->blockListFragment:Lde/schildbach/wallet/ui/BlockListFragment;

    .line 74
    .end local v3    # "pagerAdapter":Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;
    .end local v4    # "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    :goto_0
    return-void

    .line 71
    :cond_0
    const v5, 0x7f060031

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lde/schildbach/wallet/ui/PeerListFragment;

    iput-object v5, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->peerListFragment:Lde/schildbach/wallet/ui/PeerListFragment;

    .line 72
    const v5, 0x7f060045

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lde/schildbach/wallet/ui/BlockListFragment;

    iput-object v5, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->blockListFragment:Lde/schildbach/wallet/ui/BlockListFragment;

    goto :goto_0

    .line 57
    :array_0
    .array-data 4
        0x7f0b0091
        0x7f0b0092
    .end array-data
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->finish()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
