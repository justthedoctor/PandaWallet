.class public Lcom/subgraph/orchid/crypto/TorPublicKey;
.super Ljava/lang/Object;
.source "TorPublicKey.java"


# instance fields
.field private key:Ljava/security/interfaces/RSAPublicKey;

.field private keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

.field private final pemBuffer:Ljava/lang/String;

.field private rawKeyBytes:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pemBuffer"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 30
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 30
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 38
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    .line 40
    return-void
.end method

.method private createCipherInstance()Ljavax/crypto/Cipher;
    .locals 4

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 94
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-object v0

    .line 96
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1
    .param p0, "buffer"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getCipherInstance()Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 104
    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "SunJCE"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/security/NoSuchProviderException;
    :try_start_1
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized getKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 5

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    return-object v2

    .line 45
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 46
    new-instance v1, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .local v1, "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    :try_start_2
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->parsePEMPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v1    # "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    .line 49
    .restart local v1    # "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse PEM encoded key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    instance-of v1, p1, Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-nez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 127
    .local v0, "other":Lcom/subgraph/orchid/crypto/TorPublicKey;
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRawBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createDigestForData([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRawBytes()[B
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    if-nez v1, :cond_0

    .line 58
    new-instance v0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;-><init>()V

    .line 59
    .local v0, "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->getPKCS1Encoded(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 61
    .end local v0    # "encoder":Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tor Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z
    .locals 1
    .param p1, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;
    .param p2, "digest"    # Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z

    move-result v0

    return v0
.end method

.method public verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/data/HexDigest;)Z
    .locals 1
    .param p1, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;
    .param p2, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 72
    invoke-virtual {p2}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z

    move-result v0

    return v0
.end method

.method public verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z
    .locals 4
    .param p1, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;
    .param p2, "digestBytes"    # [B

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->createCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 82
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/TorSignature;->getSignatureBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 83
    .local v1, "decrypted":[B
    invoke-static {v1, p2}, Lcom/subgraph/orchid/misc/Utils;->constantTimeArrayEquals([B[B)Z
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 84
    .end local v1    # "decrypted":[B
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lcom/subgraph/orchid/TorException;

    invoke-direct {v3, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lcom/subgraph/orchid/TorException;

    invoke-direct {v3, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
