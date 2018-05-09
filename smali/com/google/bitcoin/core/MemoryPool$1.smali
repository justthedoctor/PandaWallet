.class Lcom/google/bitcoin/core/MemoryPool$1;
.super Ljava/util/LinkedHashMap;
.source "MemoryPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/MemoryPool;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/google/bitcoin/core/Sha256Hash;",
        "Lcom/google/bitcoin/core/MemoryPool$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/MemoryPool;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/MemoryPool;I)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/bitcoin/core/MemoryPool$1;->this$0:Lcom/google/bitcoin/core/MemoryPool;

    iput p2, p0, Lcom/google/bitcoin/core/MemoryPool$1;->val$size:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/MemoryPool$Entry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/MemoryPool$Entry;>;"
    invoke-virtual {p0}, Lcom/google/bitcoin/core/MemoryPool$1;->size()I

    move-result v0

    iget v1, p0, Lcom/google/bitcoin/core/MemoryPool$1;->val$size:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
