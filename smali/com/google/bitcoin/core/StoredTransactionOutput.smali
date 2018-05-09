.class public Lcom/google/bitcoin/core/StoredTransactionOutput;
.super Ljava/lang/Object;
.source "StoredTransactionOutput.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NONCOINBASE_HEIGHT:I = -0xc8

.field private static final serialVersionUID:J = -0x795c36303113521dL


# instance fields
.field private hash:Lcom/google/bitcoin/core/Sha256Hash;

.field private height:I

.field private index:J

.field private scriptBytes:[B

.field private value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;JLjava/math/BigInteger;IZ[B)V
    .locals 0
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/math/BigInteger;
    .param p5, "height"    # I
    .param p6, "isCoinbase"    # Z
    .param p7, "scriptBytes"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 58
    iput-wide p2, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    .line 59
    iput-object p4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    .line 60
    if-eqz p6, :cond_0

    .end local p5    # "height":I
    :goto_0
    iput p5, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    .line 61
    iput-object p7, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    .line 62
    return-void

    .line 60
    .restart local p5    # "height":I
    :cond_0
    const/16 p5, -0xc8

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/TransactionOutput;IZ)V
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "out"    # Lcom/google/bitcoin/core/TransactionOutput;
    .param p3, "height"    # I
    .param p4, "isCoinbase"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 66
    invoke-virtual {p2}, Lcom/google/bitcoin/core/TransactionOutput;->getIndex()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    .line 67
    invoke-virtual {p2}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    .line 68
    if-eqz p4, :cond_0

    .end local p3    # "height":I
    :goto_0
    iput p3, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    .line 69
    invoke-virtual {p2}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    .line 70
    return-void

    .line 68
    .restart local p3    # "height":I
    :cond_0
    const/16 p3, -0xc8

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v3, v5, [B

    .line 74
    .local v3, "valueBytes":[B
    invoke-virtual {p1, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 75
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 76
    :cond_0
    invoke-static {v3, v6}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    .line 78
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 82
    .local v2, "scriptBytesLength":I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    .line 83
    iget-object v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 84
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 86
    :cond_1
    new-array v0, v8, [B

    .line 87
    .local v0, "hashBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 88
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 89
    :cond_2
    new-instance v4, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {v4, v0}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    iput-object v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 91
    new-array v1, v7, [B

    .line 92
    .local v1, "indexBytes":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 93
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 94
    :cond_3
    invoke-static {v1, v6}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    .line 96
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 150
    instance-of v0, p1, Lcom/google/bitcoin/core/StoredTransactionOutput;

    if-nez v0, :cond_0

    .line 151
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/StoredTransactionOutput;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    check-cast p1, Lcom/google/bitcoin/core/StoredTransactionOutput;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

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

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    return-wide v0
.end method

.method public getScriptBytes()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public serializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "bos"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lcom/google/bitcoin/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 158
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 159
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 160
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 161
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 162
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->scriptBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 165
    iget-wide v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 167
    iget v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    iget v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    iget v0, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->height:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    const-string v0, "Stored TxOut of %s (%s:%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->value:Ljava/math/BigInteger;

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/bitcoin/core/StoredTransactionOutput;->index:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
