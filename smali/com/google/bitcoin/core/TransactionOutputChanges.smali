.class public Lcom/google/bitcoin/core/TransactionOutputChanges;
.super Ljava/lang/Object;
.source "TransactionOutputChanges.java"


# instance fields
.field public final txOutsCreated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredTransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public final txOutsSpent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredTransactionOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v1, v3, v4

    .line 45
    .local v1, "numOutsCreated":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    new-instance v4, Lcom/google/bitcoin/core/StoredTransactionOutput;

    invoke-direct {v4, p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v2, v3, v4

    .line 53
    .local v2, "numOutsSpent":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 55
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    new-instance v4, Lcom/google/bitcoin/core/StoredTransactionOutput;

    invoke-direct {v4, p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredTransactionOutput;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredTransactionOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "txOutsCreated":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    .local p2, "txOutsSpent":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/StoredTransactionOutput;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public serializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 60
    .local v1, "numOutsCreated":I
    shr-int/lit8 v4, v1, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 61
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 62
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 63
    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 64
    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 65
    .local v3, "output":Lcom/google/bitcoin/core/StoredTransactionOutput;
    invoke-virtual {v3, p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->serializeToStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 68
    .end local v3    # "output":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_0
    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "numOutsSpent":I
    shr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 70
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 71
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 72
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 73
    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .line 74
    .restart local v3    # "output":Lcom/google/bitcoin/core/StoredTransactionOutput;
    invoke-virtual {v3, p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->serializeToStream(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 76
    .end local v3    # "output":Lcom/google/bitcoin/core/StoredTransactionOutput;
    :cond_1
    return-void
.end method
