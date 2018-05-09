.class Lde/schildbach/wallet/ui/SendCoinsFragment$4;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lde/schildbach/wallet/ui/ExchangeRateLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/ExchangeRateLoader;-><init>(Landroid/content/Context;Lde/schildbach/wallet/Configuration;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 354
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    invoke-static {p2}, Lde/schildbach/wallet/ExchangeRatesProvider;->getExchangeRate(Landroid/database/Cursor;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v0

    .line 357
    .local v0, "exchangeRate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    move-result-object v1

    sget-object v2, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setExchangeRate(Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V

    .line 360
    .end local v0    # "exchangeRate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/SendCoinsFragment$4;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
