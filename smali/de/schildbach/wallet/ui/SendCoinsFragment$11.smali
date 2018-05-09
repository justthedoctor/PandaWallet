.class Lde/schildbach/wallet/ui/SendCoinsFragment$11;
.super Lde/schildbach/wallet/ui/SendCoinsOfflineTask;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->handleGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

.field final synthetic val$finalAmount:Ljava/math/BigInteger;

.field final synthetic val$returnAddress:Lcom/google/bitcoin/core/Address;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Wallet;Landroid/os/Handler;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 854
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iput-object p4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->val$returnAddress:Lcom/google/bitcoin/core/Address;

    iput-object p5, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->val$finalAmount:Ljava/math/BigInteger;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;-><init>(Lcom/google/bitcoin/core/Wallet;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2700(Lde/schildbach/wallet/ui/SendCoinsFragment$11;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment$11;
    .param p1, "x1"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->directPay(Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    return-void
.end method

.method private directPay(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 5
    .param p1, "payment"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 887
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;

    invoke-direct {v0, p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    .line 921
    .local v0, "callback":Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->isHttpPaymentUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v3

    iget-object v3, v3, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v4

    invoke-virtual {v4}, Lde/schildbach/wallet/WalletApplication;->httpUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    .line 932
    .end local v0    # "callback":Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
    :cond_0
    :goto_0
    return-void

    .line 926
    .restart local v0    # "callback":Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
    :cond_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v4

    iget-object v4, v4, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-static {v4}, Lde/schildbach/wallet/util/Bluetooth;->getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    goto :goto_0
.end method


# virtual methods
.method protected onFailure()V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 975
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 977
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    const v1, 0x7f0b005a

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->longToast(I[Ljava/lang/Object;)V

    .line 978
    return-void
.end method

.method protected onInsufficientMoney(Ljava/math/BigInteger;)V
    .locals 14
    .param p1, "missing"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 937
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v8, v9}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 938
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 940
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v8, v9}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v5

    .line 941
    .local v5, "estimated":Ljava/math/BigInteger;
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v8, v9}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    .line 942
    .local v0, "available":Ljava/math/BigInteger;
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 944
    .local v7, "pending":Ljava/math/BigInteger;
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v3

    .line 945
    .local v3, "btcShift":I
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getBtcMaxPrecision()I

    move-result v1

    .line 946
    .local v1, "btcPrecision":I
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "btcPrefix":Ljava/lang/String;
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v8

    const v9, 0x7f0b0053

    invoke-static {v8, v9}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v4

    .line 949
    .local v4, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v6, "msg":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 951
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const v9, 0x7f0b0054

    invoke-virtual {v8, v9}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1, v1, v3}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_0
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-lez v8, :cond_1

    .line 955
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const v9, 0x7f0b004a

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_1
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const v9, 0x7f0b0055

    invoke-virtual {v8, v9}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v4, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 959
    const v8, 0x7f0b005b

    new-instance v9, Lde/schildbach/wallet/ui/SendCoinsFragment$11$2;

    invoke-direct {v9, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$11$2;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11;)V

    invoke-virtual {v4, v8, v9}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    const v8, 0x7f0b00ed

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 968
    invoke-virtual {v4}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 969
    return-void
.end method

.method protected onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 8
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 858
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1202(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    .line 860
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v4, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v3, v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 861
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 863
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)V

    .line 865
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->val$returnAddress:Lcom/google/bitcoin/core/Address;

    iget-object v5, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->val$finalAmount:Ljava/math/BigInteger;

    const/4 v6, 0x0

    iget-object v7, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v7

    iget-object v7, v7, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    invoke-static {v3, v4, v5, v6, v7}, Lde/schildbach/wallet/util/PaymentProtocol;->createPaymentMessage(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    .line 868
    .local v1, "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->directPay(Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    .line 870
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/schildbach/wallet/WalletApplication;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 872
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v3

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 873
    .local v0, "callingActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 875
    invoke-static {}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2400()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "returning result to calling activity: {}"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 878
    .local v2, "result":Landroid/content/Intent;
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->transactionHashToResult(Landroid/content/Intent;Ljava/lang/String;)V

    .line 879
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v3

    iget-object v3, v3, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    sget-object v4, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;

    if-ne v3, v4, :cond_0

    .line 880
    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->paymentToResult(Landroid/content/Intent;[B)V

    .line 881
    :cond_0
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 883
    .end local v2    # "result":Landroid/content/Intent;
    :cond_1
    return-void
.end method
