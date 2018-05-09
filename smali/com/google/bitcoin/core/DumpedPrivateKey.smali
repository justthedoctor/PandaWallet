.class public Lcom/google/bitcoin/core/DumpedPrivateKey;
.super Lcom/google/bitcoin/core/VersionedChecksummedBytes;
.source "DumpedPrivateKey.java"


# instance fields
.field private compressed:Z


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x20

    .line 60
    invoke-direct {p0, p2}, Lcom/google/bitcoin/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_2

    .line 69
    iput-boolean v3, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    .line 70
    iget-object v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 66
    new-instance v0, Lcom/google/bitcoin/core/AddressFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched version number, trying to cross networks? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lcom/google/bitcoin/core/AddressFormatException;

    const-string v1, "Wrong number of bytes for a private key, not 32 or 33"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BZ)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "keyBytes"    # [B
    .param p3, "compressed"    # Z

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result v0

    invoke-static {p2, p3}, Lcom/google/bitcoin/core/DumpedPrivateKey;->encode([BZ)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/core/VersionedChecksummedBytes;-><init>(I[B)V

    .line 36
    iput-boolean p3, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    .line 37
    return-void
.end method

.method private static encode([BZ)[B
    .locals 6
    .param p0, "keyBytes"    # [B
    .param p1, "compressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x20

    const/4 v3, 0x0

    .line 40
    array-length v1, p0

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Private keys must be 32 bytes"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    if-nez p1, :cond_1

    .line 48
    .end local p0    # "keyBytes":[B
    :goto_1
    return-object p0

    .restart local p0    # "keyBytes":[B
    :cond_0
    move v1, v3

    .line 40
    goto :goto_0

    .line 45
    :cond_1
    const/16 v1, 0x21

    new-array v0, v1, [B

    .line 46
    .local v0, "bytes":[B
    invoke-static {p0, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    aput-byte v2, v0, v5

    move-object p0, v0

    .line 48
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Z
    instance-of v2, p1, Lcom/google/bitcoin/core/VersionedChecksummedBytes;

    if-eqz v2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    move-object v2, p1

    check-cast v2, Lcom/google/bitcoin/core/VersionedChecksummedBytes;

    iget-object v2, v2, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 92
    :cond_0
    instance-of v2, p1, Lcom/google/bitcoin/core/DumpedPrivateKey;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/google/bitcoin/core/DumpedPrivateKey;

    .line 94
    .local v0, "o":Lcom/google/bitcoin/core/DumpedPrivateKey;
    iget-object v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    iget-object v3, v0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    iget v3, v0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    iget-boolean v3, v0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 98
    .end local v0    # "o":Lcom/google/bitcoin/core/DumpedPrivateKey;
    :cond_1
    :goto_0
    return v1

    .line 94
    .restart local v0    # "o":Lcom/google/bitcoin/core/DumpedPrivateKey;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKey()Lcom/google/bitcoin/core/ECKey;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->bytes:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/bitcoin/core/DumpedPrivateKey;->compressed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
