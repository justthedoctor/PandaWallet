.class public final Lde/schildbach/wallet/ui/WalletActionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalletActionsFragment.java"


# instance fields
.field private activity:Lde/schildbach/wallet/ui/WalletActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/WalletActionsFragment;)Lde/schildbach/wallet/ui/WalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActionsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActionsFragment;->activity:Lde/schildbach/wallet/ui/WalletActivity;

    return-object v0
.end method

.method private updateView()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 96
    .local v2, "showActions":Z
    :goto_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActionsFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 97
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 98
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_1

    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object v0, v1

    .line 99
    .local v0, "fragment":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void

    .end local v0    # "fragment":Landroid/view/View;
    .end local v2    # "showActions":Z
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move v2, v4

    .line 94
    goto :goto_0

    .restart local v1    # "parent":Landroid/view/ViewParent;
    .restart local v2    # "showActions":Z
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    move-object v0, v3

    .line 98
    goto :goto_1

    .line 99
    .end local v1    # "parent":Landroid/view/ViewParent;
    .restart local v0    # "fragment":Landroid/view/View;
    :cond_2
    const/16 v4, 0x8

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    check-cast p1, Lde/schildbach/wallet/ui/WalletActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActionsFragment;->activity:Lde/schildbach/wallet/ui/WalletActivity;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const v4, 0x7f030037

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f060089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "requestButton":Landroid/view/View;
    new-instance v4, Lde/schildbach/wallet/ui/WalletActionsFragment$1;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/WalletActionsFragment$1;-><init>(Lde/schildbach/wallet/ui/WalletActionsFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v4, 0x7f06008a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "sendButton":Landroid/view/View;
    new-instance v4, Lde/schildbach/wallet/ui/WalletActionsFragment$2;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/WalletActionsFragment$2;-><init>(Lde/schildbach/wallet/ui/WalletActionsFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v4, 0x7f06008b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "sendQrButton":Landroid/view/View;
    new-instance v4, Lde/schildbach/wallet/ui/WalletActionsFragment$3;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/WalletActionsFragment$3;-><init>(Lde/schildbach/wallet/ui/WalletActionsFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActionsFragment;->updateView()V

    .line 90
    return-void
.end method
