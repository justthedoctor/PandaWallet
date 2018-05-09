.class public Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;
.super Ljava/lang/Object;
.source "ECNewPublicKeyTransform.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairTransform;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

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
.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 28
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 30
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 32
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new public key transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 37
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    .line 49
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 41
    .restart local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_2

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new public key transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 47
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 8
    .param p1, "cipherText"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    .line 60
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v5, :cond_0

    .line 62
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ECNewPublicKeyTransform not initialised"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 66
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 68
    .local v2, "k":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 69
    .local v0, "g":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 70
    .local v1, "gamma":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewPublicKeyTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 72
    .local v4, "phi":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v5, Lorg/spongycastle/crypto/ec/ECPair;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v5
.end method
