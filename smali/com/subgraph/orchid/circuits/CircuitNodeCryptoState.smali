.class public Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;
.super Ljava/lang/Object;
.source "CircuitNodeCryptoState.java"


# static fields
.field public static final KEY_MATERIAL_SIZE:I = 0x48


# instance fields
.field private final backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

.field private final backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private final checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private final forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

.field private final forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;


# direct methods
.method private constructor <init>([B[B)V
    .locals 3
    .param p1, "keyMaterial"    # [B
    .param p2, "verifyDigest"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p2}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "offset":I
    new-instance v1, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .line 39
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractDigestBytes([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 40
    add-int/lit8 v0, v0, 0x14

    .line 42
    new-instance v1, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .line 43
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractDigestBytes([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 44
    add-int/lit8 v0, v0, 0x14

    .line 46
    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractCipherKey([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    .line 47
    add-int/lit8 v0, v0, 0x10

    .line 49
    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractCipherKey([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    .line 50
    return-void
.end method

.method public static createFromKeyMaterial([B[B)Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;
    .locals 1
    .param p0, "keyMaterial"    # [B
    .param p1, "verifyDigest"    # [B

    .prologue
    .line 13
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;-><init>([B[B)V

    return-object v0
.end method

.method private static extractCipherKey([BI)[B
    .locals 3
    .param p0, "keyMaterial"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v2, 0x10

    .line 29
    new-array v0, v2, [B

    .line 30
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-object v0
.end method

.method private static extractDigestBytes([BI)[B
    .locals 3
    .param p0, "keyMaterial"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v2, 0x14

    .line 23
    new-array v0, v2, [B

    .line 24
    .local v0, "digestBytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    return-object v0
.end method

.method private extractRelayDigest(Lcom/subgraph/orchid/Cell;)[B
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    const/4 v4, 0x4

    .line 90
    new-array v0, v4, [B

    .line 91
    .local v0, "digest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 92
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lcom/subgraph/orchid/Cell;->getByteAt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    add-int/lit8 v2, v1, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/subgraph/orchid/Cell;->putByteAt(II)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method private isRecognizedCell(Lcom/subgraph/orchid/Cell;)Z
    .locals 9
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    const/16 v8, 0x1fd

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 74
    invoke-interface {p1, v7}, Lcom/subgraph/orchid/Cell;->getShortAt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    :goto_0
    return v3

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractRelayDigest(Lcom/subgraph/orchid/Cell;)[B

    move-result-object v0

    .line 78
    .local v0, "digest":[B
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5, v6, v8}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->peekDigest([BII)[B

    move-result-object v2

    .line 79
    .local v2, "peek":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 80
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    if-eq v4, v5, :cond_1

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V

    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4, v6, v8}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([BII)V

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V

    .line 86
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V
    .locals 3
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;
    .param p2, "digest"    # [B

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x8

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-interface {p1, v1, v2}, Lcom/subgraph/orchid/Cell;->putByteAt(II)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    .line 62
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->isRecognizedCell(Lcom/subgraph/orchid/Cell;)Z

    move-result v0

    return v0
.end method

.method encryptForwardCell(Lcom/subgraph/orchid/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    .line 58
    return-void
.end method

.method getForwardDigestBytes()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method updateForwardDigest(Lcom/subgraph/orchid/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([BII)V

    .line 67
    return-void
.end method

.method verifyPacketDigest(Lcom/subgraph/orchid/data/HexDigest;)Z
    .locals 1
    .param p1, "packetDigest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
