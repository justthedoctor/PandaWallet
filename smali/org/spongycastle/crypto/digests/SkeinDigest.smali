.class public Lorg/spongycastle/crypto/digests/SkeinDigest;
.super Ljava/lang/Object;
.source "SkeinDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/spongycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "stateSizeBits"    # I
    .param p2, "digestSizeBits"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SkeinDigest;->init(Lorg/spongycastle/crypto/params/SkeinParameters;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SkeinDigest;)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/digests/SkeinDigest;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v1, p1, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 57
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinDigest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(Lorg/spongycastle/crypto/digests/SkeinDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/params/SkeinParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/params/SkeinParameters;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->init(Lorg/spongycastle/crypto/params/SkeinParameters;)V

    .line 94
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset()V

    .line 99
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SkeinDigest;

    .line 62
    .local v0, "d":Lorg/spongycastle/crypto/digests/SkeinDigest;
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v2, v0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 63
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update(B)V

    .line 104
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinDigest;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 109
    return-void
.end method
