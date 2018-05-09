.class Lde/schildbach/wallet/ui/WalletActivity$1;
.super Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$inputType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [B

    .prologue
    .line 160
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$1;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p4, p0, Lde/schildbach/wallet/ui/WalletActivity$1;->val$inputType:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 176
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$1;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/WalletActivity$1;->dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 170
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$1;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/WalletActivity;->processDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 171
    return-void
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 1
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 164
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$1;->val$inputType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity$1;->cannotClassify(Ljava/lang/String;)V

    .line 165
    return-void
.end method
