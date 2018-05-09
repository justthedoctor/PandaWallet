.class public Lorg/spongycastle/crypto/ec/ECFixedTransform;
.super Ljava/lang/Object;
.source "ECFixedTransform.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private k:Ljava/math/BigInteger;

.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    .line 22
    return-void
.end method


# virtual methods
.method public getTransformValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 32
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECPublicKeyParameters are required for fixed transform."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 38
    return-void
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 6
    .param p1, "cipherText"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    .line 50
    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ECFixedTransform not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 56
    .local v0, "g":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 57
    .local v1, "gamma":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 59
    .local v2, "phi":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v3, Lorg/spongycastle/crypto/ec/ECPair;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v3
.end method
