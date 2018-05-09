.class Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;
.super Ljava/lang/Object;
.source "ExchangeRatesFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ExchangeRatesFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

.field final synthetic val$exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->val$exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSetAsDefault(Ljava/lang/String;)V
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$100(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/Configuration;->setExchangeCurrencyCode(Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 178
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->val$exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v0, v0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->handleSetAsDefault(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600a6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 161
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 163
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 193
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v5, 0x1

    .line 169
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->val$exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v0, v0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    const v1, 0x7f0b0020

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;->val$exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v4, v4, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->source:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 172
    return v5
.end method
