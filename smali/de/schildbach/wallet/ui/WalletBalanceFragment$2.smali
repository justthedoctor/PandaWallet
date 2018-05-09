.class Lde/schildbach/wallet/ui/WalletBalanceFragment$2;
.super Ljava/lang/Object;
.source "WalletBalanceFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletBalanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$500(Lde/schildbach/wallet/ui/WalletBalanceFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$600(Lde/schildbach/wallet/ui/WalletBalanceFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/math/BigInteger;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/math/BigInteger;)V
    .locals 1
    .param p2, "balance"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/math/BigInteger;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-static {v0, p2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$702(Lde/schildbach/wallet/ui/WalletBalanceFragment;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 285
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$400(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    .line 286
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/math/BigInteger;>;"
    return-void
.end method
