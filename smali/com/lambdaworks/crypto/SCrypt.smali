.class public Lcom/lambdaworks/crypto/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# static fields
.field private static final native_library_loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/lambdaworks/jni/LibraryLoaders;->loader()Lcom/lambdaworks/jni/LibraryLoader;

    move-result-object v0

    .line 28
    .local v0, "loader":Lcom/lambdaworks/jni/LibraryLoader;
    const-string v1, "scrypt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lambdaworks/jni/LibraryLoader;->load(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lambdaworks/crypto/SCrypt;->native_library_loaded:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static R(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 150
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blockmix_salsa8([BIII)V
    .locals 5
    .param p0, "BY"    # [B
    .param p1, "Bi"    # I
    .param p2, "Yi"    # I
    .param p3, "r"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x40

    .line 129
    new-array v0, v4, [B

    .line 132
    .local v0, "X":[B
    mul-int/lit8 v2, p3, 0x2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p1

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p3, 0x2

    if-ge v1, v2, :cond_0

    .line 135
    mul-int/lit8 v2, v1, 0x40

    invoke-static {p0, v2, v0, v3, v4}, Lcom/lambdaworks/crypto/SCrypt;->blockxor([BI[BII)V

    .line 136
    invoke-static {v0}, Lcom/lambdaworks/crypto/SCrypt;->salsa20_8([B)V

    .line 137
    mul-int/lit8 v2, v1, 0x40

    add-int/2addr v2, p2

    invoke-static {v0, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_1

    .line 141
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p2

    mul-int/lit8 v3, v1, 0x40

    add-int/2addr v3, p1

    invoke-static {p0, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_2

    .line 145
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p2

    add-int v3, v1, p3

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v3, p1

    invoke-static {p0, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_2
    return-void
.end method

.method public static blockxor([BI[BII)V
    .locals 4
    .param p0, "S"    # [B
    .param p1, "Si"    # I
    .param p2, "D"    # [B
    .param p3, "Di"    # I
    .param p4, "len"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 198
    add-int v1, p3, v0

    aget-byte v2, p2, v1

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public static integerify([BII)I
    .locals 2
    .param p0, "B"    # [B
    .param p1, "Bi"    # I
    .param p2, "r"    # I

    .prologue
    .line 205
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr p1, v1

    .line 207
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x0

    .line 208
    .local v0, "n":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 209
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 210
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 212
    return v0
.end method

.method public static salsa20_8([B)V
    .locals 12
    .param p0, "B"    # [B

    .prologue
    const/16 v11, 0x12

    const/4 v10, 0x0

    const/16 v9, 0xd

    const/16 v8, 0x9

    const/4 v7, 0x7

    .line 154
    const/16 v3, 0x10

    new-array v0, v3, [I

    .line 155
    .local v0, "B32":[I
    const/16 v3, 0x10

    new-array v2, v3, [I

    .line 158
    .local v2, "x":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 159
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    aput v3, v0, v1

    .line 160
    aget v3, v0, v1

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 161
    aget v3, v0, v1

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 162
    aget v3, v0, v1

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const/16 v3, 0x10

    invoke-static {v0, v10, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    const/16 v1, 0x8

    :goto_1
    if-lez v1, :cond_1

    .line 168
    const/4 v3, 0x4

    aget v4, v2, v3

    aget v5, v2, v10

    const/16 v6, 0xc

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    aget v4, v2, v3

    const/4 v5, 0x4

    aget v5, v2, v5

    aget v6, v2, v10

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 169
    const/16 v3, 0xc

    aget v4, v2, v3

    const/16 v5, 0x8

    aget v5, v2, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v10

    const/16 v4, 0xc

    aget v4, v2, v4

    const/16 v5, 0x8

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 170
    aget v3, v2, v8

    const/4 v4, 0x5

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    aget v3, v2, v9

    aget v4, v2, v8

    const/4 v5, 0x5

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    .line 171
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v5, v2, v9

    aget v6, v2, v8

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v6, v2, v9

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 172
    const/16 v3, 0xe

    aget v4, v2, v3

    const/16 v5, 0xa

    aget v5, v2, v5

    const/4 v6, 0x6

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    aget v4, v2, v3

    const/16 v5, 0xe

    aget v5, v2, v5

    const/16 v6, 0xa

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 173
    const/4 v3, 0x6

    aget v4, v2, v3

    const/4 v5, 0x2

    aget v5, v2, v5

    const/16 v6, 0xe

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xa

    aget v4, v2, v3

    const/4 v5, 0x6

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 174
    const/4 v3, 0x3

    aget v4, v2, v3

    const/16 v5, 0xf

    aget v5, v2, v5

    const/16 v6, 0xb

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v7

    const/4 v4, 0x3

    aget v4, v2, v4

    const/16 v5, 0xf

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 175
    const/16 v3, 0xb

    aget v4, v2, v3

    aget v5, v2, v7

    const/4 v6, 0x3

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xf

    aget v4, v2, v3

    const/16 v5, 0xb

    aget v5, v2, v5

    aget v6, v2, v7

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 176
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v5, v2, v10

    const/4 v6, 0x3

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v6, v2, v10

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 177
    const/4 v3, 0x3

    aget v4, v2, v3

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v10

    const/4 v4, 0x3

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    .line 178
    const/4 v3, 0x6

    aget v4, v2, v3

    const/4 v5, 0x5

    aget v5, v2, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v7

    const/4 v4, 0x6

    aget v4, v2, v4

    const/4 v5, 0x5

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 179
    const/4 v3, 0x4

    aget v4, v2, v3

    aget v5, v2, v7

    const/4 v6, 0x6

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    aget v4, v2, v3

    const/4 v5, 0x4

    aget v5, v2, v5

    aget v6, v2, v7

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 180
    const/16 v3, 0xb

    aget v4, v2, v3

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v6, v2, v8

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    aget v4, v2, v3

    const/16 v5, 0xb

    aget v5, v2, v5

    const/16 v6, 0xa

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 181
    aget v3, v2, v8

    const/16 v4, 0x8

    aget v4, v2, v4

    const/16 v5, 0xb

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    const/16 v3, 0xa

    aget v4, v2, v3

    aget v5, v2, v8

    const/16 v6, 0x8

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 182
    const/16 v3, 0xc

    aget v4, v2, v3

    const/16 v5, 0xf

    aget v5, v2, v5

    const/16 v6, 0xe

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v7}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    aget v3, v2, v9

    const/16 v4, 0xc

    aget v4, v2, v4

    const/16 v5, 0xf

    aget v5, v2, v5

    add-int/2addr v4, v5

    invoke-static {v4, v8}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    .line 183
    const/16 v3, 0xe

    aget v4, v2, v3

    aget v5, v2, v9

    const/16 v6, 0xc

    aget v6, v2, v6

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xf

    aget v4, v2, v3

    const/16 v5, 0xe

    aget v5, v2, v5

    aget v6, v2, v9

    add-int/2addr v5, v6

    invoke-static {v5, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 167
    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_1

    .line 186
    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x10

    if-ge v1, v3, :cond_2

    aget v3, v2, v1

    aget v4, v0, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    :cond_2
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    .line 189
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 190
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 191
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 192
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v4, v0, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 194
    :cond_3
    return-void
.end method

.method public static scrypt([B[BIIII)[B
    .locals 1
    .param p0, "passwd"    # [B
    .param p1, "salt"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 48
    sget-boolean v0, Lcom/lambdaworks/crypto/SCrypt;->native_library_loaded:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/lambdaworks/crypto/SCrypt;->scryptN([B[BIIII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/lambdaworks/crypto/SCrypt;->scryptJ([B[BIIII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static scryptJ([B[BIIII)[B
    .locals 10
    .param p0, "passwd"    # [B
    .param p1, "salt"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const v2, 0xffffff

    const/4 v9, 0x1

    .line 81
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "N must be a power of 2 greater than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    div-int v1, v2, p3

    if-le p2, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter N is too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2
    div-int v1, v2, p4

    if-le p3, v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter r is too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_3
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 87
    .local v8, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 89
    new-array v6, p5, [B

    .line 91
    .local v6, "DK":[B
    mul-int/lit16 v1, p3, 0x80

    mul-int/2addr v1, p4

    new-array v0, v1, [B

    .line 92
    .local v0, "B":[B
    mul-int/lit16 v1, p3, 0x100

    new-array v5, v1, [B

    .line 93
    .local v5, "XY":[B
    mul-int/lit16 v1, p3, 0x80

    mul-int/2addr v1, p2

    new-array v4, v1, [B

    .line 96
    .local v4, "V":[B
    mul-int/lit16 v1, p4, 0x80

    mul-int/2addr v1, p3

    invoke-static {v8, p1, v9, v0, v1}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    .line 98
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_4

    .line 99
    mul-int/lit16 v1, v7, 0x80

    mul-int/2addr v1, p3

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/lambdaworks/crypto/SCrypt;->smix([BIII[B[B)V

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    :cond_4
    invoke-static {v8, v0, v9, v6, p5}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    .line 104
    return-object v6
.end method

.method public static native scryptN([B[BIIII)[B
.end method

.method public static smix([BIII[B[B)V
    .locals 6
    .param p0, "B"    # [B
    .param p1, "Bi"    # I
    .param p2, "r"    # I
    .param p3, "N"    # I
    .param p4, "V"    # [B
    .param p5, "XY"    # [B

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "Xi":I
    mul-int/lit16 v1, p2, 0x80

    .line 112
    .local v1, "Yi":I
    mul-int/lit16 v4, p2, 0x80

    invoke-static {p0, p1, p5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 115
    mul-int/lit16 v4, p2, 0x80

    mul-int/2addr v4, v2

    mul-int/lit16 v5, p2, 0x80

    invoke-static {p5, v0, p4, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-static {p5, v0, v1, p2}, Lcom/lambdaworks/crypto/SCrypt;->blockmix_salsa8([BIII)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    .line 120
    invoke-static {p5, v0, p2}, Lcom/lambdaworks/crypto/SCrypt;->integerify([BII)I

    move-result v4

    add-int/lit8 v5, p3, -0x1

    and-int v3, v4, v5

    .line 121
    .local v3, "j":I
    mul-int/lit16 v4, p2, 0x80

    mul-int/2addr v4, v3

    mul-int/lit16 v5, p2, 0x80

    invoke-static {p4, v4, p5, v0, v5}, Lcom/lambdaworks/crypto/SCrypt;->blockxor([BI[BII)V

    .line 122
    invoke-static {p5, v0, v1, p2}, Lcom/lambdaworks/crypto/SCrypt;->blockmix_salsa8([BIII)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "j":I
    :cond_1
    mul-int/lit16 v4, p2, 0x80

    invoke-static {p5, v0, p0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-void
.end method
