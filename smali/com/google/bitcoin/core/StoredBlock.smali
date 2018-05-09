.class public Lcom/google/bitcoin/core/StoredBlock;
.super Ljava/lang/Object;
.source "StoredBlock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHAIN_WORK_BYTES:I = 0xc

.field public static final COMPACT_SERIALIZED_SIZE:I = 0x60

.field public static final EMPTY_BYTES:[B

.field private static final serialVersionUID:J = -0x549ee747d719920bL


# instance fields
.field private chainWork:Ljava/math/BigInteger;

.field private header:Lcom/google/bitcoin/core/Block;

.field private height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lcom/google/bitcoin/core/StoredBlock;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "header"    # Lcom/google/bitcoin/core/Block;
    .param p2, "chainWork"    # Ljava/math/BigInteger;
    .param p3, "height"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/bitcoin/core/StoredBlock;->header:Lcom/google/bitcoin/core/Block;

    .line 52
    iput-object p2, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    .line 53
    iput p3, p0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    .line 54
    return-void
.end method

.method public static deserializeCompact(Lcom/google/bitcoin/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 6
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v4, 0xc

    new-array v1, v4, [B

    .line 138
    .local v1, "chainWorkBytes":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    new-instance v0, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 140
    .local v0, "chainWork":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 141
    .local v3, "height":I
    const/16 v4, 0x51

    new-array v2, v4, [B

    .line 142
    .local v2, "header":[B
    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-virtual {p1, v2, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 143
    new-instance v4, Lcom/google/bitcoin/core/StoredBlock;

    new-instance v5, Lcom/google/bitcoin/core/Block;

    invoke-direct {v5, p0, v2}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    invoke-direct {v4, v5, v0, v3}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    return-object v4
.end method


# virtual methods
.method public build(Lcom/google/bitcoin/core/Block;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 4
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 105
    .local v0, "chainWork":Ljava/math/BigInteger;
    iget v2, p0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    add-int/lit8 v1, v2, 0x1

    .line 106
    .local v1, "height":I
    new-instance v2, Lcom/google/bitcoin/core/StoredBlock;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Lcom/google/bitcoin/core/StoredBlock;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/google/bitcoin/core/StoredBlock;

    .line 88
    .local v0, "o":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v2, v0, Lcom/google/bitcoin/core/StoredBlock;->header:Lcom/google/bitcoin/core/Block;

    iget-object v3, p0, Lcom/google/bitcoin/core/StoredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Block;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    iget v3, p0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChainWork()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHeader()Lcom/google/bitcoin/core/Block;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredBlock;->header:Lcom/google/bitcoin/core/Block;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    return v0
.end method

.method public getPrev(Lcom/google/bitcoin/store/BlockStore;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .param p1, "store"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/bitcoin/store/BlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredBlock;->header:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/bitcoin/core/StoredBlock;->height:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public moreWorkThan(Lcom/google/bitcoin/core/StoredBlock;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/bitcoin/core/StoredBlock;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/google/bitcoin/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeCompact(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v5, 0xc

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getChainWork()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 122
    .local v1, "chainWorkBytes":[B
    array-length v2, v1

    if-gt v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v4, "Ran out of space to store chain work!"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 123
    array-length v2, v1

    if-ge v2, v5, :cond_0

    .line 125
    sget-object v2, Lcom/google/bitcoin/core/StoredBlock;->EMPTY_BYTES:[B

    array-length v4, v1

    rsub-int/lit8 v4, v4, 0xc

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 127
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->unsafeBitcoinSerialize()[B

    move-result-object v0

    .line 132
    .local v0, "bytes":[B
    const/16 v2, 0x50

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 133
    return-void

    .end local v0    # "bytes":[B
    :cond_1
    move v2, v3

    .line 122
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string v0, "Block %s at height %d: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
