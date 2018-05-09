.class public Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;
.super Ljava/lang/Object;
.source "TorRFC5869KeyDerivation.java"


# static fields
.field private static final M_EXPAND:Ljava/lang/String; = "ntor-curve25519-sha256-1:key_expand"

.field private static final M_EXPAND_BYTES:[B

.field private static final PROTOID:Ljava/lang/String; = "ntor-curve25519-sha256-1"


# instance fields
.field private final seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "ntor-curve25519-sha256-1:key_expand"

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "seed"    # [B

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->seed:[B

    .line 21
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->seed:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-void
.end method

.method private createMacInstance()Ljavax/crypto/Mac;
    .locals 6

    .prologue
    .line 68
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->seed:[B

    const-string v4, "HmacSHA256"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .local v1, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 71
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    return-object v2

    .line 73
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create HmacSHA256 instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create HmacSHA256 instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private expandRound(I[B)[B
    .locals 3
    .param p1, "round"    # I
    .param p2, "priorMac"    # [B

    .prologue
    .line 49
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 50
    sget-object v2, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    sget-object v2, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->createMacInstance()Ljavax/crypto/Mac;

    move-result-object v1

    .line 59
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    return-object v2

    .line 52
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :cond_0
    sget-object v2, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private makeBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 63
    new-array v0, p1, [B

    .line 64
    .local v0, "bs":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deriveKeys(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 31
    const/4 v2, 0x1

    .line 32
    .local v2, "round":I
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 34
    .local v1, "macOutput":[B
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-direct {p0, v2, v1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->expandRound(I[B)[B

    move-result-object v1

    .line 36
    array-length v3, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 37
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    return-object v0
.end method

.method public deriveKeys([B[B)V
    .locals 3
    .param p1, "keyMaterialOut"    # [B
    .param p2, "verifyHashOut"    # [B

    .prologue
    .line 25
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->deriveKeys(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "keyData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method
