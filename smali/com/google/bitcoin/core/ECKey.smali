.class public Lcom/google/bitcoin/core/ECKey;
.super Ljava/lang/Object;
.source "ECKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    }
.end annotation


# static fields
.field public static final CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field public static FAKE_SIGNATURES:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HALF_CURVE_ORDER:Ljava/math/BigInteger;

.field private static final log:Lorg/slf4j/Logger;

.field private static final secureRandom:Ljava/security/SecureRandom;

.field private static final serialVersionUID:J = -0xa1b2cb09bec6b98L


# instance fields
.field private creationTimeSeconds:J

.field private encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

.field private transient keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

.field private priv:Ljava/math/BigInteger;

.field private pub:[B

.field private transient pubKeyHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 74
    const-class v1, Lcom/google/bitcoin/core/ECKey;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    .line 90
    const-string v1, "secp256k1"

    invoke-static {v1}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 91
    .local v0, "params":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v1, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 92
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/ECKey;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    .line 93
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lcom/google/bitcoin/core/ECKey;->secureRandom:Ljava/security/SecureRandom;

    .line 439
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/bitcoin/core/ECKey;->FAKE_SIGNATURES:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 124
    .local v0, "generator":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    sget-object v5, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    sget-object v6, Lcom/google/bitcoin/core/ECKey;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v1, v5, v6}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    .line 125
    .local v1, "keygenParams":Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 126
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v2

    .line 127
    .local v2, "keypair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 128
    .local v3, "privParams":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 129
    .local v4, "pubParams":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 130
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    .line 132
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;[BLcom/google/bitcoin/crypto/KeyCrypter;)V
    .locals 1
    .param p1, "encryptedPrivateKey"    # Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pubKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;

    .prologue
    .line 170
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, v0, p2}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    .line 172
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/crypto/KeyCrypter;

    iput-object v0, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    .line 173
    iput-object p1, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "privKey"    # Ljava/math/BigInteger;

    .prologue
    .line 145
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "privKey"    # Ljava/math/BigInteger;
    .param p2, "pubKey"    # Ljava/math/BigInteger;

    .prologue
    .line 150
    const/16 v0, 0x41

    invoke-static {p2, v0}, Lcom/google/bitcoin/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V

    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1, "privKey"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pubKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;[BZ)V
    .locals 2
    .param p1, "privKey"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pubKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "compressed"    # Z

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECKey requires at least private or public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    .line 188
    if-nez p2, :cond_1

    .line 190
    invoke-static {p1, p3}, Lcom/google/bitcoin/core/ECKey;->publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-object p2, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    goto :goto_0
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .param p1, "privKeyBytes"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pubKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V

    .line 160
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method private static decompressKey(Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p0, "xBN"    # Ljava/math/BigInteger;
    .param p1, "yBit"    # Z

    .prologue
    .line 781
    new-instance v1, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    .line 782
    .local v1, "x9":Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    sget-object v2, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 783
    .local v0, "compEnc":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 784
    sget-object v2, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 783
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static encryptionIsReversible(Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 9
    .param p0, "originalKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p1, "encryptedKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p2, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;
    .param p3, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;

    .prologue
    const/4 v5, 0x0

    .line 896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The check that encryption could be reversed failed for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "genericErrorText":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/google/bitcoin/core/ECKey;->decrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v4

    .line 899
    .local v4, "rebornUnencryptedKey":Lcom/google/bitcoin/core/ECKey;
    if-nez v4, :cond_0

    .line 900
    sget-object v6, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "The test decrypted key was missing."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 929
    .end local v4    # "rebornUnencryptedKey":Lcom/google/bitcoin/core/ECKey;
    :goto_0
    return v5

    .line 904
    .restart local v4    # "rebornUnencryptedKey":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v3

    .line 905
    .local v3, "originalPrivateKeyBytes":[B
    if-eqz v3, :cond_4

    .line 906
    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v6

    if-nez v6, :cond_1

    .line 907
    sget-object v6, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "The test decrypted key was missing."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/bitcoin/crypto/KeyCrypterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    .end local v3    # "originalPrivateKeyBytes":[B
    .end local v4    # "rebornUnencryptedKey":Lcom/google/bitcoin/core/ECKey;
    :catch_0
    move-exception v2

    .line 924
    .local v2, "kce":Lcom/google/bitcoin/crypto/KeyCrypterException;
    sget-object v6, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lcom/google/bitcoin/crypto/KeyCrypterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 910
    .end local v2    # "kce":Lcom/google/bitcoin/crypto/KeyCrypterException;
    .restart local v3    # "originalPrivateKeyBytes":[B
    .restart local v4    # "rebornUnencryptedKey":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    :try_start_1
    array-length v6, v3

    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_2

    .line 911
    sget-object v6, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "The test decrypted private key was a different length to the original."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 915
    aget-byte v6, v3, v1

    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    aget-byte v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 916
    sget-object v6, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Byte "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of the private key did not match the original."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/bitcoin/crypto/KeyCrypterException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 914
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 929
    .end local v1    # "i":I
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private static extractKeyFromASN1([B)Lcom/google/bitcoin/core/ECKey;
    .locals 13
    .param p0, "asn1privkey"    # [B

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 586
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 587
    .local v1, "decoder":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DLSequence;

    .line 588
    .local v7, "seq":Lorg/spongycastle/asn1/DLSequence;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/DLSequence;->size()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    :goto_0
    const-string v10, "Input does not appear to be an ASN.1 OpenSSL EC private key"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 589
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Input is of wrong version"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 591
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 592
    .local v3, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local v3    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 593
    .local v4, "privbits":[B
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->close()V

    .line 594
    new-instance v5, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 595
    .local v5, "privkey":Ljava/math/BigInteger;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v6

    .line 597
    .local v6, "pubbits":[B
    const/4 v9, 0x1

    invoke-static {v5, v9}, Lcom/google/bitcoin/core/ECKey;->publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B

    move-result-object v0

    .line 598
    .local v0, "compressed":[B
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 599
    new-instance v9, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v9, v5, v0}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V

    .line 602
    :goto_1
    return-object v9

    .end local v0    # "compressed":[B
    .end local v4    # "privbits":[B
    .end local v5    # "privkey":Ljava/math/BigInteger;
    .end local v6    # "pubbits":[B
    :cond_0
    move v9, v10

    .line 588
    goto :goto_0

    .line 600
    .restart local v0    # "compressed":[B
    .restart local v4    # "privbits":[B
    .restart local v5    # "privkey":Ljava/math/BigInteger;
    .restart local v6    # "pubbits":[B
    :cond_1
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/google/bitcoin/core/ECKey;->publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B

    move-result-object v8

    .line 601
    .local v8, "uncompressed":[B
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 602
    new-instance v9, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v9, v5, v8}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 604
    .end local v0    # "compressed":[B
    .end local v1    # "decoder":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v4    # "privbits":[B
    .end local v5    # "privkey":Ljava/math/BigInteger;
    .end local v6    # "pubbits":[B
    .end local v7    # "seq":Lorg/spongycastle/asn1/DLSequence;
    .end local v8    # "uncompressed":[B
    :catch_0
    move-exception v2

    .line 605
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 603
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "compressed":[B
    .restart local v1    # "decoder":Lorg/spongycastle/asn1/ASN1InputStream;
    .restart local v4    # "privbits":[B
    .restart local v5    # "privkey":Ljava/math/BigInteger;
    .restart local v6    # "pubbits":[B
    .restart local v7    # "seq":Lorg/spongycastle/asn1/DLSequence;
    .restart local v8    # "uncompressed":[B
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Public key in ASN.1 structure does not match private key."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static fromASN1([B)Lcom/google/bitcoin/core/ECKey;
    .locals 1
    .param p0, "asn1privkey"    # [B

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/bitcoin/core/ECKey;->extractKeyFromASN1([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    return-object v0
.end method

.method public static isPubKeyCanonical([B)Z
    .locals 4
    .param p0, "pubkey"    # [B

    .prologue
    const/16 v3, 0x21

    const/4 v0, 0x0

    .line 559
    array-length v1, p0

    if-ge v1, v3, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    aget-byte v1, p0, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 563
    array-length v1, p0

    const/16 v2, 0x41

    if-ne v1, v2, :cond_0

    .line 571
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 565
    :cond_3
    aget-byte v1, p0, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    aget-byte v1, p0, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 567
    :cond_4
    array-length v1, p0

    if-eq v1, v3, :cond_2

    goto :goto_0
.end method

.method public static publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B
    .locals 2
    .param p0, "privKey"    # Ljava/math/BigInteger;
    .param p1, "compressed"    # Z

    .prologue
    .line 248
    sget-object v1, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 249
    .local v0, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static recoverFromSignature(ILcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/ECKey;
    .locals 17
    .param p0, "recId"    # I
    .param p1, "sig"    # Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .param p2, "message"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p3, "compressed"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 730
    if-ltz p0, :cond_0

    const/4 v13, 0x1

    :goto_0
    const-string v14, "recId must be positive"

    invoke-static {v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 731
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-ltz v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    const-string v14, "r must be positive"

    invoke-static {v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 732
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-ltz v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    const-string v14, "s must be positive"

    invoke-static {v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 733
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v13, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 737
    .local v7, "n":Ljava/math/BigInteger;
    move/from16 v0, p0

    int-to-long v13, v0

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 738
    .local v6, "i":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 746
    .local v12, "x":Ljava/math/BigInteger;
    sget-object v13, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .line 747
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 748
    .local v8, "prime":Ljava/math/BigInteger;
    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_3

    .line 750
    const/4 v13, 0x0

    .line 776
    :goto_3
    return-object v13

    .line 730
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    .end local v6    # "i":Ljava/math/BigInteger;
    .end local v7    # "n":Ljava/math/BigInteger;
    .end local v8    # "prime":Ljava/math/BigInteger;
    .end local v12    # "x":Ljava/math/BigInteger;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 731
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 732
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 754
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    .restart local v6    # "i":Ljava/math/BigInteger;
    .restart local v7    # "n":Ljava/math/BigInteger;
    .restart local v8    # "prime":Ljava/math/BigInteger;
    .restart local v12    # "x":Ljava/math/BigInteger;
    :cond_3
    and-int/lit8 v13, p0, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-static {v12, v13}, Lcom/google/bitcoin/core/ECKey;->decompressKey(Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 756
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v13

    if-nez v13, :cond_5

    .line 757
    const/4 v13, 0x0

    goto :goto_3

    .line 754
    .end local v1    # "R":Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 759
    .restart local v1    # "R":Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 771
    .local v3, "e":Ljava/math/BigInteger;
    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 772
    .local v4, "eInv":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 773
    .local v10, "rInv":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 774
    .local v11, "srInv":Ljava/math/BigInteger;
    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 775
    .local v5, "eInvrInv":Ljava/math/BigInteger;
    sget-object v13, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-static {v13, v5, v1, v11}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .line 776
    .local v9, "q":Lorg/spongycastle/math/ec/ECPoint$Fp;
    new-instance v14, Lcom/google/bitcoin/core/ECKey;

    const/4 v13, 0x0

    check-cast v13, [B

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getEncoded(Z)[B

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    move-object v13, v14

    goto :goto_3
.end method

.method public static signedMessageToKey(Ljava/lang/String;Ljava/lang/String;)Lcom/google/bitcoin/core/ECKey;
    .locals 14
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "signatureBase64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 666
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 672
    .local v10, "signatureEncoded":[B
    array-length v11, v10

    const/16 v12, 0x41

    if-ge v11, v12, :cond_0

    .line 673
    new-instance v11, Ljava/security/SignatureException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Signature truncated, expected 65 bytes and got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 667
    .end local v10    # "signatureEncoded":[B
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/security/SignatureException;

    const-string v12, "Could not decode base64"

    invoke-direct {v11, v12, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 674
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "signatureEncoded":[B
    :cond_0
    const/4 v11, 0x0

    aget-byte v11, v10, v11

    and-int/lit16 v2, v11, 0xff

    .line 677
    .local v2, "header":I
    const/16 v11, 0x1b

    if-lt v2, v11, :cond_1

    const/16 v11, 0x22

    if-le v2, v11, :cond_2

    .line 678
    :cond_1
    new-instance v11, Ljava/security/SignatureException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Header byte out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 679
    :cond_2
    new-instance v6, Ljava/math/BigInteger;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x21

    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-direct {v6, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 680
    .local v6, "r":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    const/4 v11, 0x1

    const/16 v12, 0x21

    const/16 v13, 0x41

    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-direct {v8, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 681
    .local v8, "s":Ljava/math/BigInteger;
    new-instance v9, Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    invoke-direct {v9, v6, v8}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 682
    .local v9, "sig":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    invoke-static {p0}, Lcom/google/bitcoin/core/Utils;->formatMessageForSigning(Ljava/lang/String;)[B

    move-result-object v4

    .line 685
    .local v4, "messageBytes":[B
    invoke-static {v4}, Lcom/google/bitcoin/core/Sha256Hash;->createDouble([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    .line 686
    .local v5, "messageHash":Lcom/google/bitcoin/core/Sha256Hash;
    const/4 v0, 0x0

    .line 687
    .local v0, "compressed":Z
    const/16 v11, 0x1f

    if-lt v2, v11, :cond_3

    .line 688
    const/4 v0, 0x1

    .line 689
    add-int/lit8 v2, v2, -0x4

    .line 691
    :cond_3
    add-int/lit8 v7, v2, -0x1b

    .line 692
    .local v7, "recId":I
    invoke-static {v7, v9, v5, v0}, Lcom/google/bitcoin/core/ECKey;->recoverFromSignature(ILcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/ECKey;

    move-result-object v3

    .line 693
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    if-nez v3, :cond_4

    .line 694
    new-instance v11, Ljava/security/SignatureException;

    const-string v12, "Could not recover public key from signature"

    invoke-direct {v11, v12}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 695
    :cond_4
    return-object v3
.end method

.method public static verify([BLcom/google/bitcoin/core/ECKey$ECDSASignature;[B)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "signature"    # Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .param p2, "pub"    # [B

    .prologue
    const/4 v3, 0x0

    .line 498
    sget-boolean v4, Lcom/google/bitcoin/core/ECKey;->FAKE_SIGNATURES:Z

    if-eqz v4, :cond_0

    .line 499
    const/4 v3, 0x1

    .line 514
    :goto_0
    return v3

    .line 501
    :cond_0
    sget-boolean v4, Lorg/bitcoin/NativeSecp256k1;->enabled:Z

    if-eqz v4, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v3

    invoke-static {p0, v3, p2}, Lorg/bitcoin/NativeSecp256k1;->verify([B[B[B)Z

    move-result v3

    goto :goto_0

    .line 504
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/signers/ECDSASigner;

    invoke-direct {v2}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>()V

    .line 505
    .local v2, "signer":Lorg/spongycastle/crypto/signers/ECDSASigner;
    new-instance v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    sget-object v4, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    sget-object v5, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v4, v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 506
    .local v1, "params":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v2, v3, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 508
    :try_start_0
    iget-object v4, p1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2, p0, v4, v5}, Lorg/spongycastle/crypto/signers/ECDSASigner;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/google/bitcoin/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string v5, "Caught NPE inside bouncy castle"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static verify([B[B[B)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "signature"    # [B
    .param p2, "pub"    # [B

    .prologue
    .line 526
    sget-boolean v0, Lorg/bitcoin/NativeSecp256k1;->enabled:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-static {p0, p1, p2}, Lorg/bitcoin/NativeSecp256k1;->verify([B[B[B)Z

    move-result v0

    .line 528
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->decodeFromDER([B)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/bitcoin/core/ECKey;->verify([BLcom/google/bitcoin/core/ECKey$ECDSASignature;[B)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clearPrivateKey()V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 316
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->clear()V

    .line 319
    :cond_0
    return-void
.end method

.method public decrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;
    .locals 5
    .param p1, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    new-instance v2, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v3, "The keyCrypter being used to decrypt the key is different to the one that was used to encrypt it"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-interface {p1, v2, p2}, Lcom/google/bitcoin/crypto/KeyCrypter;->decrypt(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object v1

    .line 879
    .local v1, "unencryptedPrivateKey":[B
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isCompressed()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/bitcoin/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    .line 880
    .local v0, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 881
    new-instance v2, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v3, "Provided AES key is wrong"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    :cond_1
    iget-wide v2, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {v0, v2, v3}, Lcom/google/bitcoin/core/ECKey;->setCreationTimeSeconds(J)V

    .line 883
    return-object v0
.end method

.method public encrypt(Lcom/google/bitcoin/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey;
    .locals 5
    .param p1, "keyCrypter"    # Lcom/google/bitcoin/crypto/KeyCrypter;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v1

    .line 856
    .local v1, "privKeyBytes":[B
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Private key is not available"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 857
    invoke-interface {p1, v1, p2}, Lcom/google/bitcoin/crypto/KeyCrypter;->encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    move-result-object v0

    .line 858
    .local v0, "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    new-instance v2, Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lcom/google/bitcoin/core/ECKey;-><init>(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;[BLcom/google/bitcoin/crypto/KeyCrypter;)V

    .line 859
    .local v2, "result":Lcom/google/bitcoin/core/ECKey;
    iget-wide v3, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {v2, v3, v4}, Lcom/google/bitcoin/core/ECKey;->setCreationTimeSeconds(J)V

    .line 860
    return-object v2

    .line 856
    .end local v0    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .end local v2    # "result":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 829
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 834
    :goto_0
    return v1

    .line 830
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 832
    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    .line 834
    .local v0, "ecKey":Lcom/google/bitcoin/core/ECKey;
    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    iget-object v2, v0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getCreationTimeSeconds()J
    .locals 2

    .prologue
    .line 814
    iget-wide v0, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    return-wide v0
.end method

.method public getEncryptedPrivateKey()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    if-nez v0, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->clone()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    return-object v0
.end method

.method public getPrivKeyBytes()[B
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyEncoded(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/DumpedPrivateKey;
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v0

    .line 805
    .local v0, "privKeyBytes":[B
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Private key is not available"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 806
    new-instance v1, Lcom/google/bitcoin/core/DumpedPrivateKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isCompressed()Z

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lcom/google/bitcoin/core/DumpedPrivateKey;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZ)V

    return-object v1

    .line 805
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPubKey()[B
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    return-object v0
.end method

.method public getPubKeyHash()[B
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pubKeyHash:[B

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pubKeyHash:[B

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pubKeyHash:[B

    return-object v0
.end method

.method public hasPrivKey()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public isCompressed()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    array-length v0, v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPubKeyCanonical()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v0}, Lcom/google/bitcoin/core/ECKey;->isPubKeyCanonical([B)Z

    move-result v0

    return v0
.end method

.method public isPubKeyOnly()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreationTimeSeconds(J)V
    .locals 3
    .param p1, "newCreationTimeSeconds"    # J

    .prologue
    .line 822
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set creation time to negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_0
    iput-wide p1, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    .line 825
    return-void
.end method

.method public sign(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .locals 1
    .param p1, "input"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/ECKey;->sign(Lcom/google/bitcoin/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v0

    return-object v0
.end method

.method public sign(Lcom/google/bitcoin/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .locals 7
    .param p1, "input"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 451
    sget-boolean v4, Lcom/google/bitcoin/core/ECKey;->FAKE_SIGNATURES:Z

    if-eqz v4, :cond_0

    .line 452
    invoke-static {}, Lcom/google/bitcoin/crypto/TransactionSignature;->dummy()Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v4

    .line 484
    :goto_0
    return-object v4

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    if-nez p2, :cond_1

    .line 460
    new-instance v4, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v5, "This ECKey is encrypted but no decryption key has been supplied."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    if-nez v4, :cond_2

    .line 464
    new-instance v4, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v5, "There is no KeyCrypter to decrypt the private key for signing."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 467
    :cond_2
    new-instance v2, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/bitcoin/core/ECKey;->keyCrypter:Lcom/google/bitcoin/crypto/KeyCrypter;

    iget-object v5, p0, Lcom/google/bitcoin/core/ECKey;->encryptedPrivateKey:Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-interface {v4, v5, p2}, Lcom/google/bitcoin/crypto/KeyCrypter;->decrypt(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object v4

    invoke-direct {v2, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 469
    .local v2, "privateKeyForSigning":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isCompressed()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/google/bitcoin/core/ECKey;->publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_5

    .line 470
    new-instance v4, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v5, "Could not decrypt bytes"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    .end local v2    # "privateKeyForSigning":Ljava/math/BigInteger;
    :cond_3
    iget-object v4, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    if-nez v4, :cond_4

    .line 474
    new-instance v4, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v5, "This ECKey does not have the private key necessary for signing."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_4
    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 480
    .restart local v2    # "privateKeyForSigning":Ljava/math/BigInteger;
    :cond_5
    new-instance v3, Lorg/spongycastle/crypto/signers/ECDSASigner;

    new-instance v4, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    new-instance v5, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    .line 481
    .local v3, "signer":Lorg/spongycastle/crypto/signers/ECDSASigner;
    new-instance v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    sget-object v4, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v2, v4}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 482
    .local v1, "privKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v3, v6, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 483
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/signers/ECDSASigner;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    .line 484
    .local v0, "components":[Ljava/math/BigInteger;
    new-instance v4, Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    aget-object v6, v0, v6

    invoke-direct {v4, v5, v6}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->toCanonicalised()Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v4

    goto :goto_0
.end method

.method public signMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/ECKey;->signMessage(Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signMessage(Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/lang/String;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/16 v12, 0x20

    const/4 v9, 0x0

    .line 628
    iget-object v10, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    if-nez v10, :cond_0

    .line 629
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "This ECKey does not have the private key necessary for signing."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 630
    :cond_0
    invoke-static {p1}, Lcom/google/bitcoin/core/Utils;->formatMessageForSigning(Ljava/lang/String;)[B

    move-result-object v0

    .line 631
    .local v0, "data":[B
    invoke-static {v0}, Lcom/google/bitcoin/core/Sha256Hash;->createDouble([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 632
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {p0, v1, p2}, Lcom/google/bitcoin/core/ECKey;->sign(Lcom/google/bitcoin/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v6

    .line 634
    .local v6, "sig":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    const/4 v5, -0x1

    .line 635
    .local v5, "recId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isCompressed()Z

    move-result v10

    invoke-static {v3, v6, v1, v10}, Lcom/google/bitcoin/core/ECKey;->recoverFromSignature(ILcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/ECKey;

    move-result-object v4

    .line 637
    .local v4, "k":Lcom/google/bitcoin/core/ECKey;
    if-eqz v4, :cond_2

    iget-object v10, v4, Lcom/google/bitcoin/core/ECKey;->pub:[B

    iget-object v11, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 638
    move v5, v3

    .line 642
    .end local v4    # "k":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 643
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Could not construct a recoverable key. This should never happen."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 635
    .restart local v4    # "k":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 644
    .end local v4    # "k":Lcom/google/bitcoin/core/ECKey;
    :cond_3
    add-int/lit8 v10, v5, 0x1b

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isCompressed()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_1
    add-int v2, v10, v8

    .line 645
    .local v2, "headerByte":I
    const/16 v8, 0x41

    new-array v7, v8, [B

    .line 646
    .local v7, "sigData":[B
    int-to-byte v8, v2

    aput-byte v8, v7, v9

    .line 647
    iget-object v8, v6, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-static {v8, v12}, Lcom/google/bitcoin/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v8, v9, v7, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    iget-object v8, v6, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {v8, v12}, Lcom/google/bitcoin/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v8

    const/16 v10, 0x21

    invoke-static {v8, v9, v7, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Lorg/spongycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v8

    .end local v2    # "headerByte":I
    .end local v7    # "sigData":[B
    :cond_4
    move v8, v9

    .line 644
    goto :goto_1
.end method

.method public toASN1()[B
    .locals 7

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x190

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 231
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/spongycastle/asn1/DERSequenceGenerator;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 232
    .local v2, "seq":Lorg/spongycastle/asn1/DERSequenceGenerator;
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 233
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    const-string v5, "secp256k1"

    invoke-static {v5}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 236
    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERSequenceGenerator;->close()V

    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 238
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "seq":Lorg/spongycastle/asn1/DERSequenceGenerator;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    .line 305
    .local v0, "hash160":[B
    new-instance v1, Lcom/google/bitcoin/core/Address;

    invoke-direct {v1, p1, v0}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "pub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-wide v1, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 278
    const-string v1, " timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/bitcoin/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, " encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toStringWithPrivate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 294
    const-string v1, " priv:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->priv:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public verify(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/ECKey$ECDSASignature;)Z
    .locals 2
    .param p1, "sigHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "signature"    # Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/bitcoin/core/ECKey;->verify([BLcom/google/bitcoin/core/ECKey$ECDSASignature;[B)Z

    move-result v0

    return v0
.end method

.method public verify([B[B)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/bitcoin/core/ECKey;->verify([B[B[B)Z

    move-result v0

    return v0
.end method

.method public verifyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "signatureBase64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {p1, p2}, Lcom/google/bitcoin/core/ECKey;->signedMessageToKey(Ljava/lang/String;Ljava/lang/String;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .line 704
    .local v0, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey;->pub:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Signature did not match for message"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :cond_0
    return-void
.end method
