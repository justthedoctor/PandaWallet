.class Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;
.super Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.source "SendCoinsQrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsQrActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final dismissListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsQrActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->dismissListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->dismissListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->processDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 68
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->finish()V

    .line 69
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 1
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-static {v0, p1}, Lde/schildbach/wallet/ui/SendCoinsActivity;->start(Landroid/content/Context;Lde/schildbach/wallet/PaymentIntent;)V

    .line 60
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->finish()V

    .line 61
    return-void
.end method
