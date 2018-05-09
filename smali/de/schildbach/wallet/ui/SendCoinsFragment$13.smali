.class Lde/schildbach/wallet/ui/SendCoinsFragment$13;
.super Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromPaymentRequest(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [B

    .prologue
    .line 1244
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1260
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3100(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 1261
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 1254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 1
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 1248
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2100(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V

    .line 1249
    return-void
.end method
