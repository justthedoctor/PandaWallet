.class public Lcom/subgraph/orchid/crypto/HybridEncryption;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static final PK_DATA_LEN:I = 0x56

.field private static final PK_DATA_LEN_WITH_KEY:I = 0x46

.field private static final PK_ENC_LEN:I = 0x80

.field private static final PK_PAD_LEN:I = 0x2a


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    const-string v1, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 45
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "privateKey"    # Lcom/subgraph/orchid/crypto/TorPrivateKey;

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPrivateKey;->getRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 139
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 145
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "publicKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decrypt([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B
    .locals 13
    .param p1, "data"    # [B
    .param p2, "privateKey"    # Lcom/subgraph/orchid/crypto/TorPrivateKey;

    .prologue
    const/16 v12, 0x10

    const/16 v10, 0x80

    const/4 v11, 0x0

    .line 105
    array-length v9, p1

    if-ge v9, v10, :cond_0

    .line 106
    new-instance v9, Lcom/subgraph/orchid/TorException;

    const-string v10, "Message is too short"

    invoke-direct {v9, v10}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :cond_0
    array-length v9, p1

    if-ne v9, v10, :cond_1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B

    move-result-object v6

    .line 133
    :goto_0
    return-object v6

    .line 112
    :cond_1
    new-array v0, v10, [B

    .line 113
    .local v0, "c1":[B
    array-length v9, p1

    add-int/lit8 v9, v9, -0x80

    new-array v1, v9, [B

    .line 114
    .local v1, "c2":[B
    invoke-static {p1, v11, v0, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v9, v1

    invoke-static {p1, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B

    move-result-object v2

    .line 119
    .local v2, "kAndM1":[B
    new-array v8, v12, [B

    .line 120
    .local v8, "streamKey":[B
    array-length v9, v2

    add-int/lit8 v4, v9, -0x10

    .line 121
    .local v4, "m1Length":I
    new-array v3, v4, [B

    .line 122
    .local v3, "m1":[B
    invoke-static {v2, v11, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v2, v12, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-static {v8}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v7

    .line 127
    .local v7, "streamCipher":Lcom/subgraph/orchid/crypto/TorStreamCipher;
    invoke-virtual {v7, v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 128
    move-object v5, v1

    .line 130
    .local v5, "m2":[B
    array-length v9, v3

    array-length v10, v5

    add-int/2addr v9, v10

    new-array v6, v9, [B

    .line 131
    .local v6, "output":[B
    array-length v9, v3

    invoke-static {v3, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length v9, v3

    array-length v10, v5

    invoke-static {v5, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 10
    .param p1, "data"    # [B
    .param p2, "publicKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    const/16 v9, 0x56

    const/16 v8, 0x46

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 59
    array-length v5, p1

    if-ge v5, v9, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v3

    .line 79
    :goto_0
    return-object v3

    .line 63
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createWithRandomKey()Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v4

    .line 64
    .local v4, "randomKeyCipher":Lcom/subgraph/orchid/crypto/TorStreamCipher;
    new-array v2, v9, [B

    .line 65
    .local v2, "kAndM1":[B
    invoke-virtual {v4}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->getKeyBytes()[B

    move-result-object v5

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {p1, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-direct {p0, v2, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v0

    .line 70
    .local v0, "c1":[B
    array-length v5, p1

    add-int/lit8 v5, v5, -0x46

    new-array v1, v5, [B

    .line 71
    .local v1, "c2":[B
    array-length v5, v1

    invoke-static {p1, v8, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {v4, v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 76
    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 77
    .local v3, "output":[B
    array-length v5, v0

    invoke-static {v0, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v5, v0

    array-length v6, v1

    invoke-static {v1, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
