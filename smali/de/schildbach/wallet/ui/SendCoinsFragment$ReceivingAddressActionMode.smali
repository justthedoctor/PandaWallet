.class final Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceivingAddressActionMode"
.end annotation


# instance fields
.field private final address:Lcom/google/bitcoin/core/Address;

.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Address;)V
    .locals 0
    .param p2, "address"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 211
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->address:Lcom/google/bitcoin/core/Address;

    .line 213
    return-void
.end method

.method private handleClear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$702(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/AddressAndLabel;)Lde/schildbach/wallet/ui/AddressAndLabel;

    .line 269
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 274
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$500(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 275
    return-void
.end method

.method private handleEditAddress()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 263
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 250
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->handleEditAddress()V

    .line 240
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->handleClear()V

    .line 246
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x7f0600ac
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 219
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 221
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 256
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$500(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 227
    const v0, 0x7f0600ad

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->mayEditAddress()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 229
    const/4 v0, 0x1

    return v0
.end method
