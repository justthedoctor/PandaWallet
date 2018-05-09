.class Lde/schildbach/wallet/ui/SendCoinsFragment$6;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionMode:Lcom/actionbarsherlock/view/ActionMode;

.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 475
    if-eqz p2, :cond_3

    .line 477
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 479
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    :goto_0
    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    new-instance v2, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {v2, v3, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Address;)V

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 486
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    :cond_0
    :goto_1
    return-void

    .line 477
    :cond_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AddressAndLabel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AddressAndLabel;

    move-result-object v1

    iget-object v0, v1, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :cond_3
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$6;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1
.end method
