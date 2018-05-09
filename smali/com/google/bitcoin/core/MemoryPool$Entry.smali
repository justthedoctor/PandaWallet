.class Lcom/google/bitcoin/core/MemoryPool$Entry;
.super Ljava/lang/Object;
.source "MemoryPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/MemoryPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field tx:Lcom/google/bitcoin/core/MemoryPool$WeakTransactionReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/MemoryPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/MemoryPool$1;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/bitcoin/core/MemoryPool$Entry;-><init>()V

    return-void
.end method
