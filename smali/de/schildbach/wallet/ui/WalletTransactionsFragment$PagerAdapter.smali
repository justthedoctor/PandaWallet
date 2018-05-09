.class Lde/schildbach/wallet/ui/WalletTransactionsFragment$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WalletTransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletTransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    sget-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    .line 95
    .local v0, "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    :goto_0
    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->instance(Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;)Lde/schildbach/wallet/ui/TransactionsListFragment;

    move-result-object v1

    return-object v1

    .line 88
    .end local v0    # "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 89
    const/4 v0, 0x0

    .restart local v0    # "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    goto :goto_0

    .line 90
    .end local v0    # "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 91
    sget-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    .restart local v0    # "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    goto :goto_0

    .line 93
    .end local v0    # "direction":Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
