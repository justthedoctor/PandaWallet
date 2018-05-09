.class Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;
.super Ljava/lang/Object;
.source "SendingAddressesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

.field final synthetic val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendingAddressesFragment$2;Lde/schildbach/wallet/PaymentIntent;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->this$1:Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 149
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->this$1:Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->this$1:Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;->this$1:Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

    iget-object v1, v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$000(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0072

    const v4, 0x7f0b0073

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    goto :goto_0
.end method
