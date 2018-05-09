.class public Lcom/google/bitcoin/crypto/DeterministicKey;
.super Ljava/lang/Object;
.source "DeterministicKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PATH_JOINER:Lcom/google/common/base/Joiner;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final chainCode:[B

.field private final childNumberPath:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/bitcoin/crypto/DeterministicKey;

.field private final privateAsFieldElement:Ljava/math/BigInteger;

.field private publicAsPoint:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/bitcoin/crypto/DeterministicKey;->$assertionsDisabled:Z

    .line 47
    const-string v0, "/"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/crypto/DeterministicKey;->PATH_JOINER:Lcom/google/common/base/Joiner;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/google/bitcoin/crypto/DeterministicKey;)V
    .locals 2
    .param p2, "chainCode"    # [B
    .param p3, "publicAsPoint"    # Lorg/spongycastle/math/ec/ECPoint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "privateKeyFieldElt"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "parent"    # Lcom/google/bitcoin/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;[B",
            "Lorg/spongycastle/math/ec/ECPoint;",
            "Ljava/math/BigInteger;",
            "Lcom/google/bitcoin/crypto/DeterministicKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "childNumberPath":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    iput-object p5, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->parent:Lcom/google/bitcoin/crypto/DeterministicKey;

    .line 62
    iput-object p1, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 63
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->chainCode:[B

    .line 64
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->publicAsPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 65
    iput-object p4, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    .line 66
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1
.end method

.method static addChecksum([B)[B
    .locals 5
    .param p0, "input"    # [B

    .prologue
    const/4 v4, 0x0

    .line 186
    array-length v2, p0

    .line 187
    .local v2, "inputLength":I
    add-int/lit8 v3, v2, 0x4

    new-array v1, v3, [B

    .line 188
    .local v1, "checksummed":[B
    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {p0}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v0

    .line 190
    .local v0, "checksum":[B
    const/4 v3, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    return-object v1
.end method

.method private getDepth()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method private serialize(Z)[B
    .locals 3
    .param p1, "pub"    # Z

    .prologue
    const/16 v2, 0x4e

    .line 203
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    .local v0, "ser":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    const v1, 0x488b21e

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getDepth()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v1, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->parent:Lcom/google/bitcoin/crypto/DeterministicKey;

    if-nez v1, :cond_1

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumber()Lcom/google/bitcoin/crypto/ChildNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/crypto/ChildNumber;->getI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubKeyBytes()[B

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    sget-boolean v1, Lcom/google/bitcoin/crypto/DeterministicKey;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_0
    const v1, 0x488ade4

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->parent:Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-virtual {v1}, Lcom/google/bitcoin/crypto/DeterministicKey;->getFingerprint()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPrivKeyBytes33()[B

    move-result-object v1

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method static toBase58([B)Ljava/lang/String;
    .locals 1
    .param p0, "ser"    # [B

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->addChecksum([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChainCode()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->chainCode:[B

    return-object v0
.end method

.method public getChildNumber()Lcom/google/bitcoin/crypto/ChildNumber;
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/bitcoin/crypto/ChildNumber;->ZERO:Lcom/google/bitcoin/crypto/ChildNumber;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/crypto/ChildNumber;

    goto :goto_0
.end method

.method public getChildNumberPath()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getFingerprint()[B
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getIdentifier()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()[B
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubKeyBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->parent:Lcom/google/bitcoin/crypto/DeterministicKey;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/google/bitcoin/crypto/DeterministicKey;->PATH_JOINER:Lcom/google/common/base/Joiner;

    const-string v1, "M"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivAsFieldElement()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivKeyBytes()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivKeyBytes33()[B
    .locals 5

    .prologue
    .line 150
    const/16 v2, 0x21

    new-array v0, v2, [B

    .line 151
    .local v0, "bytes33":[B
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v2

    const-string v3, "Private key missing"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 152
    .local v1, "priv":[B
    const/4 v2, 0x0

    array-length v3, v1

    rsub-int/lit8 v3, v3, 0x21

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method public getPubKeyBytes()[B
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getPubOnly()Lcom/google/bitcoin/crypto/DeterministicKey;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->hasPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    .end local p0    # "this":Lcom/google/bitcoin/crypto/DeterministicKey;
    :goto_0
    return-object p0

    .line 161
    .restart local p0    # "this":Lcom/google/bitcoin/crypto/DeterministicKey;
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getParent()Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, v4

    .line 162
    .local v5, "parentPub":Lcom/google/bitcoin/crypto/DeterministicKey;
    :goto_1
    new-instance v0, Lcom/google/bitcoin/crypto/DeterministicKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChildNumberPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/google/bitcoin/crypto/DeterministicKey;)V

    move-object p0, v0

    goto :goto_0

    .line 161
    .end local v5    # "parentPub":Lcom/google/bitcoin/crypto/DeterministicKey;
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getParent()Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubOnly()Lcom/google/bitcoin/crypto/DeterministicKey;

    move-result-object v5

    goto :goto_1
.end method

.method getPubPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->publicAsPoint:Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->publicAsPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->publicAsPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public hasPrivate()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/bitcoin/crypto/DeterministicKey;->privateAsFieldElement:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializePrivB58()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->serialize(Z)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->toBase58([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializePrivate()[B
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->serialize(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public serializePubB58()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->serialize(Z)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->toBase58([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializePublic()[B
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/bitcoin/crypto/DeterministicKey;->serialize(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toECKey()Lcom/google/bitcoin/core/ECKey;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubKeyBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    const-string v0, "ExtendedHierarchicKey[pub: {0}]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/DeterministicKey;->getPubKeyBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
