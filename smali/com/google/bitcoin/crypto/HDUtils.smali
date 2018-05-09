.class public final Lcom/google/bitcoin/crypto/HDUtils;
.super Ljava/lang/Object;
.source "HDUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/bitcoin/crypto/HDUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/bitcoin/crypto/HDUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append(Lcom/google/common/collect/ImmutableList;Lcom/google/bitcoin/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p1, "childNumber"    # Lcom/google/bitcoin/crypto/ChildNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/bitcoin/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "path":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/bitcoin/crypto/ChildNumber;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static createHmacSha512Digest([B)Lorg/spongycastle/crypto/macs/HMac;
    .locals 3
    .param p0, "key"    # [B

    .prologue
    .line 37
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 38
    .local v0, "digest":Lorg/spongycastle/crypto/digests/SHA512Digest;
    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 39
    .local v1, "hMac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 40
    return-object v1
.end method

.method static getBytes(Lorg/spongycastle/math/ec/ECPoint;)[B
    .locals 1
    .param p0, "pubKPoint"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method static hmacSha512(Lorg/spongycastle/crypto/macs/HMac;[B)[B
    .locals 3
    .param p0, "hmacSha512"    # Lorg/spongycastle/crypto/macs/HMac;
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/HMac;->reset()V

    .line 45
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 46
    const/16 v1, 0x40

    new-array v0, v1, [B

    .line 47
    .local v0, "out":[B
    invoke-virtual {p0, v0, v2}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 48
    return-object v0
.end method

.method public static hmacSha512([B[B)[B
    .locals 1
    .param p0, "key"    # [B
    .param p1, "data"    # [B

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/bitcoin/crypto/HDUtils;->createHmacSha512Digest([B)Lorg/spongycastle/crypto/macs/HMac;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/bitcoin/crypto/HDUtils;->hmacSha512(Lorg/spongycastle/crypto/macs/HMac;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static longTo4ByteArray(J)[B
    .locals 4
    .param p0, "n"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 60
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 61
    .local v0, "bytes":[B
    sget-boolean v1, Lcom/google/bitcoin/crypto/HDUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 62
    :cond_0
    return-object v0
.end method

.method static toCompressed([B)[B
    .locals 2
    .param p0, "uncompressedPoint"    # [B

    .prologue
    .line 56
    sget-object v0, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method
