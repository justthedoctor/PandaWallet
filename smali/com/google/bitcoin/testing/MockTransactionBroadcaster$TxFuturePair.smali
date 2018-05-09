.class public Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;
.super Ljava/lang/Object;
.source "MockTransactionBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/testing/MockTransactionBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxFuturePair"
.end annotation


# instance fields
.field public final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 47
    iput-object p2, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 48
    return-void
.end method


# virtual methods
.method public succeed()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;->future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/testing/MockTransactionBroadcaster$TxFuturePair;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
