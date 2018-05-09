.class Lde/schildbach/wallet/ui/SendingAddressesFragment$3;
.super Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.source "SendingAddressesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendingAddressesFragment;->handlePasteClipboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iput-object p3, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->val$input:Ljava/lang/String;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 232
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$000(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b006f

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 226
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->val$input:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->cannotClassify(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 6
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 216
    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$000(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b006f

    const v4, 0x7f0b0071

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    goto :goto_0
.end method
