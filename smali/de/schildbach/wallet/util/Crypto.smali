.class public Lde/schildbach/wallet/util/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static final IV_LENGTH:I = 0x80

.field private static final KEY_LENGTH:I = 0x100

.field private static final NUMBER_OF_CHARACTERS_TO_MATCH_IN_OPENSSL_MAGIC_TEXT:I = 0xa

.field private static final NUMBER_OF_ITERATIONS:I = 0x400

.field public static final OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

.field private static final OPENSSL_MAGIC_TEXT:Ljava/lang/String;

.field private static final OPENSSL_SALTED_BYTES:[B

.field private static final OPENSSL_SALTED_TEXT:Ljava/lang/String; = "Salted__"

.field private static final SALT_LENGTH:I = 0x8

.field private static final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "Salted__"

    sget-object v1, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    .line 93
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    invoke-static {v1}, Lde/schildbach/wallet/util/Crypto;->encodeBase64([B)[B

    move-result-object v1

    sget-object v2, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Crypto;->OPENSSL_MAGIC_TEXT:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lde/schildbach/wallet/util/Crypto;->secureRandom:Ljava/security/SecureRandom;

    .line 279
    new-instance v0, Lde/schildbach/wallet/util/Crypto$1;

    invoke-direct {v0}, Lde/schildbach/wallet/util/Crypto$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/util/Crypto;->OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lde/schildbach/wallet/util/Crypto;->OPENSSL_MAGIC_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method private static concat([B[B)[B
    .locals 4
    .param p0, "arrayA"    # [B
    .param p1, "arrayB"    # [B

    .prologue
    const/4 v3, 0x0

    .line 272
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 273
    .local v0, "result":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-object v0
.end method

.method private static decodeBase64([B)[B
    .locals 3
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal base64 padding"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decrypt(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "textToDecode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "password"    # [C
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v3, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lde/schildbach/wallet/util/Crypto;->decodeBase64([B)[B

    move-result-object v1

    .line 195
    .local v1, "decodeTextAsBytes":[B
    array-length v3, v1

    sget-object v4, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 196
    new-instance v3, Ljava/io/IOException;

    const-string v4, "out of salt"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_0
    array-length v3, v1

    sget-object v4, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    new-array v0, v3, [B

    .line 199
    .local v0, "cipherBytes":[B
    sget-object v3, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    array-length v3, v3

    const/4 v4, 0x0

    array-length v5, v1

    sget-object v6, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    invoke-static {v0, p1}, Lde/schildbach/wallet/util/Crypto;->decrypt([B[C)[B

    move-result-object v2

    .line 203
    .local v2, "decryptedBytes":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decrypt([B[C)[B
    .locals 11
    .param p0, "bytesToDecode"    # [B
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v2, 0x8

    :try_start_0
    new-array v9, v2, [B

    .line 223
    .local v9, "salt":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x8

    invoke-static {p0, v2, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    array-length v2, p0

    add-int/lit8 v2, v2, -0x8

    new-array v1, v2, [B

    .line 226
    .local v1, "cipherBytes":[B
    const/16 v2, 0x8

    const/4 v3, 0x0

    array-length v5, p0

    add-int/lit8 v5, v5, -0x8

    invoke-static {p0, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    invoke-static {p1, v9}, Lde/schildbach/wallet/util/Crypto;->getAESPasswordKey([C[B)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 231
    .local v7, "key":Lorg/spongycastle/crypto/params/ParametersWithIV;
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 232
    .local v0, "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 234
    array-length v2, v1

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    new-array v4, v2, [B

    .line 235
    .local v4, "decryptedBytes":[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v8

    .line 236
    .local v8, "processLen":I
    invoke-virtual {v0, v4, v8}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v6

    .line 238
    .local v6, "doFinalLen":I
    add-int v2, v8, v6

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 240
    .end local v0    # "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    .end local v1    # "cipherBytes":[B
    .end local v4    # "decryptedBytes":[B
    .end local v6    # "doFinalLen":I
    .end local v7    # "key":Lorg/spongycastle/crypto/params/ParametersWithIV;
    .end local v8    # "processLen":I
    .end local v9    # "salt":[B
    :catch_0
    move-exception v10

    .line 242
    .local v10, "x":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not decrypt input string"

    invoke-direct {v2, v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 244
    .end local v10    # "x":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :catch_1
    move-exception v10

    .line 246
    .local v10, "x":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not decrypt input string"

    invoke-direct {v2, v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static encodeBase64([B)[B
    .locals 1
    .param p0, "decoded"    # [B

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 6
    .param p0, "plainText"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "password"    # [C
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v3, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 133
    .local v2, "plainTextAsBytes":[B
    invoke-static {v2, p1}, Lde/schildbach/wallet/util/Crypto;->encrypt([B[C)[B

    move-result-object v0

    .line 136
    .local v0, "encryptedBytes":[B
    sget-object v3, Lde/schildbach/wallet/util/Crypto;->OPENSSL_SALTED_BYTES:[B

    invoke-static {v3, v0}, Lde/schildbach/wallet/util/Crypto;->concat([B[B)[B

    move-result-object v1

    .line 138
    .local v1, "encryptedBytesPlusSaltedText":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lde/schildbach/wallet/util/Crypto;->encodeBase64([B)[B

    move-result-object v4

    sget-object v5, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3
.end method

.method private static encrypt([B[C)[B
    .locals 11
    .param p0, "plainTextAsBytes"    # [B
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/16 v1, 0x8

    :try_start_0
    new-array v9, v1, [B

    .line 157
    .local v9, "salt":[B
    sget-object v1, Lde/schildbach/wallet/util/Crypto;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 159
    invoke-static {p1, v9}, Lde/schildbach/wallet/util/Crypto;->getAESPasswordKey([C[B)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 162
    .local v7, "key":Lorg/spongycastle/crypto/params/ParametersWithIV;
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 163
    .local v0, "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 164
    array-length v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 165
    .local v4, "encryptedBytes":[B
    const/4 v2, 0x0

    array-length v3, p0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v8

    .line 166
    .local v8, "processLen":I
    invoke-virtual {v0, v4, v8}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v6

    .line 169
    .local v6, "doFinalLen":I
    add-int v1, v8, v6

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v9, v1}, Lde/schildbach/wallet/util/Crypto;->concat([B[B)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    .end local v4    # "encryptedBytes":[B
    .end local v6    # "doFinalLen":I
    .end local v7    # "key":Lorg/spongycastle/crypto/params/ParametersWithIV;
    .end local v8    # "processLen":I
    .end local v9    # "salt":[B
    :catch_0
    move-exception v10

    .line 173
    .local v10, "x":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not encrypt bytes"

    invoke-direct {v1, v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v10    # "x":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :catch_1
    move-exception v10

    .line 177
    .local v10, "x":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not encrypt bytes"

    invoke-direct {v1, v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAESPasswordKey([C[B)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4
    .param p0, "password"    # [C
    .param p1, "salt"    # [B

    .prologue
    .line 111
    new-instance v0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 112
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v0, v2, p1, v3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 114
    const/16 v2, 0x100

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 116
    .local v1, "key":Lorg/spongycastle/crypto/params/ParametersWithIV;
    return-object v1
.end method
