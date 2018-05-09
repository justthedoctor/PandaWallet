.class Lde/schildbach/wallet/ui/SendCoinsFragment$16;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->requestPaymentRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

.field final synthetic val$paymentRequestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->val$paymentRequestUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onFail(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1379
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->dismissProgress(Landroid/support/v4/app/FragmentManager;)V

    .line 1381
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 1382
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-virtual {v1, p1, p2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 1383
    const v1, 0x7f0b00ee

    new-instance v2, Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment$16;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    const v1, 0x7f0b00ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1392
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 1393
    return-void
.end method

.method public onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 3
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 1360
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->dismissProgress(Landroid/support/v4/app/FragmentManager;)V

    .line 1362
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/schildbach/wallet/PaymentIntent;->isSecurityExtendedBy(Lde/schildbach/wallet/PaymentIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2100(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V

    .line 1365
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 1374
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 1370
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 1371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 1372
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
