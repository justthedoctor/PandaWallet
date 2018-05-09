.class Lcom/google/bitcoin/store/SPVBlockStore$1;
.super Ljava/util/LinkedHashMap;
.source "SPVBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/store/SPVBlockStore;
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
.field final synthetic this$0:Lcom/google/bitcoin/store/SPVBlockStore;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/store/SPVBlockStore;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/bitcoin/store/SPVBlockStore$1;->this$0:Lcom/google/bitcoin/store/SPVBlockStore;

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
    .line 69
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/StoredBlock;>;"
    invoke-virtual {p0}, Lcom/google/bitcoin/store/SPVBlockStore$1;->size()I

    move-result v0

    const/16 v1, 0x802

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
