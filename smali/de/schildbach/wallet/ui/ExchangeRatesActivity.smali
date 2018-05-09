.class public final Lde/schildbach/wallet/ui/ExchangeRatesActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "ExchangeRatesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/ExchangeRatesActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ExchangeRatesActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ExchangeRatesActivity;->finish()V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
