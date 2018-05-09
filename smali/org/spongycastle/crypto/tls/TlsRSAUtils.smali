.class public Lorg/spongycastle/crypto/tls/TlsRSAUtils;
.super Ljava/lang/Object;
.source "TlsRSAUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B
    .locals 7
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "rsaServerPublicKey"    # Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 20
    const/16 v4, 0x30

    new-array v3, v4, [B

    .line 21
    .local v3, "premasterSecret":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 24
    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v4, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 25
    .local v1, "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v4, v5}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 29
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object v2

    .line 31
    .local v2, "encryptedPreMasterSecret":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    :goto_0
    return-object v3

    .line 38
    :cond_0
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v2    # "encryptedPreMasterSecret":[B
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4
.end method

.method public static safeDecryptPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;[B)[B
    .locals 7
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "encryptionCredentials"    # Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;
    .param p2, "encryptedPreMasterSecret"    # [B

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    .line 59
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 62
    .local v2, "clientVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    const/4 v3, 0x0

    .line 68
    .local v3, "versionNumberCheckDisabled":Z
    new-array v1, v6, [B

    .line 69
    .local v1, "R":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 74
    .local v0, "M":[B
    :try_start_0
    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    array-length v4, v0

    if-eq v4, v6, :cond_0

    .line 88
    invoke-static {v2, v1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 114
    .end local v1    # "R":[B
    :goto_1
    return-object v1

    .line 96
    .restart local v1    # "R":[B
    :cond_0
    if-eqz v3, :cond_1

    sget-object v4, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v2, v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    move-object v1, v0

    .line 114
    goto :goto_1

    .line 111
    :cond_1
    invoke-static {v2, v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    goto :goto_2

    .line 76
    :catch_0
    move-exception v4

    goto :goto_0
.end method
