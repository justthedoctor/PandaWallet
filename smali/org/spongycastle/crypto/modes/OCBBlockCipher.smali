.class public Lorg/spongycastle/crypto/modes/OCBBlockCipher;
.super Ljava/lang/Object;
.source "OCBBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private Checksum:[B

.field private L:Ljava/util/Vector;

.field private L_Asterisk:[B

.field private L_Dollar:[B

.field private OffsetHASH:[B

.field private OffsetMAIN:[B

.field private OffsetMAIN_0:[B

.field private Sum:[B

.field private forEncryption:Z

.field private hashBlock:[B

.field private hashBlockCount:J

.field private hashBlockPos:I

.field private hashCipher:Lorg/spongycastle/crypto/BlockCipher;

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private mainBlock:[B

.field private mainBlockCount:J

.field private mainBlockPos:I

.field private mainCipher:Lorg/spongycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "hashCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "mainCipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/16 v1, 0x10

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    if-nez p2, :cond_2

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' and \'mainCipher\' must be the same algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 98
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 99
    return-void
.end method

.method protected static OCB_double([B)[B
    .locals 6
    .param p0, "block"    # [B

    .prologue
    .line 509
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 510
    .local v1, "result":[B
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->shiftLeft([B[B)I

    move-result v0

    .line 515
    .local v0, "carry":I
    const/16 v2, 0xf

    aget-byte v3, v1, v2

    const/16 v4, 0x87

    rsub-int/lit8 v5, v0, 0x1

    shl-int/lit8 v5, v5, 0x3

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 517
    return-object v1
.end method

.method protected static OCB_extend([BI)V
    .locals 1
    .param p0, "block"    # [B
    .param p1, "pos"    # I

    .prologue
    .line 522
    const/16 v0, -0x80

    aput-byte v0, p0, p1

    .line 523
    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 525
    const/4 v0, 0x0

    aput-byte v0, p0, p1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method protected static OCB_ntz(J)I
    .locals 5
    .param p0, "x"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 531
    cmp-long v1, p0, v3

    if-nez v1, :cond_1

    .line 533
    const/16 v0, 0x40

    .line 542
    :cond_0
    return v0

    .line 536
    :cond_1
    const/4 v0, 0x0

    .line 537
    .local v0, "n":I
    :goto_0
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 539
    add-int/lit8 v0, v0, 0x1

    .line 540
    const/4 v1, 0x1

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method protected static shiftLeft([B[B)I
    .locals 4
    .param p0, "block"    # [B
    .param p1, "output"    # [B

    .prologue
    .line 547
    const/16 v2, 0x10

    .line 548
    .local v2, "i":I
    const/4 v1, 0x0

    .line 549
    .local v1, "bit":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 551
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 552
    .local v0, "b":I
    shl-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 553
    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 554
    goto :goto_0

    .line 555
    .end local v0    # "b":I
    :cond_0
    return v1
.end method

.method protected static xor([B[B)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    .line 560
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 562
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 560
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method protected clear([B)V
    .locals 1
    .param p1, "bs"    # [B

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 421
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, "tag":[B
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v3, :cond_1

    .line 329
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v3, v4, :cond_0

    .line 331
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "data too short"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 334
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v2, v3, [B

    .line 335
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_1
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    if-lez v3, :cond_2

    .line 343
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 344
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    .line 350
    :cond_2
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    if-lez v3, :cond_4

    .line 352
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 355
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 358
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 360
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 361
    .local v0, "Pad":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-interface {v3, v4, v6, v0, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 363
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 365
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v3, :cond_4

    .line 369
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 370
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 377
    .end local v0    # "Pad":[B
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 378
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 379
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 380
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 382
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 383
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 390
    .local v1, "resultLen":I
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_6

    .line 393
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    add-int v4, p2, v1

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v1, v3

    .line 405
    :cond_5
    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->reset(Z)V

    .line 407
    return v1

    .line 399
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    invoke-static {v3, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 401
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "mac check in OCB failed"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLSub(I)[B
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 425
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 427
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 246
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v0, p1, v1

    .line 247
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 249
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 251
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 256
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v0, p1, v1

    .line 257
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 259
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 265
    :goto_0
    return v1

    .line 263
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 265
    :cond_1
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 23
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    .line 115
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 120
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/spongycastle/crypto/params/AEADParameters;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v7, p2

    .line 122
    check-cast v7, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 124
    .local v7, "aeadParameters":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v5

    .line 125
    .local v5, "N":[B
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 127
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v15

    .line 128
    .local v15, "macSizeBits":I
    const/16 v18, 0x40

    move/from16 v0, v18

    if-lt v15, v0, :cond_0

    const/16 v18, 0x80

    move/from16 v0, v18

    if-gt v15, v0, :cond_0

    rem-int/lit8 v18, v15, 0x8

    if-eqz v18, :cond_1

    .line 130
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid value for MAC size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 133
    :cond_1
    div-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 134
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v14

    .line 150
    .end local v7    # "aeadParameters":Lorg/spongycastle/crypto/params/AEADParameters;
    .end local v15    # "macSizeBits":I
    .local v14, "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    .line 151
    if-eqz p1, :cond_5

    const/16 v18, 0x10

    :goto_1
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    .line 153
    if-nez v5, :cond_2

    .line 155
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 158
    :cond_2
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 160
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "IV must be no more than 15 bytes"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 136
    .end local v5    # "N":[B
    .end local v14    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, p2

    .line 138
    check-cast v17, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 140
    .local v17, "parametersWithIV":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 141
    .restart local v5    # "N":[B
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 142
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 143
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 144
    .restart local v14    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 147
    .end local v5    # "N":[B
    .end local v14    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v17    # "parametersWithIV":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "invalid parameters passed to OCB"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 151
    .restart local v5    # "N":[B
    .restart local v14    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    goto :goto_1

    .line 167
    :cond_6
    if-nez v14, :cond_7

    .line 173
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v14}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 176
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v22}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    .line 181
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 188
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 189
    .local v16, "nonce":[B
    const/16 v18, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v5

    move/from16 v20, v0

    sub-int v19, v19, v20

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v18

    .line 191
    array-length v0, v5

    move/from16 v18, v0

    rsub-int/lit8 v18, v18, 0xf

    aget-byte v19, v16, v18

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v18

    .line 193
    const/16 v18, 0xf

    aget-byte v18, v16, v18

    and-int/lit8 v11, v18, 0x3f

    .line 195
    .local v11, "bottom":I
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 196
    .local v4, "Ktop":[B
    const/16 v18, 0xf

    aget-byte v19, v16, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v18

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v4, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 199
    const/16 v18, 0x18

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 200
    .local v6, "Stretch":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v13, v0, :cond_8

    .line 203
    add-int/lit8 v18, v13, 0x10

    aget-byte v19, v4, v13

    add-int/lit8 v20, v13, 0x1

    aget-byte v20, v4, v20

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v6, v18

    .line 201
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 206
    :cond_8
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    .line 207
    rem-int/lit8 v10, v11, 0x8

    .local v10, "bits":I
    div-int/lit8 v12, v11, 0x8

    .line 208
    .local v12, "bytes":I
    if-nez v10, :cond_b

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v12, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 223
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 225
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 226
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 228
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    .line 229
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    .line 231
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    .line 237
    :cond_a
    return-void

    .line 214
    :cond_b
    const/4 v13, 0x0

    :goto_3
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 216
    aget-byte v18, v6, v12

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 217
    .local v8, "b1":I
    add-int/lit8 v12, v12, 0x1

    aget-byte v18, v6, v12

    move/from16 v0, v18

    and-int/lit16 v9, v0, 0xff

    .line 218
    .local v9, "b2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    move-object/from16 v18, v0

    shl-int v19, v8, v10

    rsub-int/lit8 v20, v10, 0x8

    ushr-int v20, v9, v20

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v18, v13

    .line 214
    add-int/lit8 v13, v13, 0x1

    goto :goto_3
.end method

.method public processAADByte(B)V
    .locals 2
    .param p1, "input"    # B

    .prologue
    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    aput-byte p1, v0, v1

    .line 271
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processHashBlock()V

    .line 275
    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 281
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 282
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processHashBlock()V

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .param p1, "input"    # B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    aput-byte p1, v0, v1

    .line 293
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p0, p2, p3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    .line 296
    const/16 v0, 0x10

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 308
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 309
    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 311
    add-int v2, p5, v1

    invoke-virtual {p0, p4, v2}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    .line 312
    add-int/lit8 v1, v1, 0x10

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    return v1
.end method

.method protected processHashBlock()V
    .locals 4

    .prologue
    .line 437
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 439
    return-void
.end method

.method protected processMainBlock([BI)V
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 447
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 450
    iput v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 455
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 456
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-interface {v0, v1, v5, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 457
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 459
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v5, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 464
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v0, v6, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 467
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->reset(Z)V

    .line 413
    return-void
.end method

.method protected reset(Z)V
    .locals 4
    .param p1, "clearMac"    # Z

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 471
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 472
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 474
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 475
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 477
    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 478
    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 480
    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 481
    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 483
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 484
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 485
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 488
    if-eqz p1, :cond_0

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    .line 497
    :cond_1
    return-void
.end method

.method protected updateHASH([B)V
    .locals 4
    .param p1, "LSub"    # [B

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 502
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 503
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 504
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 505
    return-void
.end method
