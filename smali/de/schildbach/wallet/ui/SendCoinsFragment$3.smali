.class Lde/schildbach/wallet/ui/SendCoinsFragment$3;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "reason"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .prologue
    .line 306
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;

    invoke-direct {v1, p0, p2}, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment$3;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method
