.class Lde/schildbach/wallet/ui/WalletAddressesFragment$2;
.super Ljava/lang/Object;
.source "WalletAddressesFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletAddressesFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    iput p2, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAddress(I)Lcom/google/bitcoin/core/Address;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getKey(I)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    return-object v0
.end method

.method private getKey(I)Lcom/google/bitcoin/core/ECKey;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    return-object v0
.end method

.method private handleCopyToClipboard(Lcom/google/bitcoin/core/Address;)V
    .locals 4
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$100(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/AddressBookActivity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/AddressBookActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 267
    .local v0, "clipboardManager":Landroid/text/ClipboardManager;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$100(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/AddressBookActivity;

    move-result-object v1

    const v2, 0x7f0b0017

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lde/schildbach/wallet/ui/AddressBookActivity;->toast(I[Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method private handleDefault(Lcom/google/bitcoin/core/Address;)V
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "addressStr":Ljava/lang/String;
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$200(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/schildbach/wallet/Configuration;->setSelectedAddress(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$300(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->setSelectedAddress(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private handleEdit(Lcom/google/bitcoin/core/Address;)V
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private handleShowQr(Lcom/google/bitcoin/core/Address;)V
    .locals 4
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {p1, v2, v2, v2}, Lcom/google/bitcoin/uri/BitcoinURI;->convertToBitcoinURI(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "uri":Ljava/lang/String;
    const/high16 v2, 0x43800000    # 256.0f

    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 261
    .local v0, "size":I
    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v0}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/util/BitmapFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V

    .line 262
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 203
    :pswitch_0
    iget v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getAddress(I)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->handleEdit(Lcom/google/bitcoin/core/Address;)V

    .line 205
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 209
    :pswitch_1
    iget v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getAddress(I)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->handleShowQr(Lcom/google/bitcoin/core/Address;)V

    .line 211
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 215
    :pswitch_2
    iget v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getAddress(I)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->handleCopyToClipboard(Lcom/google/bitcoin/core/Address;)V

    .line 217
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 221
    :pswitch_3
    iget v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getAddress(I)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->handleDefault(Lcom/google/bitcoin/core/Address;)V

    .line 223
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 227
    :pswitch_4
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lde/schildbach/wallet/Constants;->EXPLORE_BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address.dws?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v5}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getAddress(I)Lcom/google/bitcoin/core/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->startActivity(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600b7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 180
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 182
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 240
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 188
    iget v3, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->val$position:I

    invoke-direct {p0, v3}, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->getKey(I)Lcom/google/bitcoin/core/ECKey;

    move-result-object v1

    .line 190
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    sget-object v3, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1, v3}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$100(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/AddressBookActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "label":Ljava/lang/String;
    if-eqz v2, :cond_0

    .end local v2    # "label":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v2}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v3, 0x1

    return v3

    .line 192
    .restart local v2    # "label":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;II)Landroid/text/Editable;

    move-result-object v2

    goto :goto_0
.end method
