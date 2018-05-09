.class public final Lde/schildbach/wallet/ui/WalletTransactionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalletTransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/WalletTransactionsFragment$PagerAdapter;
    }
.end annotation


# static fields
.field private static final INITIAL_PAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletTransactionsFragment;->setRetainInstance(Z)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    const v4, 0x7f030042

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0600a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/util/ViewPagerTabs;

    .line 53
    .local v2, "pagerTabs":Lde/schildbach/wallet/util/ViewPagerTabs;
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Lde/schildbach/wallet/util/ViewPagerTabs;->addTabLabels([I)V

    .line 56
    new-instance v1, Lde/schildbach/wallet/ui/WalletTransactionsFragment$PagerAdapter;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletTransactionsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lde/schildbach/wallet/ui/WalletTransactionsFragment$PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 58
    .local v1, "pagerAdapter":Lde/schildbach/wallet/ui/WalletTransactionsFragment$PagerAdapter;
    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 59
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 61
    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 63
    const v4, 0x7f080010

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4, v5}, Lde/schildbach/wallet/util/ViewPagerTabs;->onPageScrolled(IFI)V

    .line 66
    return-object v3

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f0b0022
        0x7f0b0023
        0x7f0b0024
    .end array-data
.end method
