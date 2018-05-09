.class public Lcom/google/bitcoin/core/StoredUndoableBlock;
.super Ljava/lang/Object;
.source "StoredUndoableBlock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4728046989881e45L


# instance fields
.field blockHash:Lcom/google/bitcoin/core/Sha256Hash;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private txOutChanges:Lcom/google/bitcoin/core/TransactionOutputChanges;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/TransactionOutputChanges;)V
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "txOutChanges"    # Lcom/google/bitcoin/core/TransactionOutputChanges;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->blockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->txOutChanges:Lcom/google/bitcoin/core/TransactionOutputChanges;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->blockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->txOutChanges:Lcom/google/bitcoin/core/TransactionOutputChanges;

    .line 48
    iput-object p2, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 79
    instance-of v0, p1, Lcom/google/bitcoin/core/StoredUndoableBlock;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/bitcoin/core/StoredUndoableBlock;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->blockHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    return-object v0
.end method

.method public getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->txOutChanges:Lcom/google/bitcoin/core/TransactionOutputChanges;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->blockHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undoable Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/StoredUndoableBlock;->blockHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
