.class Lde/schildbach/wallet/ui/SendCoinsFragment$15;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->updateStateFrom(Lde/schildbach/wallet/PaymentIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

.field final synthetic val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1312
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    move-result-object v2

    sget-object v3, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v2, v3, :cond_2

    .line 1314
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v3}, Lde/schildbach/wallet/PaymentIntent;->getAmount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setBtcAmount(Ljava/math/BigInteger;)V

    .line 1316
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v2}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1317
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1321
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$500(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 1322
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 1325
    :cond_2
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->hasPaymentRequestUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentRequestUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lde/schildbach/wallet/Constants;->BUG_OPENSSL_HEARTBLEED:Z

    if-nez v0, :cond_7

    .line 1329
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1330
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v1, v1, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3200(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V

    .line 1341
    :cond_3
    :goto_1
    return-void

    .line 1318
    :cond_4
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v2}, Lde/schildbach/wallet/PaymentIntent;->isHttpPaymentUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    sget-boolean v3, Lde/schildbach/wallet/Constants;->BUG_OPENSSL_HEARTBLEED:Z

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1333
    :cond_6
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1336
    :cond_7
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->isHttpPaymentRequestUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1338
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$15;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v1, v1, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3200(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
