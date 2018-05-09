.class public Lcom/google/bitcoin/core/VarInt;
.super Ljava/lang/Object;
.source "VarInt.java"


# instance fields
.field private final originallyEncodedSize:I

.field public final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 32
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VarInt;->getSizeInBytes()I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    .line 33
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v4, 0xfd

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 39
    .local v0, "first":I
    if-ge v0, v4, :cond_0

    .line 41
    int-to-long v1, v0

    .line 42
    .local v1, "val":J
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    .line 56
    :goto_0
    iput-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 57
    return-void

    .line 43
    .end local v1    # "val":J
    :cond_0
    if-ne v0, v4, :cond_1

    .line 45
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-long v1, v3

    .line 46
    .restart local v1    # "val":J
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    goto :goto_0

    .line 47
    .end local v1    # "val":J
    :cond_1
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_2

    .line 49
    add-int/lit8 v3, p2, 0x1

    invoke-static {p1, v3}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v1

    .line 50
    .restart local v1    # "val":J
    const/4 v3, 0x5

    iput v3, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    goto :goto_0

    .line 53
    .end local v1    # "val":J
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {p1, v3}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v3

    add-int/lit8 v5, p2, 0x5

    invoke-static {p1, v5}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long v1, v3, v5

    .line 54
    .restart local v1    # "val":J
    const/16 v3, 0x9

    iput v3, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    goto :goto_0
.end method

.method public static sizeOf(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 78
    const/16 v0, 0xfd

    if-ge p0, v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 80
    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    .line 81
    const/4 v0, 0x3

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static sizeOf(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 89
    const-wide/16 v0, 0xfd

    invoke-static {p0, p1, v0, v1}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 91
    :cond_0
    const-wide/32 v0, 0x10000

    invoke-static {p0, p1, v0, v1}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {v0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x5

    goto :goto_0

    .line 96
    :cond_2
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public encode()[B
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    const-wide/16 v3, 0xfd

    invoke-static {v1, v2, v3, v4}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-array v0, v6, [B

    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 114
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    const-wide/32 v3, 0x10000

    invoke-static {v1, v2, v3, v4}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, -0x3

    aput-byte v1, v0, v5

    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 104
    :cond_1
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    sget-object v3, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {v3}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/bitcoin/core/Utils;->isLessThanUnsigned(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    new-array v0, v7, [B

    .line 106
    .local v0, "bytes":[B
    const/4 v1, -0x2

    aput-byte v1, v0, v5

    .line 107
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    invoke-static {v1, v2, v0, v6}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayLE(J[BI)V

    goto :goto_0

    .line 110
    .end local v0    # "bytes":[B
    :cond_2
    const/16 v1, 0x9

    new-array v0, v1, [B

    .line 111
    .restart local v0    # "bytes":[B
    const/4 v1, -0x1

    aput-byte v1, v0, v5

    .line 112
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    invoke-static {v1, v2, v0, v6}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayLE(J[BI)V

    .line 113
    iget-wide v1, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    invoke-static {v1, v2, v0, v7}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayLE(J[BI)V

    goto :goto_0
.end method

.method public getOriginalSizeInBytes()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/bitcoin/core/VarInt;->originallyEncodedSize:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/bitcoin/core/VarInt;->value:J

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(J)I

    move-result v0

    return v0
.end method
