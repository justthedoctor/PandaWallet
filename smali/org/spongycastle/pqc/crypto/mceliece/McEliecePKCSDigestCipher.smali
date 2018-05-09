.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;
.super Ljava/lang/Object;
.source "McEliecePKCSDigestCipher.java"


# instance fields
.field private forEncrypting:Z

.field private final mcElieceCipher:Lorg/spongycastle/pqc/crypto/MessageEncryptor;

.field private final messDigest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/MessageEncryptor;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "mcElieceCipher"    # Lorg/spongycastle/pqc/crypto/MessageEncryptor;
    .param p2, "messDigest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->mcElieceCipher:Lorg/spongycastle/pqc/crypto/MessageEncryptor;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 25
    return-void
.end method


# virtual methods
.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncrypting"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->forEncrypting:Z

    .line 35
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 37
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 44
    .local v0, "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encrypting Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 41
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 49
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Decrypting Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->reset()V

    .line 56
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->mcElieceCipher:Lorg/spongycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/pqc/crypto/MessageEncryptor;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 57
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 4
    .param p1, "ciphertext"    # [B

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "output":[B
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->forEncrypting:Z

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "McEliecePKCSDigestCipher not initialised for decrypting."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->mcElieceCipher:Lorg/spongycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v2, p1}, Lorg/spongycastle/pqc/crypto/MessageEncryptor;->messageDecrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public messageEncrypt()[B
    .locals 5

    .prologue
    .line 62
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->forEncrypting:Z

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "McEliecePKCSDigestCipher not initialised for encrypting."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 68
    .local v2, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 69
    const/4 v1, 0x0

    .line 73
    .local v1, "enc":[B
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->mcElieceCipher:Lorg/spongycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v3, v2}, Lorg/spongycastle/pqc/crypto/MessageEncryptor;->messageEncrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 125
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 112
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSDigestCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 118
    return-void
.end method
