.class public Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "UnsafeByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 48
    iget v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 49
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 53
    iput v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    .line 54
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 65
    if-ltz p2, :cond_0

    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 68
    :cond_1
    if-nez p3, :cond_2

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_2
    iget v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    add-int v0, v1, p3

    .line 72
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    return-void
.end method
