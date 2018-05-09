.class public abstract Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;
.super Ljava/lang/Object;
.source "DSTU4145PointEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePoint(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "bytes"    # [B

    .prologue
    const/4 v8, 0x1

    .line 121
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 122
    .local v2, "k":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v8, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v6}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->trace(Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    .line 125
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-byte v7, p1, v6

    xor-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 127
    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v8, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v6}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 128
    .local v3, "xp":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v4, 0x0

    .line 129
    .local v4, "yp":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .end local v4    # "yp":Lorg/spongycastle/math/ec/ECFieldElement;
    check-cast v4, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 132
    .restart local v4    # "yp":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 134
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 141
    .local v0, "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->solveQuadraticEquation(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 142
    .local v5, "z":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v5, :cond_2

    .line 144
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid point compression"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_2
    invoke-static {v5}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->trace(Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 150
    :cond_3
    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 153
    .end local v0    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "z":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    new-instance v6, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v6, p0, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v6
.end method

.method public static encodePoint(Lorg/spongycastle/math/ec/ECPoint;)[B
    .locals 5
    .param p0, "Q"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 90
    .local v1, "x":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    .line 92
    .local v0, "bytes":[B
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 95
    .local v2, "y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {v2}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->trace(Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v0, v3

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 105
    .end local v2    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    return-object v0

    .line 101
    .restart local v2    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xfe

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_0
.end method

.method private static solveQuadraticEquation(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 11
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "beta"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 69
    .end local p1    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p1

    .line 43
    .restart local p1    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    sget-object v9, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 45
    .local v8, "zeroElement":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v7, 0x0

    .line 46
    .local v7, "z":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v0, 0x0

    .line 48
    .local v0, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 49
    .local v3, "rand":Ljava/util/Random;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v2

    .line 52
    .local v2, "m":I
    :cond_1
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v9}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 53
    .local v4, "t":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object v7, v8

    .line 54
    move-object v5, p1

    .line 55
    .local v5, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    add-int/lit8 v9, v2, -0x1

    if-gt v1, v9, :cond_2

    .line 57
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 58
    .local v6, "w2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 59
    invoke-virtual {v6, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v6    # "w2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_3

    .line 63
    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_1

    move-object p1, v7

    .line 69
    goto :goto_0
.end method

.method private static trace(Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "fe"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 20
    move-object v1, p0

    .line 21
    .local v1, "t":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 23
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method
