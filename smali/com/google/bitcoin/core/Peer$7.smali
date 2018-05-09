.class Lcom/google/bitcoin/core/Peer$7;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->downloadDependenciesInternal(Lcom/google/bitcoin/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$nonce:J


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;J)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$7;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-wide p2, p0, Lcom/google/bitcoin/core/Peer$7;->val$nonce:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 797
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer$7;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-static {v2}, Lcom/google/bitcoin/core/Peer;->access$300(Lcom/google/bitcoin/core/Peer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Peer$GetDataRequest;

    .line 798
    .local v1, "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    iget-wide v2, v1, Lcom/google/bitcoin/core/Peer$GetDataRequest;->nonce:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/Peer$7;->val$nonce:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 799
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "{}: Bottomed out dep tree at {}"

    iget-object v4, v1, Lcom/google/bitcoin/core/Peer$GetDataRequest;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v2, v3, p0, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    iget-object v2, v1, Lcom/google/bitcoin/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 801
    iget-object v2, p0, Lcom/google/bitcoin/core/Peer$7;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-static {v2}, Lcom/google/bitcoin/core/Peer;->access$300(Lcom/google/bitcoin/core/Peer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    .end local v1    # "req":Lcom/google/bitcoin/core/Peer$GetDataRequest;
    :cond_1
    return-void
.end method
