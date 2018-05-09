.class Lcom/google/bitcoin/core/Peer$6;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->downloadDependenciesInternal(Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$marker:Ljava/lang/Object;

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$rootTxHash:Lcom/google/bitcoin/core/Sha256Hash;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$6;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$6;->val$rootTxHash:Lcom/google/bitcoin/core/Sha256Hash;

    iput-object p3, p0, Lcom/google/bitcoin/core/Peer$6;->val$results:Ljava/util/List;

    iput-object p4, p0, Lcom/google/bitcoin/core/Peer$6;->val$marker:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/bitcoin/core/Peer$6;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$6;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 785
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 753
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Peer$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 758
    .local v0, "childFutures":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 759
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz v2, :cond_0

    .line 760
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "{}: Downloaded dependency of {}: {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/bitcoin/core/Peer$6;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/bitcoin/core/Peer$6;->val$rootTxHash:Lcom/google/bitcoin/core/Sha256Hash;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$6;->val$results:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$6;->this$0:Lcom/google/bitcoin/core/Peer;

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer$6;->val$marker:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/bitcoin/core/Peer$6;->val$results:Ljava/util/List;

    invoke-static {v3, v2, v4, v5}, Lcom/google/bitcoin/core/Peer;->access$200(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 767
    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$6;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer$6;->val$marker:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 781
    :goto_1
    return-void

    .line 771
    :cond_2
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lcom/google/bitcoin/core/Peer$6$1;

    invoke-direct {v4, p0}, Lcom/google/bitcoin/core/Peer$6$1;-><init>(Lcom/google/bitcoin/core/Peer$6;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_1
.end method
