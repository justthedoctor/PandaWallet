.class public Lcom/subgraph/orchid/crypto/TorKeyDerivation;
.super Ljava/lang/Object;
.source "TorKeyDerivation.java"


# instance fields
.field private final kdfBuffer:[B

.field private round:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "seed"    # [B

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    return-void
.end method

.method private calculateRoundData()[B
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 35
    .local v0, "md":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 36
    iget v1, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    .line 37
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 38
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deriveKeys(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "length"    # I

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 22
    .local v2, "outputBuffer":Ljava/nio/ByteBuffer;
    iput v5, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    .line 23
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->calculateRoundData()[B

    move-result-object v0

    .line 25
    .local v0, "bs":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 26
    .local v1, "n":I
    invoke-virtual {v2, v0, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 29
    .end local v0    # "bs":[B
    .end local v1    # "n":I
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    return-object v2
.end method

.method public deriveKeys([B[B)V
    .locals 3
    .param p1, "keyMaterialOut"    # [B
    .param p2, "verifyHashOut"    # [B

    .prologue
    .line 15
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "keyData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    return-void
.end method
