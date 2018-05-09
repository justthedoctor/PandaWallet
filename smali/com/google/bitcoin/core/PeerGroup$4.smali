.class Lcom/google/bitcoin/core/PeerGroup$4;
.super Lcom/google/bitcoin/core/AbstractWalletEventListener;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$4;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;-><init>()V

    return-void
.end method

.method private queueRecalc(Z)V
    .locals 2
    .param p1, "andTransmit"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->access$300()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Queuing recalc of the Bloom filter due to new keys or scripts becoming available"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$4;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v0}, Lcom/google/bitcoin/core/PeerGroup;->access$400(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$4;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$500(Lcom/google/bitcoin/core/PeerGroup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->access$300()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Queuing recalc of the Bloom filter due to observing a pay to pubkey output on a relevant tx"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$4;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v0}, Lcom/google/bitcoin/core/PeerGroup;->access$400(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$4;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$600(Lcom/google/bitcoin/core/PeerGroup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 202
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 203
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMine(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v2, v3, :cond_2

    .line 205
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/PeerGroup$4;->queueRecalc(Z)V

    .line 211
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_1
    :goto_0
    return-void

    .line 207
    .restart local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/bitcoin/core/PeerGroup$4;->queueRecalc(Z)V

    goto :goto_0
.end method

.method public onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerGroup$4;->queueRecalc(Z)V

    .line 176
    return-void
.end method

.method public onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PeerGroup$4;->queueRecalc(Z)V

    .line 172
    return-void
.end method
