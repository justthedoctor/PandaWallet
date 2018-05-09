.class Lde/schildbach/wallet/ui/WalletBalanceFragment$1;
.super Ljava/lang/Object;
.source "WalletBalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletBalanceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/schildbach/wallet/ui/ExchangeRatesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
