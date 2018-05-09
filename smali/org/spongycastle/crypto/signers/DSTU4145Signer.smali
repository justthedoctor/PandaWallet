.class public Lorg/spongycastle/crypto/signers/DSTU4145Signer;
.super Ljava/lang/Object;
.source "DSTU4145Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fieldElement2Integer(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "fieldElement"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 167
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 168
    .local v0, "num":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method private static generateRandomInteger(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 137
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method private static hash2FieldElement(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "hash"    # [B

    .prologue
    .line 154
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 155
    .local v0, "data":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->reverseBytes([B)V

    .line 156
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 157
    .local v1, "num":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    return-object v2
.end method

.method private static reverseBytes([B)V
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 146
    aget-byte v1, p0, v0

    .line 147
    .local v1, "tmp":B
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 148
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p0, v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    .prologue
    .line 60
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    .line 62
    .local v5, "parameters":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 64
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->hash2FieldElement(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 65
    .local v3, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 67
    sget-object v9, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v9}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 70
    :cond_0
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 80
    .local v4, "n":Ljava/math/BigInteger;
    :cond_1
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v9}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->generateRandomInteger(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 81
    .local v2, "e":Ljava/math/BigInteger;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 83
    .local v0, "Fe":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_1

    .line 85
    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 86
    .local v8, "y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {v4, v8}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->fieldElement2Integer(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v6

    .line 88
    .local v6, "r":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 92
    .local v7, "s":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    return-object v9
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 35
    if-eqz p1, :cond_1

    .line 37
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 39
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 41
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    .line 42
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :goto_0
    move-object v1, p2

    .line 49
    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 56
    :goto_1
    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 53
    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_1
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 9
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 99
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gtz v6, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v7

    .line 104
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 106
    .local v4, "parameters":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 107
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_0

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_0

    .line 112
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 114
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->hash2FieldElement(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 115
    .local v2, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    sget-object v6, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 120
    :cond_2
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v6, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v8, p3, v6, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 123
    .local v0, "R":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 129
    .local v5, "y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {v3, v5}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;->fieldElement2Integer(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method
