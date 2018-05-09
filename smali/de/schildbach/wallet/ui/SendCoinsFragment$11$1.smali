.class Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment$11;->directPay(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

.field final synthetic val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onFail(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 905
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v1, v1, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 906
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v2, v2, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v2

    iget-object v2, v2, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v2, v2, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-virtual {v2, p1, p2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v2, v2, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 908
    const v1, 0x7f0b00ee

    new-instance v2, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    const v1, 0x7f0b00ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 918
    return-void
.end method

.method public onResult(Z)V
    .locals 2
    .param p1, "ack"    # Z

    .prologue
    .line 894
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2602(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 896
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 899
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 900
    return-void
.end method
