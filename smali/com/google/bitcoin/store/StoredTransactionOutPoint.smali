.class Lcom/google/bitcoin/store/StoredTransactionOutPoint;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x38670ba852d1f3b9L


# instance fields
.field hash:Lcom/google/bitcoin/core/Sha256Hash;

.field index:J


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;J)V
    .locals 0
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "index"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 42
    iput-wide p2, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 2
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 47
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    instance-of v0, p1, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    if-nez v0, :cond_0

    .line 74
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    invoke-virtual {v0}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->getIndex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    check-cast p1, Lcom/google/bitcoin/store/StoredTransactionOutPoint;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method getIndex()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored transaction out point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/bitcoin/store/StoredTransactionOutPoint;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
