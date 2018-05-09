.class public Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;
.super Ljava/lang/Object;
.source "ECNewRandomnessTransform.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private lastK:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 30
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 32
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 34
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new randomness transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    .line 52
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_2

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new randomness transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_2
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 50
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 8
    .param p1, "cipherText"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    .line 64
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v5, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ECNewRandomnessTransform not initialised"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 70
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 72
    .local v2, "k":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 73
    .local v0, "g":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 74
    .local v1, "gamma":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 76
    .local v4, "phi":Lorg/spongycastle/math/ec/ECPoint;
    iput-object v2, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    .line 78
    new-instance v5, Lorg/spongycastle/crypto/ec/ECPair;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v5
.end method
