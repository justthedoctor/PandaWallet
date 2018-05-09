.class public Lcom/google/bitcoin/core/PartialMerkleTree;
.super Lcom/google/bitcoin/core/Message;
.source "PartialMerkleTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/PartialMerkleTree$1;,
        Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;
    }
.end annotation


# instance fields
.field hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field matchedChildBits:[B

.field transactionCount:I


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 65
    return-void
.end method

.method private getTreeWidth(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/2addr v0, p1

    return v0
.end method

.method private recursiveExtractHashes(IILcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 10
    .param p1, "height"    # I
    .param p2, "pos"    # I
    .param p3, "used"    # Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;)",
            "Lcom/google/bitcoin/core/Sha256Hash;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .local p4, "matchedHashes":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 110
    iget v0, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    if-lt v0, v3, :cond_0

    .line 112
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "CPartialMerkleTree overflowed its bits array"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    iget v3, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    invoke-static {v0, v3}, Lcom/google/bitcoin/core/Utils;->checkBitLE([BI)Z

    move-result v7

    .line 115
    .local v7, "parentOfMatch":Z
    if-eqz p1, :cond_1

    if-nez v7, :cond_4

    .line 117
    :cond_1
    iget v0, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    iget-object v1, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 119
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "CPartialMerkleTree overflowed its hash array"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    if-nez p1, :cond_3

    if-eqz v7, :cond_3

    .line 122
    iget-object v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    iget v1, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    iget v1, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p3, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .line 132
    :goto_0
    return-object v0

    .line 126
    :cond_4
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {p0, v0, v3, p3, p4}, Lcom/google/bitcoin/core/PartialMerkleTree;->recursiveExtractHashes(IILcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v6

    .line 127
    .local v6, "left":[B
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lcom/google/bitcoin/core/PartialMerkleTree;->getTreeWidth(I)I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 128
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3, p3, p4}, Lcom/google/bitcoin/core/PartialMerkleTree;->recursiveExtractHashes(IILcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v8

    .line 132
    .local v8, "right":[B
    :goto_1
    new-instance v9, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {v6}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    invoke-static {v8}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/bitcoin/core/Utils;->doubleDigestTwoBuffers([BII[BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    move-object v0, v9

    goto :goto_0

    .line 130
    .end local v8    # "right":[B
    :cond_5
    move-object v8, v6

    .restart local v8    # "right":[B
    goto :goto_1
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v2, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 70
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    iget-object v2, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .line 72
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 74
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 75
    iget-object v2, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 76
    return-void
.end method

.method public getTxnHashAndMerkleRoot(Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;)",
            "Lcom/google/bitcoin/core/Sha256Hash;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "matchedHashes":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 154
    iget v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    if-nez v3, :cond_0

    .line 155
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Got a CPartialMerkleTree with 0 transactions"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_0
    iget v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    const/16 v4, 0x411a

    if-le v3, v4, :cond_1

    .line 158
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Got a CPartialMerkleTree with more transactions than is possible"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    if-le v3, v4, :cond_2

    .line 161
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Got a CPartialMerkleTree with more hashes than transactions"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 164
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Got a CPartialMerkleTree with fewer matched bits than hashes"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_3
    const/4 v0, 0x0

    .line 167
    .local v0, "height":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/PartialMerkleTree;->getTreeWidth(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_4
    new-instance v2, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;-><init>(Lcom/google/bitcoin/core/PartialMerkleTree$1;)V

    .line 171
    .local v2, "used":Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/google/bitcoin/core/PartialMerkleTree;->recursiveExtractHashes(IILcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 173
    .local v1, "merkleRoot":Lcom/google/bitcoin/core/Sha256Hash;
    iget v3, v2, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v4, v4

    if-ne v3, v4, :cond_5

    iget v3, v2, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    iget-object v4, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 176
    :cond_5
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Got a CPartialMerkleTree that didn\'t need all the data it provided"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_6
    return-object v1
.end method

.method parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PartialMerkleTree;->readUint32()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->transactionCount:I

    .line 82
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PartialMerkleTree;->readVarInt()J

    move-result-wide v3

    long-to-int v2, v3

    .line 83
    .local v2, "nHashes":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 85
    iget-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/PartialMerkleTree;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PartialMerkleTree;->readVarInt()J

    move-result-wide v3

    long-to-int v1, v3

    .line 88
    .local v1, "nFlagBytes":I
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/PartialMerkleTree;->readBytes(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->matchedChildBits:[B

    .line 90
    iget v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->cursor:I

    iget v4, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->offset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/bitcoin/core/PartialMerkleTree;->length:I

    .line 91
    return-void
.end method

.method protected parseLite()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
