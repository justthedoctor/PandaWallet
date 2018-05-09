.class Lde/schildbach/wallet/ui/SendingAddressesFragment$4;
.super Ljava/lang/Object;
.source "SendingAddressesFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendingAddressesFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iput p2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAddress(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$600(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 317
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 322
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$600(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 323
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "label"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 273
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iget v2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$200(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iget v2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$300(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iget v2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$400(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 300
    :pswitch_4
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iget v2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$500(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600b0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 256
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 258
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 312
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 264
    iget v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->val$position:I

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v1, 0x1

    return v1
.end method
