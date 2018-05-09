.class Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Lcom/google/bitcoin/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfidenceChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/TransactionBroadcast;


# direct methods
.method private constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcast;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/TransactionBroadcast$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;
    .param p2, "x1"    # Lcom/google/bitcoin/core/TransactionBroadcast$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;-><init>(Lcom/google/bitcoin/core/TransactionBroadcast;)V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 8
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "reason"    # Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    .line 129
    .local v0, "conf":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v2

    .line 130
    .local v2, "numSeenPeers":I
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 131
    .local v1, "mined":Z
    :goto_0
    invoke-static {}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$800()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "broadcastTransaction: {}:  TX {} seen by {} peers{}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v4

    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v4}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    const-string v3, " and mined"

    :goto_1
    aput-object v3, v7, v4

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v3}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$700(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v3

    if-ge v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$800()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "broadcastTransaction: {} complete"

    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/bitcoin/core/TransactionConfidence;->removeEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)Z

    .line 149
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v3}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$900(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v4}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    return-void

    .end local v1    # "mined":Z
    :cond_2
    move v1, v4

    .line 130
    goto :goto_0

    .line 131
    .restart local v1    # "mined":Z
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method
