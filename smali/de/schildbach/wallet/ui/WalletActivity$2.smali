.class Lde/schildbach/wallet/ui/WalletActivity$2;
.super Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$2;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 206
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$2;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    const/4 v2, 0x0

    const v3, 0x7f0b00f9

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/WalletActivity$2;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 200
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$2;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/WalletActivity;->processDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 201
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 1
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 194
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$2;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v0, p1}, Lde/schildbach/wallet/ui/SendCoinsActivity;->start(Landroid/content/Context;Lde/schildbach/wallet/PaymentIntent;)V

    .line 195
    return-void
.end method
