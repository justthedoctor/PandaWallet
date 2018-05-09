.class public Lde/schildbach/wallet/util/Base43;
.super Ljava/lang/Object;
.source "Base43.java"


# static fields
.field private static final ALPHABET:[C

.field private static final INDEXES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ$*+-./:"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    .line 32
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lde/schildbach/wallet/util/Base43;->INDEXES:[I

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lde/schildbach/wallet/util/Base43;->INDEXES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    sget-object v1, Lde/schildbach/wallet/util/Base43;->INDEXES:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 39
    sget-object v1, Lde/schildbach/wallet/util/Base43;->INDEXES:[I

    sget-object v2, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([BII)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 168
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 169
    .local v0, "range":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 83
    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 125
    :goto_0
    return-object v9

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    new-array v3, v9, [B

    .line 87
    .local v3, "input43":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 89
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 91
    .local v0, "c":C
    const/4 v1, -0x1

    .line 93
    .local v1, "digit43":I
    if-ltz v0, :cond_1

    const/16 v9, 0x80

    if-ge v0, v9, :cond_1

    .line 94
    sget-object v9, Lde/schildbach/wallet/util/Base43;->INDEXES:[I

    aget v1, v9, v0

    .line 96
    :cond_1
    if-gez v1, :cond_2

    .line 97
    new-instance v9, Ljava/lang/IllegalArgumentException;

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

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 99
    :cond_2
    int-to-byte v9, v1

    aput-byte v9, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "c":C
    .end local v1    # "digit43":I
    :cond_3
    const/4 v8, 0x0

    .line 104
    .local v8, "zeroCount":I
    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_4

    aget-byte v9, v3, v8

    if-nez v9, :cond_4

    .line 105
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    new-array v7, v9, [B

    .line 109
    .local v7, "temp":[B
    array-length v4, v7

    .line 111
    .local v4, "j":I
    move v6, v8

    .line 112
    .local v6, "startAt":I
    :goto_3
    array-length v9, v3

    if-ge v6, v9, :cond_6

    .line 114
    invoke-static {v3, v6}, Lde/schildbach/wallet/util/Base43;->divmod256([BI)B

    move-result v5

    .line 115
    .local v5, "mod":B
    aget-byte v9, v3, v6

    if-nez v9, :cond_5

    .line 116
    add-int/lit8 v6, v6, 0x1

    .line 118
    :cond_5
    add-int/lit8 v4, v4, -0x1

    aput-byte v5, v7, v4

    goto :goto_3

    .line 122
    .end local v5    # "mod":B
    :cond_6
    :goto_4
    array-length v9, v7

    if-ge v4, v9, :cond_7

    aget-byte v9, v7, v4

    if-nez v9, :cond_7

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 125
    :cond_7
    sub-int v9, v4, v8

    array-length v10, v7

    invoke-static {v7, v9, v10}, Lde/schildbach/wallet/util/Base43;->copyOfRange([BII)[B

    move-result-object v9

    goto :goto_0
.end method

.method private static divmod256([BI)B
    .locals 5
    .param p0, "number43"    # [B
    .param p1, "startAt"    # I

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 155
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 156
    .local v0, "digit58":I
    mul-int/lit8 v4, v2, 0x2b

    add-int v3, v4, v0

    .line 158
    .local v3, "temp":I
    div-int/lit16 v4, v3, 0x100

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 160
    rem-int/lit16 v2, v3, 0x100

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "digit58":I
    .end local v3    # "temp":I
    :cond_0
    int-to-byte v4, v2

    return v4
.end method

.method private static divmod43([BI)B
    .locals 5
    .param p0, "number"    # [B
    .param p1, "startAt"    # I

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 136
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 137
    .local v0, "digit256":I
    mul-int/lit16 v4, v2, 0x100

    add-int v3, v4, v0

    .line 139
    .local v3, "temp":I
    div-int/lit8 v4, v3, 0x2b

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 141
    rem-int/lit8 v2, v3, 0x2b

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "digit256":I
    .end local v3    # "temp":I
    :cond_0
    int-to-byte v4, v2

    return v4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 44
    array-length v6, p0

    if-nez v6, :cond_0

    .line 45
    const-string v6, ""

    .line 77
    :goto_0
    return-object v6

    .line 47
    :cond_0
    array-length v6, p0

    invoke-static {p0, v8, v6}, Lde/schildbach/wallet/util/Base43;->copyOfRange([BII)[B

    move-result-object p0

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, "zeroCount":I
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_1

    aget-byte v6, p0, v5

    if-nez v6, :cond_1

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    :cond_1
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [B

    .line 56
    .local v4, "temp":[B
    array-length v0, v4

    .line 58
    .local v0, "j":I
    move v3, v5

    .line 59
    .local v3, "startAt":I
    :goto_2
    array-length v6, p0

    if-ge v3, v6, :cond_3

    .line 61
    invoke-static {p0, v3}, Lde/schildbach/wallet/util/Base43;->divmod43([BI)B

    move-result v1

    .line 62
    .local v1, "mod":B
    aget-byte v6, p0, v3

    if-nez v6, :cond_2

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    :cond_2
    add-int/lit8 v0, v0, -0x1

    sget-object v6, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    aget-char v6, v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    goto :goto_2

    .line 68
    .end local v1    # "mod":B
    :cond_3
    :goto_3
    array-length v6, v4

    if-ge v0, v6, :cond_4

    aget-byte v6, v4, v0

    sget-object v7, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_4

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5

    .line 73
    add-int/lit8 v0, v0, -0x1

    sget-object v6, Lde/schildbach/wallet/util/Base43;->ALPHABET:[C

    aget-char v6, v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    goto :goto_4

    .line 75
    :cond_5
    array-length v6, v4

    invoke-static {v4, v0, v6}, Lde/schildbach/wallet/util/Base43;->copyOfRange([BII)[B

    move-result-object v2

    .line 77
    .local v2, "output":[B
    new-instance v6, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method
