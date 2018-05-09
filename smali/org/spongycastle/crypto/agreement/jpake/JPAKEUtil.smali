.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;
.super Ljava/lang/Object;
.source "JPAKEUtil.java"


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    .line 30
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "gA"    # Ljava/math/BigInteger;
    .param p3, "x2s"    # Ljava/math/BigInteger;

    .prologue
    .line 119
    invoke-virtual {p2, p3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "gx1"    # Ljava/math/BigInteger;
    .param p2, "gx3"    # Ljava/math/BigInteger;
    .param p3, "gx4"    # Ljava/math/BigInteger;

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 79
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "gr"    # Ljava/math/BigInteger;
    .param p2, "gx"    # Ljava/math/BigInteger;
    .param p3, "participantId"    # Ljava/lang/String;
    .param p4, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 159
    invoke-interface {p4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 161
    invoke-static {p4, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 163
    invoke-static {p4, p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 165
    invoke-static {p4, p2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 167
    invoke-static {p4, p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V

    .line 169
    invoke-interface {p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 170
    .local v0, "output":[B
    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 172
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static calculateKeyingMaterial(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "gx4"    # Ljava/math/BigInteger;
    .param p3, "x2"    # Ljava/math/BigInteger;
    .param p4, "s"    # Ljava/math/BigInteger;
    .param p5, "B"    # Ljava/math/BigInteger;

    .prologue
    .line 267
    invoke-virtual {p3, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateMacKey(Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)[B
    .locals 2
    .param p0, "keyingMaterial"    # Ljava/math/BigInteger;
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 394
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 396
    invoke-static {p1, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 400
    const-string v1, "JPAKE_KC"

    invoke-static {p1, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V

    .line 402
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 403
    .local v0, "output":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 405
    return-object v0
.end method

.method public static calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "participantId"    # Ljava/lang/String;
    .param p1, "partnerParticipantId"    # Ljava/lang/String;
    .param p2, "gx1"    # Ljava/math/BigInteger;
    .param p3, "gx2"    # Ljava/math/BigInteger;
    .param p4, "gx3"    # Ljava/math/BigInteger;
    .param p5, "gx4"    # Ljava/math/BigInteger;
    .param p6, "keyingMaterial"    # Ljava/math/BigInteger;
    .param p7, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-static {p6, p7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacKey(Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v1

    .line 361
    .local v1, "macKey":[B
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p7}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 362
    .local v0, "mac":Lorg/spongycastle/crypto/macs/HMac;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v3

    new-array v2, v3, [B

    .line 363
    .local v2, "macOutput":[B
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 368
    const-string v3, "KC_1_U"

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 369
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 370
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 371
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 372
    invoke-static {v0, p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 373
    invoke-static {v0, p4}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 374
    invoke-static {v0, p5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 376
    invoke-virtual {v0, v2, v4}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 378
    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 380
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v3
.end method

.method public static calculateS([C)Ljava/math/BigInteger;
    .locals 2
    .param p0, "password"    # [C

    .prologue
    .line 68
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "x2"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 8
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "gx"    # Ljava/math/BigInteger;
    .param p4, "x"    # Ljava/math/BigInteger;
    .param p5, "participantId"    # Ljava/lang/String;
    .param p6, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p7, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 136
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/math/BigInteger;

    .line 139
    .local v5, "zeroKnowledgeProof":[Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    .line 140
    .local v4, "vMin":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 141
    .local v3, "vMax":Ljava/math/BigInteger;
    invoke-static {v4, v3, p7}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 143
    .local v2, "v":Ljava/math/BigInteger;
    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 144
    .local v0, "gv":Ljava/math/BigInteger;
    invoke-static {p2, v0, p3, p5, p6}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v1

    .line 146
    .local v1, "h":Ljava/math/BigInteger;
    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 147
    const/4 v6, 0x1

    invoke-virtual {p4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    aput-object v7, v5, v6

    .line 149
    return-object v5
.end method

.method public static generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 42
    sget-object v1, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    .line 43
    .local v1, "min":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 44
    .local v0, "max":Ljava/math/BigInteger;
    invoke-static {v1, v0, p1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static generateX2(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 57
    sget-object v1, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    .line 58
    .local v1, "min":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    .local v0, "max":Ljava/math/BigInteger;
    invoke-static {v1, v0, p1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 500
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 3
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 472
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 473
    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 474
    return-void
.end method

.method private static updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 3
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "bigInteger"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 457
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 458
    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 459
    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 4
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 479
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 480
    array-length v1, v0

    invoke-interface {p0, v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 481
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 482
    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "bigInteger"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 463
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 464
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 465
    array-length v1, v0

    invoke-interface {p0, v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 466
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 467
    return-void
.end method

.method private static updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V
    .locals 3
    .param p0, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 494
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 495
    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 496
    return-void
.end method

.method private static updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V
    .locals 3
    .param p0, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p1, "bigInteger"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 487
    .local v0, "byteArray":[B
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 488
    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 489
    return-void
.end method

.method public static validateGa(Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "ga"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "ga is equal to 1.  It should not be.  The chances of this happening are on the order of 2^160 for a 160-bit q.  Try again."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    return-void
.end method

.method public static validateGx4(Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "gx4"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "g^x validation failed.  g^x should not be 1."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method public static validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 10
    .param p0, "participantId"    # Ljava/lang/String;
    .param p1, "partnerParticipantId"    # Ljava/lang/String;
    .param p2, "gx1"    # Ljava/math/BigInteger;
    .param p3, "gx2"    # Ljava/math/BigInteger;
    .param p4, "gx3"    # Ljava/math/BigInteger;
    .param p5, "gx4"    # Ljava/math/BigInteger;
    .param p6, "keyingMaterial"    # Ljava/math/BigInteger;
    .param p7, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p8, "partnerMacTag"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 436
    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v9

    .line 446
    .local v9, "expectedMacTag":Ljava/math/BigInteger;
    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Lorg/spongycastle/crypto/CryptoException;

    const-string v2, "Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match."

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    return-void
.end method

.method public static validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    return-void
.end method

.method public static validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "participantId1"    # Ljava/lang/String;
    .param p1, "participantId2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both participants are using the same participantId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). This is not allowed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Each participant must use a unique participantId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method public static validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "expectedParticipantId"    # Ljava/lang/String;
    .param p1, "actualParticipantId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received payload from incorrect partner ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Expected to receive payload from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    return-void
.end method

.method public static validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)V
    .locals 5
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "gx"    # Ljava/math/BigInteger;
    .param p4, "zeroKnowledgeProof"    # [Ljava/math/BigInteger;
    .param p5, "participantId"    # Ljava/lang/String;
    .param p6, "digest"    # Lorg/spongycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 231
    const/4 v3, 0x0

    aget-object v0, p4, v3

    .line 232
    .local v0, "gv":Ljava/math/BigInteger;
    aget-object v2, p4, v4

    .line 234
    .local v2, "r":Ljava/math/BigInteger;
    invoke-static {p2, v0, p3, p5, p6}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v1

    .line 235
    .local v1, "h":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p3, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p3, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    :cond_0
    new-instance v3, Lorg/spongycastle/crypto/CryptoException;

    const-string v4, "Zero-knowledge proof validation failed"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_1
    return-void
.end method
