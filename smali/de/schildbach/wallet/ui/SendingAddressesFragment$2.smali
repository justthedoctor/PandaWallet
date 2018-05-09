.class Lde/schildbach/wallet/ui/SendingAddressesFragment$2;
.super Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.source "SendingAddressesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendingAddressesFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 139
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    iput-object p3, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->val$input:Ljava/lang/String;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$000(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0072

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 160
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->val$input:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->cannotClassify(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 4
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 144
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->access$100(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2$1;-><init>(Lde/schildbach/wallet/ui/SendingAddressesFragment$2;Lde/schildbach/wallet/PaymentIntent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method
