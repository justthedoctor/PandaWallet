.class Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findCurrencyCode(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 268
    const-string v2, "currency_code"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "currencyCodeColumn":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 271
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 277
    :cond_1
    return v1
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    const/4 v3, 0x0

    .line 245
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$500(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$500(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v2

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/schildbach/wallet/ExchangeRatesProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

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
    .line 251
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$600(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    .local v1, "oldCursor":Landroid/database/Cursor;
    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$700(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$700(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->findCurrencyCode(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "defaultCurrencyPosition":I
    if-ltz v0, :cond_0

    .line 257
    iget-object v2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 259
    .end local v0    # "defaultCurrencyPosition":I
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$2;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 264
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
