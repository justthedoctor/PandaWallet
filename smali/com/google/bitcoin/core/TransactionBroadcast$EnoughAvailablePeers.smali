.class Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnoughAvailablePeers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/TransactionBroadcast;


# direct methods
.method private constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcast;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/TransactionBroadcast$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;
    .param p2, "x1"    # Lcom/google/bitcoin/core/TransactionBroadcast$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;-><init>(Lcom/google/bitcoin/core/TransactionBroadcast;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const/4 v10, 0x1

    .line 84
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$100(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "peers":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Peer;>;"
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    iget-object v6, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v6}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$100(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/PeerGroup;->getMemoryPool()Lcom/google/bitcoin/core/MemoryPool;

    move-result-object v6

    iget-object v7, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v7}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$300(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/core/MemoryPool;->intern(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$202(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;

    .line 89
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$400(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v5

    if-le v5, v10, :cond_0

    .line 90
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v5

    new-instance v6, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;

    iget-object v7, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;-><init>(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/TransactionBroadcast$1;)V

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)V

    .line 99
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    .local v2, "numConnected":I
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    const-wide/16 v6, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$602(Lcom/google/bitcoin/core/TransactionBroadcast;I)I

    .line 101
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v7}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$600(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v5, v6}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$702(Lcom/google/bitcoin/core/TransactionBroadcast;I)I

    .line 102
    sget-object v5, Lcom/google/bitcoin/core/TransactionBroadcast;->random:Ljava/util/Random;

    invoke-static {v4, v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 103
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$600(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v5

    invoke-interface {v4, v13, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 104
    invoke-static {}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$800()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "broadcastTransaction: We have {} peers, adding {} to the memory pool and sending to {} peers, will wait for {}: {}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    iget-object v8, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v8}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$300(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v9}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$600(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v9}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$700(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, ","

    invoke-static {v9}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/Peer;

    .line 108
    .local v3, "peer":Lcom/google/bitcoin/core/Peer;
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$800()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Caught exception sending to {}"

    invoke-interface {v5, v6, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "peer":Lcom/google/bitcoin/core/Peer;
    :cond_1
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$400(Lcom/google/bitcoin/core/TransactionBroadcast;)I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 120
    iget-object v5, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v5}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$900(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    iget-object v6, p0, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v6}, Lcom/google/bitcoin/core/TransactionBroadcast;->access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    return-void
.end method
