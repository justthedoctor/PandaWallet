.class Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment$3;->onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

.field final synthetic val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment$3;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 311
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1100(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/TransactionsListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 313
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    .line 314
    .local v0, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    .line 315
    .local v1, "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v2

    .line 317
    .local v2, "numBroadcastPeers":I
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    move-result-object v4

    sget-object v5, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v4, v5, :cond_1

    .line 319
    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v1, v4, :cond_3

    .line 320
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v5, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v4, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 324
    :cond_0
    :goto_0
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 327
    :cond_1
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->val$reason:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    sget-object v5, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v1, v4, :cond_2

    .line 330
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-virtual {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send_coins_broadcast_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw"

    iget-object v7, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v7, v7, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v7}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v7

    invoke-virtual {v7}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 332
    .local v3, "soundResId":I
    if-lez v3, :cond_2

    .line 333
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v6, v6, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v6}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v6

    invoke-virtual {v6}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 336
    .end local v3    # "soundResId":I
    :cond_2
    return-void

    .line 321
    :cond_3
    const/4 v4, 0x1

    if-gt v2, v4, :cond_4

    sget-object v4, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v1, v4, :cond_0

    .line 322
    :cond_4
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$3$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    iget-object v4, v4, Lde/schildbach/wallet/ui/SendCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    sget-object v5, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v4, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    goto/16 :goto_0
.end method
