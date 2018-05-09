.class public Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;
.super Ljava/lang/Object;
.source "HashSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final ONE:[B

.field private static final RESEED_MAX:J = 0x800000000000L

.field private static final seedlens:Ljava/util/Hashtable;


# instance fields
.field private _C:[B

.field private _V:[B

.field private _digest:Lorg/spongycastle/crypto/Digest;

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x378

    const/4 v2, 0x1

    const/16 v3, 0x1b8

    .line 16
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    .line 25
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 8
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/spongycastle/crypto/Digest;)I

    move-result v4

    if-le p2, v4, :cond_0

    .line 57
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Requested security strength is not supported by the derivation function"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v4

    if-ge v4, p2, :cond_1

    .line 62
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not enough entropy for security strength required"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    .line 66
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 67
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_securityStrength:I

    .line 68
    sget-object v4, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    .line 78
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 79
    .local v0, "entropy":[B
    invoke-static {v0, p5, p4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v2

    .line 80
    .local v2, "seedMaterial":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v2, v5}, Lorg/spongycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v1

    .line 82
    .local v1, "seed":[B
    iput-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    .line 83
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    .line 84
    .local v3, "subV":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    .line 87
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 88
    return-void
.end method

.method private addTo([B[B)V
    .locals 8
    .param p1, "longer"    # [B
    .param p2, "shorter"    # [B

    .prologue
    const/16 v7, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "carry":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v5, p2

    if-gt v1, v5, :cond_1

    .line 181
    array-length v5, p1

    sub-int/2addr v5, v1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    array-length v6, p2

    sub-int/2addr v6, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int v2, v5, v0

    .line 182
    .local v2, "res":I
    if-le v2, v7, :cond_0

    move v0, v3

    .line 183
    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v1

    int-to-byte v6, v2

    aput-byte v6, p1, v5

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 182
    goto :goto_1

    .line 186
    .end local v2    # "res":I
    :cond_1
    array-length v5, p2

    add-int/lit8 v1, v5, 0x1

    :goto_2
    array-length v5, p1

    if-gt v1, v5, :cond_3

    .line 188
    array-length v5, p1

    sub-int/2addr v5, v1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int v2, v5, v0

    .line 189
    .restart local v2    # "res":I
    if-le v2, v7, :cond_2

    move v0, v3

    .line 190
    :goto_3
    array-length v5, p1

    sub-int/2addr v5, v1

    int-to-byte v6, v2

    aput-byte v6, p1, v5

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v4

    .line 189
    goto :goto_3

    .line 192
    .end local v2    # "res":I
    :cond_3
    return-void
.end method

.method private hash([B)[B
    .locals 4
    .param p1, "input"    # [B

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 230
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 231
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 232
    return-object v0
.end method

.method private hashgen([BI)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "lengthInBits"    # I

    .prologue
    const/4 v9, 0x0

    .line 246
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 247
    .local v4, "digestSize":I
    div-int/lit8 v7, p2, 0x8

    div-int v6, v7, v4

    .line 249
    .local v6, "m":I
    array-length v7, p1

    new-array v2, v7, [B

    .line 250
    .local v2, "data":[B
    array-length v7, p1

    invoke-static {p1, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    div-int/lit8 v7, p2, 0x8

    new-array v0, v7, [B

    .line 255
    .local v0, "W":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v6, :cond_1

    .line 257
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v3

    .line 259
    .local v3, "dig":[B
    array-length v7, v0

    array-length v8, v3

    mul-int/2addr v8, v5

    sub-int/2addr v7, v8

    array-length v8, v3

    if-le v7, v8, :cond_0

    array-length v1, v3

    .line 262
    .local v1, "bytesToCopy":I
    :goto_1
    array-length v7, v3

    mul-int/2addr v7, v5

    invoke-static {v3, v9, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    sget-object v7, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    invoke-direct {p0, v2, v7}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "bytesToCopy":I
    :cond_0
    array-length v7, v0

    array-length v8, v3

    mul-int/2addr v8, v5

    sub-int v1, v7, v8

    goto :goto_1

    .line 267
    .end local v3    # "dig":[B
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 11
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    .line 114
    array-length v7, p1

    mul-int/lit8 v3, v7, 0x8

    .line 116
    .local v3, "numberOfBits":I
    const/high16 v7, 0x40000

    if-le v3, v7, :cond_0

    .line 118
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Number of bits per request limited to 262144"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 121
    :cond_0
    iget-wide v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide v9, 0x800000000000L

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 123
    const/4 v3, -0x1

    .line 170
    .end local v3    # "numberOfBits":I
    :goto_0
    return v3

    .line 126
    .restart local v3    # "numberOfBits":I
    :cond_1
    if-eqz p3, :cond_2

    .line 128
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->reseed([B)V

    .line 129
    const/4 p2, 0x0

    .line 133
    :cond_2
    if-eqz p2, :cond_3

    .line 135
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    array-length v8, p2

    add-int/2addr v7, v8

    new-array v2, v7, [B

    .line 136
    .local v2, "newInput":[B
    const/4 v7, 0x0

    const/4 v8, 0x2

    aput-byte v8, v2, v7

    .line 137
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v10, v10

    invoke-static {v7, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    array-length v9, p2

    invoke-static {p2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v6

    .line 142
    .local v6, "w":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v7, v6}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 146
    .end local v2    # "newInput":[B
    .end local v6    # "w":[B
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v7, v3}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->hashgen([BI)[B

    move-result-object v4

    .line 149
    .local v4, "rv":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [B

    .line 150
    .local v5, "subH":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v10, v10

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    const/4 v7, 0x0

    const/4 v8, 0x3

    aput-byte v8, v5, v7

    .line 153
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v0

    .line 156
    .local v0, "H":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v7, v0}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 157
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 158
    const/4 v7, 0x4

    new-array v1, v7, [B

    .line 159
    .local v1, "c":[B
    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v10, 0x18

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 160
    const/4 v7, 0x1

    iget-wide v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v10, 0x10

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 161
    const/4 v7, 0x2

    iget-wide v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v10, 0x8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 162
    const/4 v7, 0x3

    iget-wide v8, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 164
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v7, v1}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 166
    iget-wide v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 168
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {v4, v7, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public reseed([B)V
    .locals 8
    .param p1, "additionalInput"    # [B

    .prologue
    const/4 v7, 0x0

    .line 214
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v4}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 215
    .local v0, "entropy":[B
    sget-object v4, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-static {v4, v5, v0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v2

    .line 216
    .local v2, "seedMaterial":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v2, v5}, Lorg/spongycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v1

    .line 218
    .local v1, "seed":[B
    iput-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    .line 219
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    .line 220
    .local v3, "subV":[B
    aput-byte v7, v3, v7

    .line 221
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    .line 224
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 225
    return-void
.end method
