.class public Lcom/google/bitcoin/core/BloomFilter;
.super Lcom/google/bitcoin/core/Message;
.source "BloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    }
.end annotation


# static fields
.field private static final MAX_FILTER_SIZE:J = 0x8ca0L

.field private static final MAX_HASH_FUNCS:I = 0x32


# instance fields
.field private data:[B

.field private hashFuncs:J

.field private nFlags:B

.field private nTweak:J


# direct methods
.method public constructor <init>(IDJ)V
    .locals 7
    .param p1, "elements"    # I
    .param p2, "falsePositiveRate"    # D
    .param p4, "randomNonce"    # J

    .prologue
    .line 69
    sget-object v6, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/BloomFilter;-><init>(IDJLcom/google/bitcoin/core/BloomFilter$BloomUpdate;)V

    .line 70
    return-void
.end method

.method public constructor <init>(IDJLcom/google/bitcoin/core/BloomFilter$BloomUpdate;)V
    .locals 7
    .param p1, "elements"    # I
    .param p2, "falsePositiveRate"    # D
    .param p4, "randomNonce"    # J
    .param p6, "updateFlag"    # Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    .prologue
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 101
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 104
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    int-to-double v3, p1

    mul-double/2addr v1, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const v2, 0x46500

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v0, v1, 0x8

    .line 106
    .local v0, "size":I
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "size":I
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    .line 108
    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    int-to-double v1, v1

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    .line 109
    iput-wide p4, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    .line 110
    invoke-virtual {p6}, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->ordinal()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/google/bitcoin/core/BloomFilter;->nFlags:B

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 63
    return-void
.end method

.method private hash(I[B)I
    .locals 13
    .param p1, "hashNum"    # I
    .param p2, "object"    # [B

    .prologue
    const v12, 0x1b873593

    const/16 v11, 0xf

    const v10, -0x3361d2af    # -8.2930312E7f

    .line 160
    int-to-long v6, p1

    const-wide v8, 0xfba4c795L

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 161
    .local v2, "h1":I
    const v0, -0x3361d2af    # -8.2930312E7f

    .line 162
    .local v0, "c1":I
    const v1, 0x1b873593

    .line 164
    .local v1, "c2":I
    array-length v6, p2

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v5, v6, 0x4

    .line 166
    .local v5, "numBlocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 167
    aget-byte v6, p2, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v4, v6, v7

    .line 172
    .local v4, "k1":I
    mul-int/2addr v4, v10

    .line 173
    invoke-static {v4, v11}, Lcom/google/bitcoin/core/BloomFilter;->rotateLeft32(II)I

    move-result v4

    .line 174
    mul-int/2addr v4, v12

    .line 176
    xor-int/2addr v2, v4

    .line 177
    const/16 v6, 0xd

    invoke-static {v2, v6}, Lcom/google/bitcoin/core/BloomFilter;->rotateLeft32(II)I

    move-result v2

    .line 178
    mul-int/lit8 v6, v2, 0x5

    const v7, -0x19ab949c

    add-int v2, v6, v7

    .line 166
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 181
    .end local v4    # "k1":I
    :cond_0
    const/4 v4, 0x0

    .line 182
    .restart local v4    # "k1":I
    array-length v6, p2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    .line 200
    :goto_1
    array-length v6, p2

    xor-int/2addr v2, v6

    .line 201
    ushr-int/lit8 v6, v2, 0x10

    xor-int/2addr v2, v6

    .line 202
    const v6, -0x7a143595

    mul-int/2addr v2, v6

    .line 203
    ushr-int/lit8 v6, v2, 0xd

    xor-int/2addr v2, v6

    .line 204
    const v6, -0x3d4d51cb

    mul-int/2addr v2, v6

    .line 205
    ushr-int/lit8 v6, v2, 0x10

    xor-int/2addr v2, v6

    .line 207
    int-to-long v6, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iget-object v8, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    rem-long/2addr v6, v8

    long-to-int v6, v6

    return v6

    .line 185
    :pswitch_0
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v4, v6

    .line 188
    :pswitch_1
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v4, v6

    .line 191
    :pswitch_2
    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v4, v6

    .line 192
    mul-int/2addr v4, v10

    invoke-static {v4, v11}, Lcom/google/bitcoin/core/BloomFilter;->rotateLeft32(II)I

    move-result v4

    mul-int/2addr v4, v12

    xor-int/2addr v2, v4

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static rotateLeft32(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "r"    # I

    .prologue
    .line 155
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/bitcoin/core/VarInt;

    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    iget-object v0, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-wide v0, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 145
    iget-wide v0, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 146
    iget-byte v0, p0, Lcom/google/bitcoin/core/BloomFilter;->nFlags:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 147
    return-void
.end method

.method public contains([B)Z
    .locals 5
    .param p1, "object"    # [B

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    invoke-direct {p0, v0, p1}, Lcom/google/bitcoin/core/BloomFilter;->hash(I[B)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->checkBitLE([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_1
    return v1

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 268
    instance-of v0, p1, Lcom/google/bitcoin/core/BloomFilter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/BloomFilter;

    iget-wide v0, v0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    iget-wide v2, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/BloomFilter;

    iget-wide v0, v0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    iget-wide v2, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    check-cast p1, Lcom/google/bitcoin/core/BloomFilter;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFalsePositiveRate(I)D
    .locals 10
    .param p1, "elements"    # I

    .prologue
    .line 117
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iget-wide v6, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    int-to-long v8, p1

    mul-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 276
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public insert([B)V
    .locals 5
    .param p1, "object"    # [B

    .prologue
    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    invoke-direct {p0, v0, p1}, Lcom/google/bitcoin/core/BloomFilter;->hash(I[B)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->setBitLE([BI)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public matchesAll()Z
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 261
    .local v1, "b":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 262
    const/4 v4, 0x0

    .line 263
    .end local v1    # "b":B
    :goto_1
    return v4

    .line 260
    .restart local v1    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "b":B
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public merge(Lcom/google/bitcoin/core/BloomFilter;)V
    .locals 7
    .param p1, "filter"    # Lcom/google/bitcoin/core/BloomFilter;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/google/bitcoin/core/BloomFilter;->matchesAll()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/BloomFilter;->matchesAll()Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    iget-object v3, p1, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    iget-wide v3, p1, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    iget-wide v5, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p1, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    iget-wide v5, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    aget-byte v2, v1, v0

    iget-object v3, p1, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    aget-byte v3, v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, v2

    .line 245
    goto :goto_0

    .line 251
    :cond_1
    new-array v1, v1, [B

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    iput-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    .line 253
    :cond_2
    return-void
.end method

.method parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/bitcoin/core/BloomFilter;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    .line 128
    iget-object v0, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x8ca0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/bitcoin/core/ProtocolException;

    const-string v1, "Bloom filter out of size range."

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/BloomFilter;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    .line 131
    iget-wide v0, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 132
    new-instance v0, Lcom/google/bitcoin/core/ProtocolException;

    const-string v1, "Bloom filter hash function count out of range"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/BloomFilter;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/BloomFilter;->nTweak:J

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/BloomFilter;->readBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/google/bitcoin/core/BloomFilter;->nFlags:B

    .line 135
    iget v0, p0, Lcom/google/bitcoin/core/BloomFilter;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/BloomFilter;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/BloomFilter;->length:I

    .line 136
    return-void
.end method

.method protected parseLite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 152
    return-void
.end method

.method public setMatchAll()V
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bloom Filter of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/BloomFilter;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/bitcoin/core/BloomFilter;->hashFuncs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hash functions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
