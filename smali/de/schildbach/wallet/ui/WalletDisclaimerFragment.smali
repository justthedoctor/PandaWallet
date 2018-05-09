.class public final Lde/schildbach/wallet/ui/WalletDisclaimerFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalletDisclaimerFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final broadcastReceiver:Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;

.field private config:Lde/schildbach/wallet/Configuration;

.field private download:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 152
    new-instance v0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->download:I

    return p1
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->updateView()V

    return-void
.end method

.method private updateView()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    .line 117
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->isResumed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v7}, Lde/schildbach/wallet/Configuration;->remindBackup()Z

    move-result v3

    .line 121
    .local v3, "showBackup":Z
    iget-object v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v7}, Lde/schildbach/wallet/Configuration;->getDisclaimerEnabled()Z

    move-result v4

    .line 124
    .local v4, "showDisclaimer":Z
    iget v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->download:I

    if-nez v7, :cond_7

    .line 125
    const/4 v2, 0x0

    .line 133
    .local v2, "progressResId":I
    :goto_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 134
    .local v5, "text":Landroid/text/SpannableStringBuilder;
    if-eqz v2, :cond_1

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 137
    :cond_2
    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 138
    :cond_3
    if-eqz v3, :cond_4

    .line 139
    const v7, 0x7f0b000d

    invoke-virtual {p0, v7}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 141
    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 142
    :cond_5
    if-eqz v4, :cond_6

    .line 143
    const v7, 0x7f0b000c

    invoke-virtual {p0, v7}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    :cond_6
    iget-object v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->messageView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 147
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 148
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_a

    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object v0, v1

    .line 149
    .local v0, "fragment":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "fragment":Landroid/view/View;
    .end local v2    # "progressResId":I
    .end local v5    # "text":Landroid/text/SpannableStringBuilder;
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    iget v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->download:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    .line 127
    const v2, 0x7f0b0014

    .restart local v2    # "progressResId":I
    goto/16 :goto_1

    .line 128
    .end local v2    # "progressResId":I
    :cond_8
    iget v7, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->download:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9

    .line 129
    const v2, 0x7f0b0015

    .restart local v2    # "progressResId":I
    goto/16 :goto_1

    .line 131
    .end local v2    # "progressResId":I
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->download:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v1    # "parent":Landroid/view/ViewParent;
    .restart local v2    # "progressResId":I
    .restart local v5    # "text":Landroid/text/SpannableStringBuilder;
    .restart local v6    # "view":Landroid/view/View;
    :cond_a
    move-object v0, v6

    .line 148
    goto :goto_2

    .line 149
    .end local v1    # "parent":Landroid/view/ViewParent;
    .restart local v0    # "fragment":Landroid/view/View;
    :cond_b
    const/16 v7, 0x8

    goto :goto_3
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v1, p1

    .line 60
    check-cast v1, Lde/schildbach/wallet/ui/WalletActivity;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->activity:Landroid/app/Activity;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    .line 62
    .local v0, "application":Lde/schildbach/wallet/WalletApplication;
    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v0, 0x7f030040

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->messageView:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->messageView:Landroid/widget/TextView;

    new-instance v1, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;-><init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 91
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->updateView()V

    .line 96
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "disclaimer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remind_backup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->updateView()V

    .line 113
    :cond_1
    return-void
.end method
