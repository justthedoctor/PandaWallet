.class Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;
.super Ljava/lang/Object;
.source "ExchangeRatesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ExchangeRatesFragment;
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
.field final synthetic this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

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
    .line 286
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$500(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$800(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceLoader;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 282
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/math/BigInteger;)V

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
    .line 292
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/math/BigInteger;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v0, p2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$902(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 294
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$3;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$400(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V

    .line 295
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
    .line 300
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/math/BigInteger;>;"
    return-void
.end method
