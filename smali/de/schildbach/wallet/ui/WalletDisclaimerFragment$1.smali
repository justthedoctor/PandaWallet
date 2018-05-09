.class Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;
.super Ljava/lang/Object;
.source "WalletDisclaimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->access$000(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/Configuration;->remindBackup()Z

    move-result v0

    .line 76
    .local v0, "showBackup":Z
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->access$100(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/WalletActivity;->handleExportKeys()V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0108

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->page(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0
.end method
