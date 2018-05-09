.class public Lcom/google/bitcoin/core/VersionedChecksummedBytes;
.super Ljava/lang/Object;
.source "VersionedChecksummedBytes.java"


# instance fields
.field protected bytes:[B

.field protected version:I


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    iput p1, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->version:I

    .line 45
    iput-object p2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/bitcoin/core/Base58;->decodeChecked(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    .local v0, "tmp":[B
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->version:I

    .line 38
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    .line 39
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    instance-of v1, p1, Lcom/google/bitcoin/core/VersionedChecksummedBytes;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;

    .line 69
    .local v0, "vcb":Lcom/google/bitcoin/core/VersionedChecksummedBytes;
    iget-object v1, v0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [B

    .line 53
    .local v0, "addressBytes":[B
    iget v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->version:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 54
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    array-length v4, v4

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v5, v2}, Lcom/google/bitcoin/core/Utils;->doubleDigest([BII)[B

    move-result-object v1

    .line 56
    .local v1, "check":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionedChecksummedBytes;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-static {v0}, Lcom/google/bitcoin/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
