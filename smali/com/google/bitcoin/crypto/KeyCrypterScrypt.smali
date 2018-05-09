.class public Lcom/google/bitcoin/crypto/KeyCrypterScrypt;
.super Ljava/lang/Object;
.source "KeyCrypterScrypt.java"

# interfaces
.implements Lcom/google/bitcoin/crypto/KeyCrypter;
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK_LENGTH:I = 0x10

.field public static final KEY_LENGTH:I = 0x20

.field public static final SALT_LENGTH:I = 0x8

.field private static final log:Lorg/slf4j/Logger;

.field private static final transient secureRandom:Ljava/security/SecureRandom;

.field private static final serialVersionUID:J = 0xd2de105ef31e29eL


# instance fields
.field private final transient scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    .line 73
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->randomSalt()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    .line 90
    .local v0, "scryptParametersBuilder":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "iterations"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->randomSalt()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    .line 103
    .local v0, "scryptParametersBuilder":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)V
    .locals 2
    .param p1, "scryptParameters"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    iput-object v0, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 116
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    sget-object v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    const-string v1, "You are using a ScryptParameters with no salt. Your encryption may be vulnerable to a dictionary attack."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void
.end method

.method private static convertToByteArray(Ljava/lang/CharSequence;)[B
    .locals 5
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 226
    .local v0, "byteArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 227
    shl-int/lit8 v1, v2, 0x1

    .line 228
    .local v1, "bytePosition":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 229
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "bytePosition":I
    :cond_0
    return-object v0
.end method

.method private static randomSalt()[B
    .locals 2

    .prologue
    .line 76
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 77
    .local v0, "salt":[B
    sget-object v1, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public decrypt(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;Lorg/spongycastle/crypto/params/KeyParameter;)[B
    .locals 10
    .param p1, "privateKeyToDecode"    # Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :try_start_0
    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getInitialisationVector()[B

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 203
    .local v7, "keyWithIv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 204
    .local v0, "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 206
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v1

    .line 207
    .local v1, "cipherBytes":[B
    array-length v2, v1

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    new-array v4, v2, [B

    .line 208
    .local v4, "decryptedBytes":[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v8

    .line 209
    .local v8, "length1":I
    invoke-virtual {v0, v4, v8}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v9

    .line 211
    .local v9, "length2":I
    add-int v2, v8, v9

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 212
    .end local v0    # "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    .end local v1    # "cipherBytes":[B
    .end local v4    # "decryptedBytes":[B
    .end local v7    # "keyWithIv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    .end local v8    # "length1":I
    .end local v9    # "length2":I
    :catch_0
    move-exception v6

    .line 213
    .local v6, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v3, "Could not decrypt bytes"

    invoke-direct {v2, v3, v6}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 9
    .param p1, "password"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "passwordBytes":[B
    :try_start_0
    invoke-static {p1}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->convertToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v0

    .line 137
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 138
    .local v1, "salt":[B
    iget-object v2, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getR()I

    move-result v3

    iget-object v4, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getP()I

    move-result v4

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object v7

    .line 147
    .local v7, "keyBytes":[B
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v7}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-object v2

    .line 143
    .end local v7    # "keyBytes":[B
    :cond_1
    :try_start_1
    sget-object v2, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    const-string v3, "You are using a ScryptParameters with no salt. Your encryption may be vulnerable to a dictionary attack."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    .end local v1    # "salt":[B
    :catch_0
    move-exception v6

    .line 149
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v3, "Could not generate key from password and salt."

    invoke-direct {v2, v3, v6}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    throw v2
.end method

.method public encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .locals 11
    .param p1, "plainBytes"    # [B
    .param p2, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v1, 0x10

    :try_start_0
    new-array v7, v1, [B

    .line 169
    .local v7, "iv":[B
    sget-object v1, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 171
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v8, p2, v7}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 174
    .local v8, "keyWithIv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 175
    .local v0, "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 176
    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 177
    .local v4, "encryptedBytes":[B
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v9

    .line 178
    .local v9, "length1":I
    invoke-virtual {v0, v4, v9}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v10

    .line 180
    .local v10, "length2":I
    new-instance v1, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    add-int v2, v9, v10

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;-><init>([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 181
    .end local v0    # "cipher":Lorg/spongycastle/crypto/BufferedBlockCipher;
    .end local v4    # "encryptedBytes":[B
    .end local v7    # "iv":[B
    .end local v8    # "keyWithIv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    .end local v9    # "length1":I
    .end local v10    # "length2":I
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/bitcoin/crypto/KeyCrypterException;

    const-string v2, "Could not encrypt bytes."

    invoke-direct {v1, v2, v6}, Lcom/google/bitcoin/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 259
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 265
    check-cast v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    .line 267
    .local v0, "other":Lcom/google/bitcoin/crypto/KeyCrypterScrypt;
    iget-object v1, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    iget-object v2, v0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getScryptParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "Scrypt/AES"

    return-object v0
.end method
