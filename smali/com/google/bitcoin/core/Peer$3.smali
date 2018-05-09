.class Lcom/google/bitcoin/core/Peer$3;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->processTransaction(Lcom/google/bitcoin/core/Transaction;)V
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

.field final synthetic val$fTx:Lcom/google/bitcoin/core/Transaction;

.field final synthetic val$wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$3;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$3;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    iput-object p3, p0, Lcom/google/bitcoin/core/Peer$3;->val$fTx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 638
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Could not download dependencies of tx {}"

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer$3;->val$fTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error was: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 624
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Peer$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 5
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
    .line 627
    .local p1, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    :try_start_0
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "{}: Dependency download complete!"

    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$3;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$3;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/core/Peer$3;->val$fTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1, v2, p1}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "{}: Wallet failed to process pending transaction {}"

    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$3;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Peer$3;->val$fTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error was: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
