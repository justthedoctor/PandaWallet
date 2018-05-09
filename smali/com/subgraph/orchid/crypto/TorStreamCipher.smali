.class public Lcom/subgraph/orchid/crypto/TorStreamCipher;
.super Ljava/lang/Object;
.source "TorStreamCipher.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field public static final KEY_LEN:I = 0x10


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final counter:[B

.field private final counterOut:[B

.field private final key:Ljavax/crypto/spec/SecretKeySpec;

.field private keystreamPointer:I


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "keyBytes"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B[B)V

    .line 39
    return-void
.end method

.method private constructor <init>([B[B)V
    .locals 2
    .param p1, "keyBytes"    # [B
    .param p2, "iv"    # [B

    .prologue
    const/16 v1, 0x10

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    .line 42
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keyBytesToSecretKey([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createCipher(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->cipher:Ljavax/crypto/Cipher;

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->applyIV([B)V

    .line 50
    :cond_0
    return-void
.end method

.method private applyIV([B)V
    .locals 3
    .param p1, "iv"    # [B

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 53
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method private static createCipher(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/Cipher;
    .locals 3
    .param p0, "keySpec"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 78
    :try_start_0
    const-string v2, "AES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 79
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object v0

    .line 81
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 1
    .param p0, "keyBytes"    # [B

    .prologue
    .line 21
    new-instance v0, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B)V

    return-object v0
.end method

.method public static createFromKeyBytesWithIV([B[B)Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "iv"    # [B

    .prologue
    .line 25
    new-instance v0, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B[B)V

    return-object v0
.end method

.method public static createWithRandomKey()Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->generateRandomKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 17
    .local v0, "randomKey":Ljavax/crypto/SecretKey;
    new-instance v1, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B)V

    return-object v1
.end method

.method private encryptCounter()V
    .locals 7

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, v6}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static generateRandomKey()Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 88
    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 89
    .local v1, "generator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 90
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private incrementCounter()V
    .locals 5

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "carry":I
    iget-object v3, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 118
    iget-object v3, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v2, v3, v0

    .line 119
    .local v2, "x":I
    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 117
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    .end local v2    # "x":I
    :cond_1
    return-void
.end method

.method private static keyBytesToSecretKey([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .param p0, "keyBytes"    # [B

    .prologue
    .line 73
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private nextKeystreamByte()B
    .locals 3

    .prologue
    .line 97
    iget v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->updateCounter()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    iget v1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private updateCounter()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encryptCounter()V

    .line 103
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->incrementCounter()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    .line 105
    return-void
.end method


# virtual methods
.method public encrypt([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    .line 61
    return-void
.end method

.method public declared-synchronized encrypt([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 65
    add-int v1, v0, p2

    :try_start_0
    aget-byte v2, p1, v1

    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->nextKeystreamByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getKeyBytes()[B
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
