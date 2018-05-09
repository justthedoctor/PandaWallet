.class public final Lde/schildbach/wallet/ui/RequestCoinsActivity;
.super Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
.source "RequestCoinsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/RequestCoinsActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 46
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 48
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsActivity;->finish()V

    goto :goto_0

    .line 61
    :sswitch_1
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0106

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->page(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0600a7 -> :sswitch_1
    .end sparse-switch
.end method
