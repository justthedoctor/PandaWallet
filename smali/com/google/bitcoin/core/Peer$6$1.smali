.class Lcom/google/bitcoin/core/Peer$6$1;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer$6;->onSuccess(Ljava/util/List;)V
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/bitcoin/core/Peer$6;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer$6;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$6$1;->this$1:Lcom/google/bitcoin/core/Peer$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$6$1;->this$1:Lcom/google/bitcoin/core/Peer$6;

    iget-object v0, v0, Lcom/google/bitcoin/core/Peer$6;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 778
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 771
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Peer$6$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$6$1;->this$1:Lcom/google/bitcoin/core/Peer$6;

    iget-object v0, v0, Lcom/google/bitcoin/core/Peer$6;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$6$1;->this$1:Lcom/google/bitcoin/core/Peer$6;

    iget-object v1, v1, Lcom/google/bitcoin/core/Peer$6;->val$marker:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method
