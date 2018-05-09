.class public Lorg/spongycastle/crypto/tls/TlsECCUtils;
.super Ljava/lang/Object;
.source "TlsECCUtils.java"


# static fields
.field public static final EXT_ec_point_formats:Ljava/lang/Integer;

.field public static final EXT_elliptic_curves:Ljava/lang/Integer;

.field private static final curveNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 29
    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    .line 30
    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    .line 32
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sect163k1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sect163r1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sect163r2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sect193r1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sect193r2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sect233k1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sect233r1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sect239k1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sect283k1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sect283r1"

    aput-object v2, v0, v1

    const-string v1, "sect409k1"

    aput-object v1, v0, v3

    const-string v1, "sect409r1"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "sect571k1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sect571r1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "secp160k1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "secp160r1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "secp160r2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "secp192k1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "secp192r1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "secp224k1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "secp224r1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "secp256k1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "secp256r1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "secp384r1"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "secp521r1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "brainpoolP256r1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "brainpoolP384r1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "brainpoolP512r1"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSupportedEllipticCurvesExtension(Ljava/util/Hashtable;[I)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "namedCurves"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->createSupportedEllipticCurvesExtension([I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "ecPointFormats"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->createSupportedPointFormatsExtension([S)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static areOnSameCurve(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/spongycastle/crypto/params/ECDomainParameters;)Z
    .locals 2
    .param p0, "a"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p1, "b"    # Lorg/spongycastle/crypto/params/ECDomainParameters;

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static calculateECDHBasicAgreement(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)[B
    .locals 3
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .prologue
    .line 382
    new-instance v1, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    .line 383
    .local v1, "basicAgreement":Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 384
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 391
    .local v0, "agreementValue":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->getFieldSize()I

    move-result v2

    invoke-static {v2, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    return-object v2
.end method

.method private static checkNamedCurve([II)V
    .locals 2
    .param p0, "namedCurves"    # [I
    .param p1, "namedCurve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 537
    :cond_0
    return-void
.end method

.method public static containsECCCipherSuites([I)Z
    .locals 2
    .param p0, "cipherSuites"    # [I

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 182
    aget v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 187
    :goto_1
    return v1

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createSupportedEllipticCurvesExtension([I)[B
    .locals 2
    .param p0, "namedCurves"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 68
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeUint16ArrayWithUint16Length([I)[B

    move-result-object v0

    return-object v0
.end method

.method public static createSupportedPointFormatsExtension([S)[B
    .locals 3
    .param p0, "ecPointFormats"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 75
    const/4 v1, 0x1

    new-array p0, v1, [S

    .end local p0    # "ecPointFormats":[S
    aput-short v2, p0, v2

    .line 92
    .restart local p0    # "ecPointFormats":[S
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeUint8ArrayWithUint8Length([S)[B

    move-result-object v1

    return-object v1

    .line 77
    :cond_1
    invoke-static {p0, v2}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [S

    .line 86
    .local v0, "tmp":[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    array-length v1, p0

    aput-short v2, v0, v1

    .line 89
    move-object p0, v0

    goto :goto_0
.end method

.method public static deserializeECFieldElement(I[B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "fieldSize"    # I
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    add-int/lit8 v1, p0, 0x7

    div-int/lit8 v0, v1, 0x8

    .line 348
    .local v0, "requiredLength":I
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 350
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 352
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p0, "ecPointFormats"    # [S
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static deserializeECPublicKey([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 4
    .param p0, "ecPointFormats"    # [S
    .param p1, "curve_params"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 372
    .local v0, "Y":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v2, v0, p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 374
    .end local v0    # "Y":Lorg/spongycastle/math/ec/ECPoint;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public static generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "ecParams"    # Lorg/spongycastle/crypto/params/ECDomainParameters;

    .prologue
    .line 396
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 397
    .local v0, "keyPairGenerator":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v1, p1, p0}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 398
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    return-object v1
.end method

.method public static generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "ecPointFormats"    # [S
    .param p2, "ecParams"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p3, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {p0, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 406
    .local v1, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 407
    .local v0, "ecPublicKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {p1, v2, p3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 409
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v2
.end method

.method public static getNameOfNamedCurve(I)Ljava/lang/String;
    .locals 2
    .param p0, "namedCurve"    # I

    .prologue
    .line 150
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 8
    .param p0, "namedCurve"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getNameOfNamedCurve(I)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "curveName":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-static {v6}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 164
    .local v7, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-eqz v7, :cond_0

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method public static getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 52
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readSupportedEllipticCurvesExtension([B)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 58
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readSupportedPointFormatsExtension([B)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static hasAnySupportedNamedCurves()Z
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompressionPreferred([SS)Z
    .locals 4
    .param p0, "ecPointFormats"    # [S
    .param p1, "compressionFormat"    # S

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 299
    aget-short v0, p0, v1

    .line 300
    .local v0, "ecPointFormat":S
    if-eqz v0, :cond_0

    .line 304
    if-ne v0, p1, :cond_2

    .line 306
    const/4 v2, 0x1

    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isECCCipherSuite(I)Z
    .locals 1
    .param p0, "cipherSuite"    # I

    .prologue
    .line 192
    sparse-switch p0, :sswitch_data_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 272
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0xc001 -> :sswitch_0
        0xc002 -> :sswitch_0
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc007 -> :sswitch_0
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00c -> :sswitch_0
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc011 -> :sswitch_0
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_0
        0xc014 -> :sswitch_0
        0xc015 -> :sswitch_0
        0xc016 -> :sswitch_0
        0xc017 -> :sswitch_0
        0xc018 -> :sswitch_0
        0xc019 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_0
        0xc036 -> :sswitch_0
        0xc037 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc039 -> :sswitch_0
        0xc03a -> :sswitch_0
        0xc03b -> :sswitch_0
        0xff04 -> :sswitch_0
        0xff05 -> :sswitch_0
        0xff06 -> :sswitch_0
        0xff07 -> :sswitch_0
        0xff0e -> :sswitch_0
        0xff0f -> :sswitch_0
        0xff14 -> :sswitch_0
        0xff15 -> :sswitch_0
        0xff16 -> :sswitch_0
        0xff17 -> :sswitch_0
        0xff1e -> :sswitch_0
        0xff1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportedNamedCurve(I)Z
    .locals 1
    .param p0, "namedCurve"    # I

    .prologue
    .line 288
    if-lez p0, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsECCUtils;->curveNames:[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readECExponent(ILjava/io/InputStream;)I
    .locals 4
    .param p0, "fieldSize"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 421
    .local v0, "K":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 423
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 424
    .local v1, "k":I
    if-lez v1, :cond_0

    if-ge v1, p0, :cond_0

    .line 426
    return v1

    .line 429
    .end local v1    # "k":I
    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public static readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "fieldSize"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECFieldElement(I[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static readECParameters([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 20
    .param p0, "namedCurves"    # [I
    .param p1, "ecPointFormats"    # [S
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v12

    .line 450
    .local v12, "curveType":S
    packed-switch v12, :pswitch_data_0

    .line 517
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x2f

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v12    # "curveType":S
    :catch_0
    move-exception v13

    .line 522
    .local v13, "e":Ljava/lang/RuntimeException;
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x2f

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 454
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v12    # "curveType":S
    :pswitch_0
    const v18, 0xff01

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 456
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v17

    .line 457
    .local v17, "prime_p":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->bitLength()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    .line 458
    .local v7, "a":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->bitLength()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v8

    .line 459
    .local v8, "b":Ljava/math/BigInteger;
    new-instance v2, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v7, v8}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 460
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 461
    .local v9, "base":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v16

    .line 462
    .local v16, "order":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    .line 463
    .local v11, "cofactor":Ljava/math/BigInteger;
    new-instance v18, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v9, v1, v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 514
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v7    # "a":Ljava/math/BigInteger;
    .end local v8    # "b":Ljava/math/BigInteger;
    .end local v9    # "base":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "cofactor":Ljava/math/BigInteger;
    .end local v16    # "order":Ljava/math/BigInteger;
    .end local v17    # "prime_p":Ljava/math/BigInteger;
    :goto_0
    return-object v18

    .line 467
    :pswitch_1
    const v18, 0xff02

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 469
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 470
    .local v3, "m":I
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v10

    .line 472
    .local v10, "basis":S
    packed-switch v10, :pswitch_data_1

    .line 492
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x2f

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 475
    :pswitch_2
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v14

    .line 476
    .local v14, "k":I
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    .line 477
    .restart local v7    # "a":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v8

    .line 478
    .restart local v8    # "b":Ljava/math/BigInteger;
    new-instance v2, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-direct {v2, v3, v14, v7, v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 494
    .end local v14    # "k":I
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPoint([SLorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 495
    .restart local v9    # "base":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v16

    .line 496
    .restart local v16    # "order":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    .line 497
    .restart local v11    # "cofactor":Ljava/math/BigInteger;
    new-instance v18, Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v9, v1, v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 483
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v7    # "a":Ljava/math/BigInteger;
    .end local v8    # "b":Ljava/math/BigInteger;
    .end local v9    # "base":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "cofactor":Ljava/math/BigInteger;
    .end local v16    # "order":Ljava/math/BigInteger;
    :pswitch_3
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v4

    .line 484
    .local v4, "k1":I
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v5

    .line 485
    .local v5, "k2":I
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECExponent(ILjava/io/InputStream;)I

    move-result v6

    .line 486
    .local v6, "k3":I
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v7

    .line 487
    .restart local v7    # "a":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECFieldElement(ILjava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v8

    .line 488
    .restart local v8    # "b":Ljava/math/BigInteger;
    new-instance v2, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 489
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    goto :goto_1

    .line 501
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v3    # "m":I
    .end local v4    # "k1":I
    .end local v5    # "k2":I
    .end local v6    # "k3":I
    .end local v7    # "a":Ljava/math/BigInteger;
    .end local v8    # "b":Ljava/math/BigInteger;
    .end local v10    # "basis":S
    :pswitch_4
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v15

    .line 502
    .local v15, "namedCurve":I
    invoke-static {v15}, Lorg/spongycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 509
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x2f

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 512
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->checkNamedCurve([II)V

    .line 514
    invoke-static {v15}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto/16 :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static readSupportedEllipticCurvesExtension([B)[I
    .locals 5
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'extensionData\' cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 104
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 105
    .local v1, "length":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    .line 107
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 110
    :cond_2
    div-int/lit8 v3, v1, 0x2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v2

    .line 112
    .local v2, "namedCurves":[I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 114
    return-object v2
.end method

.method public static readSupportedPointFormatsExtension([B)[S
    .locals 5
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'extensionData\' cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 126
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    .line 127
    .local v2, "length":S
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 129
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 132
    :cond_1
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v1

    .line 134
    .local v1, "ecPointFormats":[S
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 136
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 145
    :cond_2
    return-object v1
.end method

.method public static serializeECFieldElement(ILjava/math/BigInteger;)[B
    .locals 1
    .param p0, "fieldSize"    # I
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B
    .locals 3
    .param p0, "ecPointFormats"    # [S
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 327
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    const/4 v0, 0x0

    .line 328
    .local v0, "compressed":Z
    instance-of v2, v1, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-eqz v2, :cond_1

    .line 330
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isCompressionPreferred([SS)Z

    move-result v0

    .line 336
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    return-object v2

    .line 332
    :cond_1
    instance-of v2, v1, Lorg/spongycastle/math/ec/ECCurve$Fp;

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isCompressionPreferred([SS)Z

    move-result v0

    goto :goto_0
.end method

.method public static serializeECPublicKey([SLorg/spongycastle/crypto/params/ECPublicKeyParameters;)[B
    .locals 1
    .param p0, "ecPointFormats"    # [S
    .param p1, "keyParameters"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v0

    return-object v0
.end method

.method public static validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 0
    .param p0, "key"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    return-object p0
.end method

.method public static writeECExponent(ILjava/io/OutputStream;)V
    .locals 3
    .param p0, "k"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 542
    .local v0, "K":Ljava/math/BigInteger;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 543
    return-void
.end method

.method public static writeECFieldElement(ILjava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "fieldSize"    # I
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECFieldElement(ILjava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 553
    return-void
.end method

.method public static writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 548
    return-void
.end method

.method public static writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 558
    return-void
.end method

.method public static writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "ecPointFormats"    # [S
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 609
    return-void
.end method

.method public static writeExplicitECParameters([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "ecPointFormats"    # [S
    .param p1, "ecParameters"    # Lorg/spongycastle/crypto/params/ECDomainParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 563
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 564
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    instance-of v4, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    if-eqz v4, :cond_0

    .line 566
    invoke-static {v5, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    move-object v2, v0

    .line 568
    check-cast v2, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .line 569
    .local v2, "fp":Lorg/spongycastle/math/ec/ECCurve$Fp;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 599
    .end local v2    # "fp":Lorg/spongycastle/math/ec/ECCurve$Fp;
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 600
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECFieldElement(Lorg/spongycastle/math/ec/ECFieldElement;Ljava/io/OutputStream;)V

    .line 601
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->serializeECPoint([SLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 602
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 603
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 604
    return-void

    .line 571
    :cond_0
    instance-of v4, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-eqz v4, :cond_2

    .line 573
    invoke-static {v6, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    move-object v1, v0

    .line 575
    check-cast v1, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 576
    .local v1, "f2m":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v3

    .line 577
    .local v3, "m":I
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 578
    invoke-static {v3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 580
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    invoke-static {v5, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 583
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 587
    :cond_1
    invoke-static {v6, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 588
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    .line 589
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    .line 590
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v4

    invoke-static {v4, p2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECExponent(ILjava/io/OutputStream;)V

    goto :goto_0

    .line 596
    .end local v1    # "f2m":Lorg/spongycastle/math/ec/ECCurve$F2m;
    .end local v3    # "m":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'ecParameters\' not a known curve type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static writeNamedECParameters(ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "namedCurve"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 623
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 624
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 625
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 626
    return-void
.end method
