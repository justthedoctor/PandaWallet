.class public Lcom/google/bitcoin/core/Base58;
.super Ljava/lang/Object;
.source "Base58.java"


# static fields
.field public static final ALPHABET:[C

.field private static final INDEXES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-string v1, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    .line 43
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lcom/google/bitcoin/core/Base58;->INDEXES:[I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/bitcoin/core/Base58;->INDEXES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    sget-object v1, Lcom/google/bitcoin/core/Base58;->INDEXES:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 49
    sget-object v1, Lcom/google/bitcoin/core/Base58;->INDEXES:[I

    sget-object v2, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([BII)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 199
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 200
    .local v0, "range":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 96
    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 136
    :goto_0
    return-object v9

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    new-array v3, v9, [B

    .line 100
    .local v3, "input58":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, "c":C
    const/4 v1, -0x1

    .line 104
    .local v1, "digit58":I
    if-ltz v0, :cond_1

    const/16 v9, 0x80

    if-ge v0, v9, :cond_1

    .line 105
    sget-object v9, Lcom/google/bitcoin/core/Base58;->INDEXES:[I

    aget v1, v9, v0

    .line 107
    :cond_1
    if-gez v1, :cond_2

    .line 108
    new-instance v9, Lcom/google/bitcoin/core/AddressFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal character "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 111
    :cond_2
    int-to-byte v9, v1

    aput-byte v9, v3, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "c":C
    .end local v1    # "digit58":I
    :cond_3
    const/4 v8, 0x0

    .line 115
    .local v8, "zeroCount":I
    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_4

    aget-byte v9, v3, v8

    if-nez v9, :cond_4

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    new-array v7, v9, [B

    .line 120
    .local v7, "temp":[B
    array-length v4, v7

    .line 122
    .local v4, "j":I
    move v6, v8

    .line 123
    .local v6, "startAt":I
    :goto_3
    array-length v9, v3

    if-ge v6, v9, :cond_6

    .line 124
    invoke-static {v3, v6}, Lcom/google/bitcoin/core/Base58;->divmod256([BI)B

    move-result v5

    .line 125
    .local v5, "mod":B
    aget-byte v9, v3, v6

    if-nez v9, :cond_5

    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 129
    :cond_5
    add-int/lit8 v4, v4, -0x1

    aput-byte v5, v7, v4

    goto :goto_3

    .line 132
    .end local v5    # "mod":B
    :cond_6
    :goto_4
    array-length v9, v7

    if-ge v4, v9, :cond_7

    aget-byte v9, v7, v4

    if-nez v9, :cond_7

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 136
    :cond_7
    sub-int v9, v4, v8

    array-length v10, v7

    invoke-static {v7, v9, v10}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object v9

    goto :goto_0
.end method

.method public static decodeChecked(Ljava/lang/String;)[B
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 150
    invoke-static {p0}, Lcom/google/bitcoin/core/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 151
    .local v3, "tmp":[B
    array-length v4, v3

    if-ge v4, v7, :cond_0

    .line 152
    new-instance v4, Lcom/google/bitcoin/core/AddressFormatException;

    const-string v5, "Input too short"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    invoke-static {v3, v6, v4}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object v0

    .line 154
    .local v0, "bytes":[B
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object v1

    .line 156
    .local v1, "checksum":[B
    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v3

    .line 157
    invoke-static {v3, v6, v7}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object v2

    .line 158
    .local v2, "hash":[B
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    new-instance v4, Lcom/google/bitcoin/core/AddressFormatException;

    const-string v5, "Checksum does not validate"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_1
    return-object v0
.end method

.method public static decodeToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/bitcoin/core/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static divmod256([BI)B
    .locals 5
    .param p0, "number58"    # [B
    .param p1, "startAt"    # I

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 187
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 188
    .local v0, "digit58":I
    mul-int/lit8 v4, v2, 0x3a

    add-int v3, v4, v0

    .line 190
    .local v3, "temp":I
    div-int/lit16 v4, v3, 0x100

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 192
    rem-int/lit16 v2, v3, 0x100

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "digit58":I
    .end local v3    # "temp":I
    :cond_0
    int-to-byte v4, v2

    return v4
.end method

.method private static divmod58([BI)B
    .locals 5
    .param p0, "number"    # [B
    .param p1, "startAt"    # I

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 170
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 171
    .local v0, "digit256":I
    mul-int/lit16 v4, v2, 0x100

    add-int v3, v4, v0

    .line 173
    .local v3, "temp":I
    div-int/lit8 v4, v3, 0x3a

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 175
    rem-int/lit8 v2, v3, 0x3a

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "digit256":I
    .end local v3    # "temp":I
    :cond_0
    int-to-byte v4, v2

    return v4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # [B

    .prologue
    const/4 v9, 0x0

    .line 55
    array-length v7, p0

    if-nez v7, :cond_0

    .line 56
    const-string v7, ""

    .line 88
    :goto_0
    return-object v7

    .line 58
    :cond_0
    array-length v7, p0

    invoke-static {p0, v9, v7}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object p0

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "zeroCount":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_1

    aget-byte v7, p0, v6

    if-nez v7, :cond_1

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    :cond_1
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v5, v7, [B

    .line 66
    .local v5, "temp":[B
    array-length v1, v5

    .line 68
    .local v1, "j":I
    move v4, v6

    .line 69
    .local v4, "startAt":I
    :goto_2
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 70
    invoke-static {p0, v4}, Lcom/google/bitcoin/core/Base58;->divmod58([BI)B

    move-result v2

    .line 71
    .local v2, "mod":B
    aget-byte v7, p0, v4

    if-nez v7, :cond_2

    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 74
    :cond_2
    add-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    aget-char v7, v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    goto :goto_2

    .line 78
    .end local v2    # "mod":B
    :cond_3
    :goto_3
    array-length v7, v5

    if-ge v1, v7, :cond_4

    aget-byte v7, v5, v1

    sget-object v8, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    aget-char v8, v8, v9

    if-ne v7, v8, :cond_4

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 82
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_5

    .line 83
    add-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    aget-char v7, v7, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    goto :goto_4

    .line 86
    :cond_5
    array-length v7, v5

    invoke-static {v5, v1, v7}, Lcom/google/bitcoin/core/Base58;->copyOfRange([BII)[B

    move-result-object v3

    .line 88
    .local v3, "output":[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
