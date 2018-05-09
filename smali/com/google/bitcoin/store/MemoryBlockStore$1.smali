.class Lcom/google/bitcoin/store/MemoryBlockStore$1;
.super Ljava/util/LinkedHashMap;
.source "MemoryBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/store/MemoryBlockStore;
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
        "Lcom/google/bitcoin/core/StoredBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/store/MemoryBlockStore;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/store/MemoryBlockStore;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/bitcoin/store/MemoryBlockStore$1;->this$0:Lcom/google/bitcoin/store/MemoryBlockStore;

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
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;>;"
    iget-object v0, p0, Lcom/google/bitcoin/store/MemoryBlockStore$1;->this$0:Lcom/google/bitcoin/store/MemoryBlockStore;

    invoke-static {v0}, Lcom/google/bitcoin/store/MemoryBlockStore;->access$000(Lcom/google/bitcoin/store/MemoryBlockStore;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
