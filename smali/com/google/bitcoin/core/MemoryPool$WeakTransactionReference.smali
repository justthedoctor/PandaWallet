.class Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;
.super Ljava/lang/ref/WeakReference;
.source "MemoryPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/MemoryPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakTransactionReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field public hash:Lcom/google/bitcoin/core/Sha256Hash;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Transaction;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 63
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 64
    return-void
.end method
