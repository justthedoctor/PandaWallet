.class public final Lde/schildbach/wallet/ui/SendCoinsActivity;
.super Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
.source "SendCoinsActivity.java"


# static fields
.field public static final INTENT_EXTRA_PAYMENT_INTENT:Ljava/lang/String; = "payment_intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Lde/schildbach/wallet/PaymentIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/SendCoinsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "payment_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/SendCoinsActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/WalletApplication;->startBlockchainService(Z)V

    .line 55
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 62
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 64
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 73
    :sswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsActivity;->finish()V

    goto :goto_0

    .line 77
    :sswitch_1
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0107

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->page(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0600ab -> :sswitch_1
    .end sparse-switch
.end method
