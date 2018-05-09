.class public Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsEncryptionCredentials;
.source "DefaultTlsEncryptionCredentials.java"


# instance fields
.field protected certificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 3
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p3, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsEncryptionCredentials;-><init>()V

    .line 22
    if-nez p2, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    if-nez p3, :cond_2

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be private"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    instance-of v0, p3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_4

    .line 48
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 49
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 50
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 51
    return-void

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'privateKey\' type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decryptPreMasterSecret([B)[B
    .locals 6
    .param p1, "encryptedPreMasterSecret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 62
    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 63
    .local v1, "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v5, v2}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 67
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public getCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsEncryptionCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method
