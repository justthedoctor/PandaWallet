.class Lcom/google/bitcoin/core/Peer$5;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Peer;->downloadDependencies(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$results:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Peer;Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$5;->this$0:Lcom/google/bitcoin/core/Peer;

    iput-object p2, p0, Lcom/google/bitcoin/core/Peer$5;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/bitcoin/core/Peer$5;->val$results:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$5;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 697
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "ignored"    # Ljava/lang/Object;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/bitcoin/core/Peer$5;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$5;->val$results:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 693
    return-void
.end method
