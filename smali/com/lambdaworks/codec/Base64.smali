.class public Lcom/lambdaworks/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decode:[I

.field private static final encode:[C

.field private static final pad:C = '='


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/lambdaworks/codec/Base64;->encode:[C

    .line 20
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lcom/lambdaworks/codec/Base64;->decode:[I

    .line 24
    sget-object v1, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lambdaworks/codec/Base64;->encode:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 26
    sget-object v1, Lcom/lambdaworks/codec/Base64;->decode:[I

    sget-object v2, Lcom/lambdaworks/codec/Base64;->encode:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/16 v2, 0x3d

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 2
    .param p0, "chars"    # [C

    .prologue
    .line 39
    sget-object v0, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/lambdaworks/codec/Base64;->decode([C[IC)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C[IC)[B
    .locals 13
    .param p0, "src"    # [C
    .param p1, "table"    # [I
    .param p2, "pad"    # C

    .prologue
    const/4 v7, 0x0

    .line 76
    array-length v5, p0

    .line 78
    .local v5, "len":I
    if-nez v5, :cond_0

    new-array v4, v7, [B

    .line 107
    :goto_0
    return-object v4

    .line 80
    :cond_0
    add-int/lit8 v11, v5, -0x1

    aget-char v11, p0, v11

    if-ne v11, p2, :cond_1

    add-int/lit8 v11, v5, -0x2

    aget-char v11, p0, v11

    if-ne v11, p2, :cond_2

    const/4 v7, 0x2

    .line 81
    .local v7, "padCount":I
    :cond_1
    :goto_1
    mul-int/lit8 v11, v5, 0x6

    shr-int/lit8 v11, v11, 0x3

    sub-int v1, v11, v7

    .line 82
    .local v1, "bytes":I
    div-int/lit8 v11, v1, 0x3

    mul-int/lit8 v0, v11, 0x3

    .line 84
    .local v0, "blocks":I
    new-array v4, v1, [B

    .line 85
    .local v4, "dst":[B
    const/4 v9, 0x0

    .local v9, "si":I
    const/4 v2, 0x0

    .local v2, "di":I
    move v3, v2

    .end local v2    # "di":I
    .local v3, "di":I
    move v10, v9

    .line 87
    .end local v9    # "si":I
    .local v10, "si":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 88
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "si":I
    .restart local v9    # "si":I
    aget-char v11, p0, v10

    aget v11, p1, v11

    shl-int/lit8 v11, v11, 0x12

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "si":I
    .restart local v10    # "si":I
    aget-char v12, p0, v9

    aget v12, p1, v12

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "si":I
    .restart local v9    # "si":I
    aget-char v12, p0, v10

    aget v12, p1, v12

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "si":I
    .restart local v10    # "si":I
    aget-char v12, p0, v9

    aget v12, p1, v12

    or-int v6, v11, v12

    .line 89
    .local v6, "n":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    shr-int/lit8 v11, v6, 0x10

    int-to-byte v11, v11

    aput-byte v11, v4, v3

    .line 90
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "di":I
    .restart local v3    # "di":I
    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v4, v2

    .line 91
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    int-to-byte v11, v6

    aput-byte v11, v4, v3

    move v3, v2

    .line 92
    .end local v2    # "di":I
    .restart local v3    # "di":I
    goto :goto_2

    .line 80
    .end local v0    # "blocks":I
    .end local v1    # "bytes":I
    .end local v3    # "di":I
    .end local v4    # "dst":[B
    .end local v6    # "n":I
    .end local v7    # "padCount":I
    .end local v10    # "si":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 94
    .restart local v0    # "blocks":I
    .restart local v1    # "bytes":I
    .restart local v3    # "di":I
    .restart local v4    # "dst":[B
    .restart local v7    # "padCount":I
    .restart local v10    # "si":I
    :cond_3
    if-ge v3, v1, :cond_4

    .line 95
    const/4 v6, 0x0

    .line 96
    .restart local v6    # "n":I
    sub-int v11, v5, v10

    packed-switch v11, :pswitch_data_0

    .line 102
    :goto_3
    const/16 v8, 0x10

    .local v8, "r":I
    :goto_4
    if-ge v3, v1, :cond_4

    .line 103
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    shr-int v11, v6, v8

    int-to-byte v11, v11

    aput-byte v11, v4, v3

    .line 102
    add-int/lit8 v8, v8, -0x8

    move v3, v2

    .end local v2    # "di":I
    .restart local v3    # "di":I
    goto :goto_4

    .line 97
    .end local v8    # "r":I
    :pswitch_0
    add-int/lit8 v11, v10, 0x3

    aget-char v11, p0, v11

    aget v11, p1, v11

    or-int/2addr v6, v11

    .line 98
    :pswitch_1
    add-int/lit8 v11, v10, 0x2

    aget-char v11, p0, v11

    aget v11, p1, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v6, v11

    .line 99
    :pswitch_2
    add-int/lit8 v11, v10, 0x1

    aget-char v11, p0, v11

    aget v11, p1, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v6, v11

    .line 100
    :pswitch_3
    aget-char v11, p0, v10

    aget v11, p1, v11

    shl-int/lit8 v11, v11, 0x12

    or-int/2addr v6, v11

    goto :goto_3

    .end local v6    # "n":I
    :cond_4
    move v2, v3

    .end local v3    # "di":I
    .restart local v2    # "di":I
    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 50
    sget-object v0, Lcom/lambdaworks/codec/Base64;->encode:[C

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/lambdaworks/codec/Base64;->encode([B[CC)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[C
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "padded"    # Z

    .prologue
    .line 62
    sget-object v1, Lcom/lambdaworks/codec/Base64;->encode:[C

    if-eqz p1, :cond_0

    const/16 v0, 0x3d

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/lambdaworks/codec/Base64;->encode([B[CC)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encode([B[CC)[C
    .locals 13
    .param p0, "src"    # [B
    .param p1, "table"    # [C
    .param p2, "pad"    # C

    .prologue
    const/4 v12, 0x2

    .line 121
    array-length v5, p0

    .line 123
    .local v5, "len":I
    if-nez v5, :cond_0

    const/4 v10, 0x0

    new-array v4, v10, [C

    .line 155
    :goto_0
    return-object v4

    .line 125
    :cond_0
    div-int/lit8 v10, v5, 0x3

    mul-int/lit8 v0, v10, 0x3

    .line 126
    .local v0, "blocks":I
    add-int/lit8 v10, v5, -0x1

    div-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v1, v10, 0x2

    .line 127
    .local v1, "chars":I
    sub-int v9, v5, v0

    .line 128
    .local v9, "tail":I
    if-nez p2, :cond_1

    if-lez v9, :cond_1

    rsub-int/lit8 v10, v9, 0x3

    sub-int/2addr v1, v10

    .line 130
    :cond_1
    new-array v4, v1, [C

    .line 131
    .local v4, "dst":[C
    const/4 v7, 0x0

    .local v7, "si":I
    const/4 v2, 0x0

    .local v2, "di":I
    move v3, v2

    .end local v2    # "di":I
    .local v3, "di":I
    move v8, v7

    .line 133
    .end local v7    # "si":I
    .local v8, "si":I
    :goto_1
    if-ge v8, v0, :cond_2

    .line 134
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "si":I
    .restart local v7    # "si":I
    aget-byte v10, p0, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "si":I
    .restart local v8    # "si":I
    aget-byte v11, p0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "si":I
    .restart local v7    # "si":I
    aget-byte v11, p0, v8

    and-int/lit16 v11, v11, 0xff

    or-int v6, v10, v11

    .line 135
    .local v6, "n":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v3

    .line 136
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "di":I
    .restart local v3    # "di":I
    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v2

    .line 137
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v3

    .line 138
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "di":I
    .restart local v3    # "di":I
    and-int/lit8 v10, v6, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v2

    move v8, v7

    .line 139
    .end local v7    # "si":I
    .restart local v8    # "si":I
    goto :goto_1

    .line 141
    .end local v6    # "n":I
    :cond_2
    if-lez v9, :cond_7

    .line 142
    aget-byte v10, p0, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v6, v10, 0xa

    .line 143
    .restart local v6    # "n":I
    if-ne v9, v12, :cond_6

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "si":I
    .restart local v7    # "si":I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v6, v10

    .line 145
    :goto_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v3

    .line 146
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "di":I
    .restart local v3    # "di":I
    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v2

    .line 147
    if-ne v9, v12, :cond_3

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    and-int/lit8 v10, v6, 0x3f

    aget-char v10, p1, v10

    aput-char v10, v4, v3

    move v3, v2

    .line 149
    .end local v2    # "di":I
    .restart local v3    # "di":I
    :cond_3
    if-eqz p2, :cond_5

    .line 150
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "di":I
    .restart local v2    # "di":I
    aput-char p2, v4, v3

    .line 151
    :goto_3
    aput-char p2, v4, v2

    goto/16 :goto_0

    .end local v2    # "di":I
    .restart local v3    # "di":I
    :cond_4
    move v2, v3

    .end local v3    # "di":I
    .restart local v2    # "di":I
    goto :goto_3

    .end local v2    # "di":I
    .restart local v3    # "di":I
    :cond_5
    move v2, v3

    .end local v3    # "di":I
    .restart local v2    # "di":I
    goto/16 :goto_0

    .end local v2    # "di":I
    .end local v7    # "si":I
    .restart local v3    # "di":I
    .restart local v8    # "si":I
    :cond_6
    move v7, v8

    .end local v8    # "si":I
    .restart local v7    # "si":I
    goto :goto_2

    .end local v6    # "n":I
    .end local v7    # "si":I
    .restart local v8    # "si":I
    :cond_7
    move v2, v3

    .end local v3    # "di":I
    .restart local v2    # "di":I
    move v7, v8

    .end local v8    # "si":I
    .restart local v7    # "si":I
    goto/16 :goto_0
.end method
