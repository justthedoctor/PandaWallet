.class Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AddressBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/AddressBookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoFragmentAdapter"
.end annotation


# instance fields
.field private currentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private currentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final left:Landroid/support/v4/app/Fragment;

.field private final right:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "left"    # Landroid/support/v4/app/Fragment;
    .param p3, "right"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 156
    iput-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 157
    iput-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 161
    iput-object p1, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 162
    iput-object p2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->left:Landroid/support/v4/app/Fragment;

    .line 163
    iput-object p3, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->right:Landroid/support/v4/app/Fragment;

    .line 164
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 220
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 224
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 226
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 178
    :cond_0
    if-nez p2, :cond_2

    const-string v1, "wallet_addresses"

    .line 179
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->left:Landroid/support/v4/app/Fragment;

    .line 180
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    :goto_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 182
    iget-object v2, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 184
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 185
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 188
    :cond_1
    return-object v0

    .line 178
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string v1, "sending_addresses"

    goto :goto_0

    .line 179
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->right:Landroid/support/v4/app/Fragment;

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 201
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 203
    iget-object v1, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 206
    iget-object v1, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 208
    :cond_0
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 213
    :cond_1
    iput-object v0, p0, Lde/schildbach/wallet/ui/AddressBookActivity$TwoFragmentAdapter;->currentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 215
    :cond_2
    return-void
.end method
