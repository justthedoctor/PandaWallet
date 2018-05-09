.class public Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;
.super Ljava/lang/Object;
.source "TorNTorKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# static fields
.field static final AUTH_INPUT_LEN:I

.field static final CURVE25519_OUTPUT_LEN:I = 0x20

.field public static final CURVE25519_PUBKEY_LEN:I = 0x20

.field static final DIGEST256_LEN:I = 0x20

.field static final DIGEST_LEN:I = 0x14

.field static final KEY_LEN:I = 0x10

.field static final NTOR_ONIONSKIN_LEN:I = 0x54

.field static final PROTOID:Ljava/lang/String; = "ntor-curve25519-sha256-1"

.field static final SECRET_INPUT_LEN:I

.field static final SERVER_STR:Ljava/lang/String; = "Server"

.field static final cs:Ljava/nio/charset/Charset;


# instance fields
.field private isBad:Z

.field private final peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

.field private final peerNTorOnionKey:[B

.field private final publicKey_X:[B

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private final secretKey_x:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "ntor-curve25519-sha256-1"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    sput v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->SECRET_INPUT_LEN:I

    .line 24
    const-string v0, "ntor-curve25519-sha256-1"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x94

    const-string v1, "Server"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->AUTH_INPUT_LEN:I

    .line 25
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/data/HexDigest;[B)V
    .locals 1
    .param p1, "peerIdentity"    # Lcom/subgraph/orchid/data/HexDigest;
    .param p2, "peerNTorOnionKey"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 34
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    .line 35
    iput-object p2, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    .line 36
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->generateSecretKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->secretKey_x:[B

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->secretKey_x:[B

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->getPublicKeyForPrivate([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    .line 38
    return-void
.end method

.method private buildAuthInput([B[B)[B
    .locals 3
    .param p1, "verify"    # [B
    .param p2, "serverPublic_Y"    # [B

    .prologue
    .line 109
    sget v1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->AUTH_INPUT_LEN:I

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    const-string v1, "ntor-curve25519-sha256-1"

    sget-object v2, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 116
    const-string v1, "Server"

    sget-object v2, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private buildSecretInput([B)[B
    .locals 2
    .param p1, "serverPublic_Y"    # [B

    .prologue
    .line 97
    sget v1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->SECRET_INPUT_LEN:I

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->scalarMult([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->scalarMult([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    const-string v1, "ntor-curve25519-sha256-1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private makeBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "sz"    # I

    .prologue
    .line 50
    new-array v0, p1, [B

    .line 51
    .local v0, "array":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private scalarMult([B)[B
    .locals 3
    .param p1, "peerValue"    # [B

    .prologue
    .line 121
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 122
    .local v0, "out":[B
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->secretKey_x:[B

    invoke-static {v0, v1, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult([B[B[B)I

    .line 123
    iget-boolean v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isAllZero([B)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    .line 124
    return-object v0
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 2

    .prologue
    .line 42
    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 11
    .param p1, "handshakeResponse"    # [B
    .param p2, "keyMaterialOut"    # [B
    .param p3, "verifyHashOut"    # [B

    .prologue
    .line 71
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    .line 73
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 74
    .local v3, "hr":Ljava/nio/ByteBuffer;
    const/16 v9, 0x20

    new-array v7, v9, [B

    .line 75
    .local v7, "serverPub":[B
    const/16 v9, 0x20

    new-array v1, v9, [B

    .line 76
    .local v1, "authCandidate":[B
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-direct {p0, v7}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->buildSecretInput([B)[B

    move-result-object v5

    .line 80
    .local v5, "secretInput":[B
    const-string v9, "verify"

    invoke-virtual {p0, v9, v5}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object v8

    .line 81
    .local v8, "verify":[B
    invoke-direct {p0, v8, v7}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->buildAuthInput([B[B)[B

    move-result-object v2

    .line 82
    .local v2, "authInput":[B
    const-string v9, "mac"

    invoke-virtual {p0, v9, v2}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 83
    .local v0, "auth":[B
    iget-boolean v10, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    invoke-static {v0, v1}, Lcom/subgraph/orchid/misc/Utils;->constantTimeArrayEquals([B[B)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    .line 84
    const-string v9, "key_extract"

    invoke-virtual {p0, v9, v5}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 86
    .local v6, "seed":[B
    new-instance v4, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;

    invoke-direct {v4, v6}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;-><init>([B)V

    .line 87
    .local v4, "kdf":Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;
    invoke-virtual {v4, p2, p3}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->deriveKeys([B[B)V

    .line 89
    iget-boolean v9, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    return v9

    .line 83
    .end local v4    # "kdf":Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;
    .end local v6    # "seed":[B
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 89
    .restart local v4    # "kdf":Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;
    .restart local v6    # "seed":[B
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method generateSecretKey()[B
    .locals 4

    .prologue
    const/16 v3, 0x1f

    .line 55
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object v0

    .line 56
    .local v0, "key":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 57
    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 58
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 59
    return-object v0
.end method

.method public getNtorCreateMagic()[B
    .locals 2

    .prologue
    .line 93
    const-string v0, "ntorNTORntorNTOR"

    sget-object v1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method getPublicKeyForPrivate([B)[B
    .locals 2
    .param p1, "secretKey"    # [B

    .prologue
    .line 63
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 64
    .local v0, "pub":[B
    invoke-static {v0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult_base([B[B)I

    .line 65
    return-object v0
.end method

.method getStringConstant(Ljava/lang/String;)[B
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const-string v0, "ntor-curve25519-sha256-1"

    sget-object v1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntor-curve25519-sha256-1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method hmac256([B[B)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 140
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    .local v1, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 143
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 144
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 145
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create HmacSHA256 instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create HmacSHA256 instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method isAllZero([B)Z
    .locals 6
    .param p1, "bs"    # [B

    .prologue
    .line 128
    const/4 v4, 0x1

    .line 129
    .local v4, "result":Z
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 130
    .local v1, "b":B
    if-nez v1, :cond_0

    const/4 v5, 0x1

    :goto_1
    and-int/2addr v4, v5

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 132
    .end local v1    # "b":B
    :cond_1
    return v4
.end method

.method tweak(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "input"    # [B

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->getStringConstant(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->hmac256([B[B)[B

    move-result-object v0

    return-object v0
.end method
