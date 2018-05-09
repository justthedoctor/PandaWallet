.class Lde/schildbach/wallet/ui/BlockListFragment$1;
.super Ljava/lang/Object;
.source "BlockListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/BlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;

.field final synthetic val$storedBlock:Lcom/google/bitcoin/core/StoredBlock;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->val$storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 184
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 187
    :pswitch_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lde/schildbach/wallet/Constants;->EXPLORE_BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "block/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->val$storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/BlockListFragment;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600a5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 167
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 169
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 200
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 175
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->val$storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$1;->val$storedBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method
