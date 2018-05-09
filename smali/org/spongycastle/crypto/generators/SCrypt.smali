.class public Lorg/spongycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 7
    .param p0, "B"    # [I
    .param p1, "X1"    # [I
    .param p2, "X2"    # [I
    .param p3, "Y"    # [I
    .param p4, "r"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 98
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    invoke-static {p0, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    const/4 v0, 0x0

    .local v0, "BOff":I
    const/4 v1, 0x0

    .local v1, "YOff":I
    array-length v4, p0

    ushr-int/lit8 v2, v4, 0x1

    .line 102
    .local v2, "halfLen":I
    mul-int/lit8 v3, p4, 0x2

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 104
    invoke-static {p1, p0, v0, p2}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 106
    const/16 v4, 0x8

    invoke-static {v4, p2, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 107
    invoke-static {p1, v5, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int v4, v2, v0

    sub-int v1, v4, v1

    .line 110
    add-int/lit8 v0, v0, 0x10

    .line 102
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 113
    :cond_0
    array-length v4, p3

    invoke-static {p3, v5, p0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void
.end method

.method private static Clear([B)V
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 126
    if-eqz p0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 130
    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([II)V

    .line 138
    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2
    .param p0, "arrays"    # [[I

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 144
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 7
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I

    .prologue
    .line 20
    mul-int/lit16 v3, p3, 0x80

    .line 21
    .local v3, "MFLenBytes":I
    mul-int v6, p4, v3

    invoke-static {p0, p1, v6}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v5

    .line 23
    .local v5, "bytes":[B
    const/4 v0, 0x0

    .line 27
    .local v0, "B":[I
    :try_start_0
    array-length v6, v5

    ushr-int/lit8 v1, v6, 0x2

    .line 28
    .local v1, "BLen":I
    new-array v0, v1, [I

    .line 30
    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI[I)V

    .line 32
    ushr-int/lit8 v4, v3, 0x2

    .line 33
    .local v4, "MFLenWords":I
    const/4 v2, 0x0

    .local v2, "BOff":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 36
    invoke-static {v0, v2, p2, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->SMix([IIII)V

    .line 33
    add-int/2addr v2, v4

    goto :goto_0

    .line 39
    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    .line 41
    invoke-static {p0, v5, p5}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 45
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 46
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    return-object v6

    .line 45
    .end local v1    # "BLen":I
    .end local v2    # "BOff":I
    .end local v4    # "MFLenWords":I
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 46
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    throw v6
.end method

.method private static SMix([IIII)V
    .locals 12
    .param p0, "B"    # [I
    .param p1, "BOff"    # I
    .param p2, "N"    # I
    .param p3, "r"    # I

    .prologue
    .line 60
    mul-int/lit8 v0, p3, 0x20

    .line 62
    .local v0, "BCount":I
    const/16 v9, 0x10

    new-array v3, v9, [I

    .line 63
    .local v3, "blockX1":[I
    const/16 v9, 0x10

    new-array v4, v9, [I

    .line 64
    .local v4, "blockX2":[I
    new-array v5, v0, [I

    .line 66
    .local v5, "blockY":[I
    new-array v2, v0, [I

    .line 67
    .local v2, "X":[I
    new-array v1, p2, [[I

    .line 71
    .local v1, "V":[[I
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, p1, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p2, :cond_0

    .line 75
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v9

    aput-object v9, v1, v6

    .line 76
    invoke-static {v2, v3, v4, v5, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v8, p2, -0x1

    .line 80
    .local v8, "mask":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_1

    .line 82
    add-int/lit8 v9, v0, -0x10

    aget v9, v2, v9

    and-int v7, v9, v8

    .line 83
    .local v7, "j":I
    aget-object v9, v1, v7

    const/4 v10, 0x0

    invoke-static {v2, v9, v10, v2}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 84
    invoke-static {v2, v3, v4, v5, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .end local v7    # "j":I
    :cond_1
    const/4 v9, 0x0

    invoke-static {v2, v9, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 92
    const/4 v9, 0x4

    new-array v9, v9, [[I

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 94
    return-void

    .line 91
    .end local v6    # "i":I
    .end local v8    # "mask":I
    :catchall_0
    move-exception v9

    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 92
    const/4 v10, 0x4

    new-array v10, v10, [[I

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    throw v9
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 3
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "dkLen"    # I

    .prologue
    .line 52
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 53
    .local v1, "pGen":Lorg/spongycastle/crypto/PBEParametersGenerator;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 54
    mul-int/lit8 v2, p2, 0x8

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 55
    .local v0, "key":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    return-object v2
.end method

.method private static Xor([I[II[I)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "bOff"    # I
    .param p3, "output"    # [I

    .prologue
    .line 118
    array-length v1, p3

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 120
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    .line 118
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 1
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I

    .prologue
    .line 15
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method
