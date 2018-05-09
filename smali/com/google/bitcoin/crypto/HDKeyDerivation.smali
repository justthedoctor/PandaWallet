.class public final Lcom/google/bitcoin/crypto/HDKeyDerivation;
.super Ljava/lang/Object;
.source "HDKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/crypto/HDKeyDerivation$1;,
        Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MASTER_HMAC_SHA512:Lorg/spongycastle/crypto/macs/HMac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/bitcoin/crypto/HDKeyDerivation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/bitcoin/crypto/HDKeyDerivation;->$assertionsDisabled:Z

    .line 38
    const-string v0, "Bitcoin seed"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/crypto/HDUtils;->createHmacSha512Digest([B)Lorg/spongycastle/crypto/macs/HMac;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/crypto/HDKeyDerivation;->MASTER_HMAC_SHA512:Lorg/spongycastle/crypto/macs/HMac;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1
    .param p0, "integer"    # Ljava/math/BigInteger;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1
    .param p0, "integer"    # Ljava/math/BigInteger;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createMasterPrivKeyFromBytes([B[B)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 6
    .param p0, "privKeyBytes"    # [B
    .param p1, "chainCode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/HDDerivationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 71
    .local v4, "privateKeyFieldElt":Ljava/math/BigInteger;
    const-string v0, "Generated master key is invalid."

    invoke-static {v4, v0}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 72
    const-string v0, "Generated master key is invalid."

    invoke-static {v4, v0}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v2, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/google/bitcoin/crypto/DeterministicKey;)V

    return-object v0
.end method

.method public static createMasterPrivateKey([B)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 10
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/HDDerivationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x40

    const/16 v8, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 50
    array-length v4, p0

    const/16 v7, 0x8

    if-le v4, v7, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "Seed is too short and could be brute forced"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    sget-object v4, Lcom/google/bitcoin/crypto/HDKeyDerivation;->MASTER_HMAC_SHA512:Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {v4, p0}, Lcom/google/bitcoin/crypto/HDUtils;->hmacSha512(Lorg/spongycastle/crypto/macs/HMac;[B)[B

    move-result-object v0

    .line 55
    .local v0, "i":[B
    array-length v4, v0

    if-ne v4, v9, :cond_1

    :goto_1
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 56
    invoke-static {v0, v6, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 57
    .local v1, "il":[B
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 58
    .local v2, "ir":[B
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    invoke-static {v1, v2}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->createMasterPrivKeyFromBytes([B[B)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v3

    .line 60
    .local v3, "masterPrivKey":Lcom/google/bitcoin/crypto/DeterministicKey;
    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 61
    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 62
    return-object v3

    .end local v0    # "i":[B
    .end local v1    # "il":[B
    .end local v2    # "ir":[B
    .end local v3    # "masterPrivKey":Lcom/google/bitcoin/crypto/DeterministicKey;
    :cond_0
    move v4, v6

    .line 50
    goto :goto_0

    .restart local v0    # "i":[B
    :cond_1
    move v5, v6

    .line 55
    goto :goto_1
.end method

.method public static createMasterPubKeyFromBytes([B[B)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 6
    .param p0, "pubKeyBytes"    # [B
    .param p1, "chainCode"    # [B

    .prologue
    const/4 v4, 0x0

    .line 77
    new-instance v0, Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/google/bitcoin/crypto/DeterministicKey;)V

    return-object v0
.end method

.method public static deriveChildKey(Lcom/google/bitcoin/crypto/DeterministicKey;I)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 1
    .param p0, "parent"    # Lcom/google/bitcoin/crypto/DeterministicKey;
    .param p1, "childNumber"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/google/bitcoin/crypto/ChildNumber;

    invoke-direct {v0, p1}, Lcom/google/bitcoin/crypto/ChildNumber;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->deriveChildKey(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public static deriveChildKey(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 8
    .param p0, "parent"    # Lcom/google/bitcoin/crypto/DeterministicKey;
    .param p1, "childNumber"    # Lcom/google/bitcoin/crypto/ChildNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/HDDerivationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-static {p0, p1}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->deriveChildKeyBytes(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;

    move-result-object v6

    .line 95
    .local v6, "rawKey":Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;
    new-instance v0, Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/bitcoin/crypto/HDUtils;->append(Lcom/google/common/collect/ImmutableList;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v6}, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->access$000(Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->hasPrivate()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->hasPrivate()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-static {v6}, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->access$100(Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;)[B

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    :cond_0
    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/google/bitcoin/crypto/DeterministicKey;)V

    return-object v0

    :cond_1
    sget-object v3, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-static {v6}, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->access$100(Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0
.end method

.method private static deriveChildKeyBytes(Lcom/google/bitcoin/crypto/DeterministicKey;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;
    .locals 12
    .param p0, "parent"    # Lcom/google/bitcoin/crypto/DeterministicKey;
    .param p1, "childNumber"    # Lcom/google/bitcoin/crypto/ChildNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/HDDerivationException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-static {v10}, Lcom/google/bitcoin/crypto/HDUtils;->getBytes(Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v8

    .line 107
    .local v8, "parentPublicKey":[B
    sget-boolean v10, Lcom/google/bitcoin/crypto/HDKeyDerivation;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    array-length v10, v8

    const/16 v11, 0x21

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    array-length v11, v8

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(I)V

    throw v10

    .line 108
    :cond_0
    const/16 v10, 0x25

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 109
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/ChildNumber;->isPrivateDerivation()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPrivKeyBytes33()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/ChildNumber;->getI()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v10

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/bitcoin/crypto/HDUtils;->hmacSha512([B[B)[B

    move-result-object v3

    .line 116
    .local v3, "i":[B
    sget-boolean v10, Lcom/google/bitcoin/crypto/HDKeyDerivation;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    array-length v10, v3

    const/16 v11, 0x40

    if-eq v10, v11, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    array-length v11, v3

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(I)V

    throw v10

    .line 112
    .end local v3    # "i":[B
    :cond_1
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 117
    .restart local v3    # "i":[B
    :cond_2
    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-static {v3, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 118
    .local v4, "il":[B
    const/16 v10, 0x20

    const/16 v11, 0x40

    invoke-static {v3, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 119
    .local v1, "chainCode":[B
    new-instance v5, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v5, v10, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 120
    .local v5, "ilInt":Ljava/math/BigInteger;
    const-string v10, "Illegal derived key: I_L >= n"

    invoke-static {v5, v10}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPrivAsFieldElement()Ljava/math/BigInteger;

    move-result-object v9

    .line 123
    .local v9, "privAsFieldElement":Ljava/math/BigInteger;
    if-eqz v9, :cond_3

    .line 124
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 125
    .local v7, "ki":Ljava/math/BigInteger;
    const-string v10, "Illegal derived key: derived private key equals 0."

    invoke-static {v7, v10}, Lcom/google/bitcoin/crypto/HDKeyDerivation;->assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 133
    .end local v7    # "ki":Ljava/math/BigInteger;
    .local v6, "keyBytes":[B
    :goto_1
    new-instance v10, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v1, v11}, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;-><init>([B[BLcom/google/bitcoin/crypto/HDKeyDerivation$1;)V

    return-object v10

    .line 128
    .end local v6    # "keyBytes":[B
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/ChildNumber;->isPrivateDerivation()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    const-string v11, "Can\'t use private derivation with public keys only."

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 129
    sget-object v10, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 130
    .local v0, "Ki":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    const-string v11, "Illegal derived key: derived public key equals infinity."

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 131
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v6

    .restart local v6    # "keyBytes":[B
    goto :goto_1

    .line 128
    .end local v0    # "Ki":Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "keyBytes":[B
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 130
    .restart local v0    # "Ki":Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    const/4 v10, 0x0

    goto :goto_3
.end method
