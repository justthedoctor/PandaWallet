.class Lde/schildbach/wallet/ui/SendCoinsFragment$12;
.super Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromBitcoinUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1220
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iput-object p3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->val$input:Ljava/lang/String;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1236
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3100(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 1237
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 1230
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->val$input:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->cannotClassify(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 1
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 1224
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2100(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V

    .line 1225
    return-void
.end method
