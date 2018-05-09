.class public Lcom/google/bitcoin/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/Utils$Pair;
    }
.end annotation


# static fields
.field public static final BITCOIN_SIGNED_MESSAGE_HEADER:Ljava/lang/String; = "Pandacoin Signed Message:\n"

.field public static final BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

.field public static final CENT:Ljava/math/BigInteger;

.field public static final COIN:Ljava/math/BigInteger;

.field public static final NEGATIVE_ONE:Ljava/math/BigInteger;

.field private static final bitMask:[I

.field private static final digest:Ljava/security/MessageDigest;

.field private static mockSleepQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mockTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 49
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/Utils;->NEGATIVE_ONE:Ljava/math/BigInteger;

    .line 53
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const-string v1, "Pandacoin Signed Message:\n"

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    .line 72
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "100000000"

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/bitcoin/core/Utils;->COIN:Ljava/math/BigInteger;

    .line 81
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "1000000"

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    .line 574
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/bitcoin/core/Utils;->bitMask:[I

    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 574
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method

.method public static appendByte([BB)[B
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "b"    # B

    .prologue
    .line 527
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 528
    .local v0, "result":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 529
    return-object v0
.end method

.method public static bigIntegerToBytes(Ljava/math/BigInteger;I)[B
    .locals 6
    .param p0, "b"    # Ljava/math/BigInteger;
    .param p1, "numBytes"    # I

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    .line 109
    :cond_0
    new-array v1, p1, [B

    .line 110
    .local v1, "bytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 111
    .local v0, "biBytes":[B
    array-length v4, v0

    add-int/lit8 v5, p1, 0x1

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 112
    .local v3, "start":I
    :goto_1
    array-length v4, v0

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    .local v2, "length":I
    sub-int v4, p1, v2

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 111
    .end local v2    # "length":I
    .end local v3    # "start":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 346
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_1

    const/4 v4, 0x1

    .line 347
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    .line 349
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v6, 0x8

    invoke-direct {v0, p0, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 350
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "formatted":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "decimalPoint":I
    const/4 v5, 0x0

    .line 354
    .local v5, "toDelete":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    add-int/lit8 v6, v1, 0x2

    if-le v3, v6, :cond_2

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-ne v6, v8, :cond_2

    .line 356
    add-int/lit8 v5, v5, 0x1

    .line 354
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v0    # "bd":Ljava/math/BigDecimal;
    .end local v1    # "decimalPoint":I
    .end local v2    # "formatted":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "negative":Z
    .end local v5    # "toDelete":I
    :cond_1
    move v4, v7

    .line 346
    goto :goto_0

    .line 360
    .restart local v0    # "bd":Ljava/math/BigDecimal;
    .restart local v1    # "decimalPoint":I
    .restart local v2    # "formatted":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "negative":Z
    .restart local v5    # "toDelete":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const-string v6, "-"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    const-string v6, ""

    goto :goto_2
.end method

.method public static bitcoinValueToPlainString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/google/bitcoin/core/Utils;->COIN:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 380
    .local v0, "valueInBTC":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 252
    .local v2, "buf":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 253
    .local v1, "b":B
    and-int/lit16 v6, v1, 0xff

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 255
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "b":B
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static checkBitLE([BI)Z
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 578
    ushr-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    sget-object v1, Lcom/google/bitcoin/core/Utils;->bitMask:[I

    and-int/lit8 v2, p1, 0x7

    aget v1, v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 518
    new-array v0, p1, [B

    .line 519
    .local v0, "out":[B
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    return-object v0
.end method

.method public static currentTimeMillis()J
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 510
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static currentTimeSeconds()J
    .locals 4

    .prologue
    .line 514
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static decodeCompactBits(J)Ljava/math/BigInteger;
    .locals 9
    .param p0, "compact"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const-wide/16 v5, 0xff

    .line 449
    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v1, v2, 0xff

    .line 450
    .local v1, "size":I
    add-int/lit8 v2, v1, 0x4

    new-array v0, v2, [B

    .line 451
    .local v0, "bytes":[B
    int-to-byte v2, v1

    aput-byte v2, v0, v8

    .line 452
    if-lt v1, v7, :cond_0

    const/4 v2, 0x4

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 453
    :cond_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v2, 0x5

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 454
    :cond_1
    if-lt v1, v8, :cond_2

    const/4 v2, 0x6

    const/4 v3, 0x0

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 455
    :cond_2
    invoke-static {v0, v7}, Lcom/google/bitcoin/core/Utils;->decodeMPI([BZ)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static decodeMPI([BZ)Ljava/math/BigInteger;
    .locals 7
    .param p0, "mpi"    # [B
    .param p1, "hasLength"    # Z

    .prologue
    const/4 v4, 0x0

    .line 391
    if-eqz p1, :cond_1

    .line 392
    invoke-static {p0, v4}, Lcom/google/bitcoin/core/Utils;->readUint32BE([BI)J

    move-result-wide v5

    long-to-int v2, v5

    .line 393
    .local v2, "length":I
    new-array v0, v2, [B

    .line 394
    .local v0, "buf":[B
    const/4 v5, 0x4

    invoke-static {p0, v5, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    .end local v2    # "length":I
    :goto_0
    array-length v5, v0

    if-nez v5, :cond_2

    .line 398
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 403
    :cond_0
    :goto_1
    return-object v3

    .line 396
    .end local v0    # "buf":[B
    :cond_1
    move-object v0, p0

    .restart local v0    # "buf":[B
    goto :goto_0

    .line 399
    :cond_2
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_4

    const/4 v1, 0x1

    .line 400
    .local v1, "isNegative":Z
    :goto_2
    if-eqz v1, :cond_3

    .line 401
    aget-byte v5, v0, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 402
    :cond_3
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 403
    .local v3, "result":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    .end local v1    # "isNegative":Z
    .end local v3    # "result":Ljava/math/BigInteger;
    :cond_4
    move v1, v4

    .line 399
    goto :goto_2
.end method

.method public static doubleDigest([B)[B
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 194
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/bitcoin/core/Utils;->doubleDigest([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static doubleDigest([BII)[B
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 210
    sget-object v2, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 211
    :try_start_0
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 212
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 213
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 214
    .local v0, "first":[B
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 215
    .end local v0    # "first":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static doubleDigestTwoBuffers([BII[BII)[B
    .locals 3
    .param p0, "input1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "input2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I

    .prologue
    .line 231
    sget-object v2, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 232
    :try_start_0
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 233
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 234
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p3, p4, p5}, Ljava/security/MessageDigest;->update([BII)V

    .line 235
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 236
    .local v0, "first":[B
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 237
    .end local v0    # "first":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static encodeMPI(Ljava/math/BigInteger;Z)[B
    .locals 9
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "includeLength"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 413
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    if-nez p1, :cond_1

    .line 415
    new-array v3, v5, [B

    .line 442
    :cond_0
    :goto_0
    return-object v3

    .line 417
    :cond_1
    new-array v3, v8, [B

    fill-array-data v3, :array_0

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_5

    move v1, v4

    .line 420
    .local v1, "isNegative":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    .line 422
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 423
    .local v0, "array":[B
    array-length v2, v0

    .line 424
    .local v2, "length":I
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_4

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 426
    :cond_4
    if-eqz p1, :cond_6

    .line 427
    add-int/lit8 v4, v2, 0x4

    new-array v3, v4, [B

    .line 428
    .local v3, "result":[B
    array-length v4, v0

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x3

    array-length v6, v0

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    int-to-long v6, v2

    invoke-static {v6, v7, v3, v5}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayBE(J[BI)V

    .line 430
    if-eqz v1, :cond_0

    .line 431
    aget-byte v4, v3, v8

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    goto :goto_0

    .end local v0    # "array":[B
    .end local v1    # "isNegative":Z
    .end local v2    # "length":I
    .end local v3    # "result":[B
    :cond_5
    move v1, v5

    .line 419
    goto :goto_1

    .line 435
    .restart local v0    # "array":[B
    .restart local v1    # "isNegative":Z
    .restart local v2    # "length":I
    :cond_6
    array-length v6, v0

    if-eq v2, v6, :cond_7

    .line 436
    new-array v3, v2, [B

    .line 437
    .restart local v3    # "result":[B
    array-length v6, v0

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    :goto_2
    if-eqz v1, :cond_0

    .line 441
    aget-byte v4, v3, v5

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    goto :goto_0

    .line 439
    .end local v3    # "result":[B
    :cond_7
    move-object v3, v0

    .restart local v3    # "result":[B
    goto :goto_2

    .line 417
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static finishMockSleep()V
    .locals 2

    .prologue
    .line 619
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    return-void
.end method

.method public static formatMessageForSigning(Ljava/lang/String;)[B
    .locals 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 560
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Lcom/google/bitcoin/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 562
    sget-object v4, Lcom/google/bitcoin/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 563
    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 564
    .local v2, "messageBytes":[B
    new-instance v3, Lcom/google/bitcoin/core/VarInt;

    array-length v4, v2

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    .line 565
    .local v3, "size":Lcom/google/bitcoin/core/VarInt;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 566
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 567
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 568
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "messageBytes":[B
    .end local v3    # "size":Lcom/google/bitcoin/core/VarInt;
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static int64ToByteStreamLE(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "val"    # J
    .param p2, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xff

    .line 167
    const/4 v0, 0x0

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 168
    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 171
    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 172
    const/16 v0, 0x28

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 173
    const/16 v0, 0x30

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 174
    const/16 v0, 0x38

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 175
    return-void
.end method

.method public static isLessThanUnsigned(JJ)Z
    .locals 1
    .param p0, "n1"    # J
    .param p2, "n2"    # J

    .prologue
    .line 244
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindows()Z
    .locals 2

    .prologue
    .line 550
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static maxOfMostFreq(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 638
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    :cond_0
    return v3

    .line 641
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 642
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v5

    .line 643
    .local v5, "pairs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/Utils$Pair;>;"
    new-instance v7, Lcom/google/bitcoin/core/Utils$Pair;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v7, v6, v3}, Lcom/google/bitcoin/core/Utils$Pair;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 645
    .local v1, "item":I
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Utils$Pair;

    .line 646
    .local v4, "pair":Lcom/google/bitcoin/core/Utils$Pair;
    iget v6, v4, Lcom/google/bitcoin/core/Utils$Pair;->item:I

    if-eq v6, v1, :cond_2

    .line 647
    new-instance v4, Lcom/google/bitcoin/core/Utils$Pair;

    .end local v4    # "pair":Lcom/google/bitcoin/core/Utils$Pair;
    invoke-direct {v4, v1, v3}, Lcom/google/bitcoin/core/Utils$Pair;-><init>(II)V

    .restart local v4    # "pair":Lcom/google/bitcoin/core/Utils$Pair;
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_2
    iget v6, v4, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    goto :goto_0

    .line 652
    .end local v1    # "item":I
    .end local v4    # "pair":Lcom/google/bitcoin/core/Utils$Pair;
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 653
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Utils$Pair;

    iget v2, v6, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    .line 654
    .local v2, "maxCount":I
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Utils$Pair;

    iget v3, v6, Lcom/google/bitcoin/core/Utils$Pair;->item:I

    .line 655
    .local v3, "maxItem":I
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Utils$Pair;

    .line 656
    .restart local v4    # "pair":Lcom/google/bitcoin/core/Utils$Pair;
    iget v6, v4, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    if-ne v6, v2, :cond_0

    .line 658
    iget v6, v4, Lcom/google/bitcoin/core/Utils$Pair;->item:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1
.end method

.method public static varargs maxOfMostFreq([I)I
    .locals 6
    .param p0, "items"    # [I

    .prologue
    .line 632
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 633
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .local v2, "item":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v2    # "item":I
    :cond_0
    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->maxOfMostFreq(Ljava/util/List;)I

    move-result v5

    return v5
.end method

.method public static now()Ljava/util/Date;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    .line 501
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static parseAsHexOrBase58(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 538
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 544
    :goto_0
    return-object v2

    .line 539
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p0}, Lcom/google/bitcoin/core/Base58;->decodeChecked(Ljava/lang/String;)[B
    :try_end_1
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 543
    :catch_1
    move-exception v1

    .line 544
    .local v1, "e1":Lcom/google/bitcoin/core/AddressFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static passMockSleep()V
    .locals 2

    .prologue
    .line 614
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method

.method public static readInt64([BI)J
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 303
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    int-to-long v1, v1

    and-long/2addr v1, v6

    const/4 v3, 0x0

    shl-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v3, p0, p1

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v3, p0, p1

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v3, p0, p1

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static readUint16BE([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 321
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint32([BI)J
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 296
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    int-to-long v1, v1

    and-long/2addr v1, v6

    const/4 v3, 0x0

    shl-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v3, p0, p1

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, p0, v0

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static readUint32BE([BI)J
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v5, 0xff

    .line 314
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes([B)[B
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 268
    array-length v2, p0

    new-array v0, v2, [B

    .line 269
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 270
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-object v0
.end method

.method public static reverseDwordBytes([BI)[B
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "trimLength"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 282
    if-ltz p1, :cond_0

    rem-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 284
    if-ltz p1, :cond_3

    array-length v3, p0

    if-le v3, p1, :cond_3

    .end local p1    # "trimLength":I
    :goto_1
    new-array v2, p1, [B

    .line 286
    .local v2, "rev":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 287
    invoke-static {p0, v0, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v6, :cond_4

    .line 289
    add-int v3, v0, v1

    add-int/lit8 v4, v0, 0x3

    sub-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v2, v3

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "rev":[B
    .restart local p1    # "trimLength":I
    :cond_2
    move v3, v5

    .line 281
    goto :goto_0

    .line 284
    :cond_3
    array-length p1, p0

    goto :goto_1

    .line 286
    .end local p1    # "trimLength":I
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "rev":[B
    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 292
    .end local v1    # "j":I
    :cond_5
    return-object v2
.end method

.method public static rollMockClock(I)Ljava/util/Date;
    .locals 2
    .param p0, "seconds"    # I

    .prologue
    .line 467
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->rollMockClockMillis(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static rollMockClockMillis(J)Ljava/util/Date;
    .locals 3
    .param p0, "millis"    # J

    .prologue
    .line 474
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use setMockClock() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    new-instance v0, Ljava/util/Date;

    sget-object v1, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    .line 477
    sget-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    return-object v0
.end method

.method public static scryptDigest([B)[B
    .locals 7
    .param p0, "input"    # [B

    .prologue
    .line 199
    const/16 v2, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBitLE([BI)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 583
    ushr-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v0

    sget-object v2, Lcom/google/bitcoin/core/Utils;->bitMask:[I

    and-int/lit8 v3, p1, 0x7

    aget v2, v2, v3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 584
    return-void
.end method

.method public static setMockClock()V
    .locals 1

    .prologue
    .line 484
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    .line 485
    return-void
.end method

.method public static setMockClock(J)V
    .locals 3
    .param p0, "mockClock"    # J

    .prologue
    .line 491
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    .line 492
    return-void
.end method

.method public static setMockSleep(Z)V
    .locals 3
    .param p0, "isEnable"    # Z

    .prologue
    .line 604
    if-eqz p0, :cond_0

    .line 605
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    .line 606
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockTime:Ljava/util/Date;

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0
.end method

.method public static sha256hash160([B)[B
    .locals 6
    .param p0, "input"    # [B

    .prologue
    .line 329
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 330
    .local v3, "sha256":[B
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 331
    .local v0, "digest":Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    .line 332
    const/16 v4, 0x14

    new-array v2, v4, [B

    .line 333
    .local v2, "out":[B
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-object v2

    .line 335
    .end local v0    # "digest":Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
    .end local v2    # "out":[B
    .end local v3    # "sha256":[B
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static singleDigest([BII)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 219
    sget-object v1, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 220
    :try_start_0
    sget-object v0, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 221
    sget-object v0, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 222
    sget-object v0, Lcom/google/bitcoin/core/Utils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sleep(J)V
    .locals 3
    .param p0, "millis"    # J

    .prologue
    .line 588
    sget-object v1, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v1, :cond_1

    .line 589
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 593
    .local v0, "isMultiPass":Z
    invoke-static {p0, p1}, Lcom/google/bitcoin/core/Utils;->rollMockClockMillis(J)Ljava/util/Date;

    .line 594
    if-eqz v0, :cond_0

    .line 595
    sget-object v1, Lcom/google/bitcoin/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "isMultiPass":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toNanoCoins(II)Ljava/math/BigInteger;
    .locals 8
    .param p0, "coins"    # I
    .param p1, "cents"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    if-ltz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    if-ltz p0, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    int-to-long v4, p0

    sget-object v1, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    sget-object v6, Lcom/google/bitcoin/core/Utils;->COIN:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    :goto_3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/Utils;->COIN:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 93
    .local v0, "bi":Ljava/math/BigInteger;
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    return-object v0

    .end local v0    # "bi":Ljava/math/BigInteger;
    :cond_0
    move v1, v3

    .line 88
    goto :goto_0

    :cond_1
    move v1, v3

    .line 89
    goto :goto_1

    :cond_2
    move v1, v3

    .line 90
    goto :goto_2

    :cond_3
    move v2, v3

    .line 91
    goto :goto_3
.end method

.method public static toNanoCoins(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "coins"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    .local v0, "bigint":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Negative coins specified"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    sget-object v1, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Amount larger than the total quantity of Pandacoins possible specified."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    return-object v0
.end method

.method public static uint32ToByteArrayBE(J[BI)V
    .locals 5
    .param p0, "val"    # J
    .param p2, "out"    # [B
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v3, 0xff

    .line 135
    add-int/lit8 v0, p3, 0x0

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 136
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 137
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 138
    add-int/lit8 v0, p3, 0x3

    const/4 v1, 0x0

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 139
    return-void
.end method

.method public static uint32ToByteArrayLE(J[BI)V
    .locals 5
    .param p0, "val"    # J
    .param p2, "out"    # [B
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v3, 0xff

    .line 142
    add-int/lit8 v0, p3, 0x0

    const/4 v1, 0x0

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 143
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 144
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 145
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 146
    return-void
.end method

.method public static uint32ToByteStreamLE(JLjava/io/OutputStream;)V
    .locals 4
    .param p0, "val"    # J
    .param p2, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xff

    .line 160
    const/4 v0, 0x0

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 161
    const/16 v0, 0x8

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 162
    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 163
    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 164
    return-void
.end method

.method public static uint64ToByteArrayLE(J[BI)V
    .locals 5
    .param p0, "val"    # J
    .param p2, "out"    # [B
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v3, 0xff

    .line 149
    add-int/lit8 v0, p3, 0x0

    const/4 v1, 0x0

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 150
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 151
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 152
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 153
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 154
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x28

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 155
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 156
    add-int/lit8 v0, p3, 0x7

    const/16 v1, 0x38

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 157
    return-void
.end method

.method public static uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 178
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 179
    .local v0, "bytes":[B
    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Input too large to encode into a uint64"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 184
    array-length v2, v0

    if-ge v2, v3, :cond_1

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
