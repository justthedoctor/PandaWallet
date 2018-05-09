.class public Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;
.source "HMacDSAKCalculator.java"

# interfaces
.implements Lorg/spongycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/spongycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    .line 36
    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 3
    .param p1, "t"    # [B

    .prologue
    .line 152
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 154
    .local v0, "v":Ljava/math/BigInteger;
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 156
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 159
    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 10
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "d"    # Ljava/math/BigInteger;
    .param p3, "message"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    .line 52
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v5, v9}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 53
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-static {v5, v8}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 55
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    .line 56
    .local v4, "x":[B
    invoke-static {p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 58
    .local v0, "dVal":[B
    array-length v5, v4

    array-length v6, v0

    sub-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v8, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    new-array v1, v5, [B

    .line 62
    .local v1, "m":[B
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 64
    .local v2, "mInt":Ljava/math/BigInteger;
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 69
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 71
    .local v3, "mVal":[B
    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v3, v8, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 75
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 76
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v5, v8}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 77
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length v6, v4

    invoke-virtual {v5, v4, v8, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 78
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length v6, v1

    invoke-virtual {v5, v1, v8, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 80
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v5, v6, v8}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 82
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 84
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 86
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v5, v6, v8}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 88
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 89
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v5, v9}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 90
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length v6, v4

    invoke-virtual {v5, v4, v8, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 91
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    array-length v6, v1

    invoke-virtual {v5, v1, v8, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 93
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v5, v6, v8}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 95
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 97
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 99
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v5, v6, v8}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 100
    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeterministic()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 104
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v1, v3, [B

    .line 108
    .local v1, "t":[B
    :goto_0
    const/4 v2, 0x0

    .line 110
    .local v2, "tOff":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 112
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 114
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v3, v4, v6}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 116
    array-length v3, v1

    sub-int/2addr v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 118
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-static {v3, v6, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v2, v3

    goto :goto_1

    .line 123
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-static {v3, v6, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 128
    :cond_1
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 130
    .local v0, "k":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 132
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 133
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v3, v6}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 135
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v3, v4, v6}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 137
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 139
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 141
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v3, v4, v6}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    goto :goto_0

    .line 145
    :cond_3
    return-object v0
.end method
