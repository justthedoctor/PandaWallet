.class public Lcom/lambdaworks/crypto/SCryptLessAlloc;
.super Ljava/lang/Object;
.source "SCryptLessAlloc.java"


# static fields
.field private static native_library_loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lambdaworks/crypto/SCryptLessAlloc;->native_library_loaded:Z

    .line 27
    new-instance v0, Lcom/lambdaworks/jni/JarLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/JarLibraryLoader;-><init>()V

    .line 28
    .local v0, "loader":Lcom/lambdaworks/jni/JarLibraryLoader;
    const-string v1, "scrypt"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lambdaworks/jni/JarLibraryLoader;->load(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lambdaworks/crypto/SCryptLessAlloc;->native_library_loaded:Z

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
    .line 154
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blockmix_salsa8([BIII[B[I[I)V
    .locals 4
    .param p0, "BY"    # [B
    .param p1, "Bi"    # I
    .param p2, "Yi"    # I
    .param p3, "r"    # I
    .param p4, "X"    # [B
    .param p5, "B32"    # [I
    .param p6, "salsaX"    # [I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x40

    .line 136
    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v1, p1

    invoke-static {p0, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p3, 0x2

    if-ge v0, v1, :cond_0

    .line 139
    mul-int/lit8 v1, v0, 0x40

    invoke-static {p0, v1, p4, v2, v3}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->blockxor([BI[BII)V

    .line 140
    invoke-static {p4, p5, p6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->salsa20_8([B[I[I)V

    .line 141
    mul-int/lit8 v1, v0, 0x40

    add-int/2addr v1, p2

    invoke-static {p4, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 145
    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v1, p2

    mul-int/lit8 v2, v0, 0x40

    add-int/2addr v2, p1

    invoke-static {p0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_2

    .line 149
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v1, p2

    add-int v2, v0, p3

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p1

    invoke-static {p0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
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
    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 200
    add-int v1, p3, v0

    aget-byte v2, p2, v1

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public static integerify([BII)I
    .locals 2
    .param p0, "B"    # [B
    .param p1, "Bi"    # I
    .param p2, "r"    # I

    .prologue
    .line 207
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr p1, v1

    .line 209
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x0

    .line 210
    .local v0, "n":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 211
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 212
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 214
    return v0
.end method

.method public static salsa20_8([B[I[I)V
    .locals 10
    .param p0, "B"    # [B
    .param p1, "B32"    # [I
    .param p2, "x"    # [I

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x0

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x7

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 161
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    aput v1, p1, v0

    .line 162
    aget v1, p1, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aput v1, p1, v0

    .line 163
    aget v1, p1, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aput v1, p1, v0

    .line 164
    aget v1, p1, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/16 v1, 0x10

    invoke-static {p1, v8, p2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    const/16 v0, 0x8

    :goto_1
    if-lez v0, :cond_1

    .line 170
    const/4 v1, 0x4

    aget v2, p2, v1

    aget v3, p2, v8

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    aget v2, p2, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v8

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 171
    const/16 v1, 0xc

    aget v2, p2, v1

    const/16 v3, 0x8

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v8

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    .line 172
    aget v1, p2, v6

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    aget v1, p2, v7

    aget v2, p2, v6

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    .line 173
    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p2, v7

    aget v4, p2, v6

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x5

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    aget v4, p2, v7

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 174
    const/16 v1, 0xe

    aget v2, p2, v1

    const/16 v3, 0xa

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x2

    aget v2, p2, v1

    const/16 v3, 0xe

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 175
    const/4 v1, 0x6

    aget v2, p2, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xa

    aget v2, p2, v1

    const/4 v3, 0x6

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 176
    const/4 v1, 0x3

    aget v2, p2, v1

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v5

    const/4 v2, 0x3

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    .line 177
    const/16 v1, 0xb

    aget v2, p2, v1

    aget v3, p2, v5

    const/4 v4, 0x3

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xf

    aget v2, p2, v1

    const/16 v3, 0xb

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 178
    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p2, v8

    const/4 v4, 0x3

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x2

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    aget v4, p2, v8

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 179
    const/4 v1, 0x3

    aget v2, p2, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v8

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    .line 180
    const/4 v1, 0x6

    aget v2, p2, v1

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v5

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    .line 181
    const/4 v1, 0x4

    aget v2, p2, v1

    aget v3, p2, v5

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/4 v1, 0x5

    aget v2, p2, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 182
    const/16 v1, 0xb

    aget v2, p2, v1

    const/16 v3, 0xa

    aget v3, p2, v3

    aget v4, p2, v6

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0x8

    aget v2, p2, v1

    const/16 v3, 0xb

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 183
    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    const/16 v1, 0xa

    aget v2, p2, v1

    aget v3, p2, v6

    const/16 v4, 0x8

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 184
    const/16 v1, 0xc

    aget v2, p2, v1

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    aget v1, p2, v7

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    .line 185
    const/16 v1, 0xe

    aget v2, p2, v1

    aget v3, p2, v7

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    const/16 v1, 0xf

    aget v2, p2, v1

    const/16 v3, 0xe

    aget v3, p2, v3

    aget v4, p2, v7

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->R(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 169
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_1

    .line 188
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    aget v1, p2, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    .line 191
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 192
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 193
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 194
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    :cond_3
    return-void
.end method

.method public static scrypt([B[BIIII)[B
    .locals 7
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
    sget-boolean v0, Lcom/lambdaworks/crypto/SCryptLessAlloc;->native_library_loaded:Z

    if-eqz v0, :cond_0

    int-to-long v2, p2

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->scryptN([B[BJIII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->scryptJ([B[BIIII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static scryptJ([B[BIIII)[B
    .locals 13
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
    .line 81
    if-eqz p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be > 0 and a power of 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1
    const v2, 0xffffff

    div-int v2, v2, p3

    if-le p2, v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter N is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_2
    const v2, 0xffffff

    div-int v2, v2, p4

    move/from16 v0, p3

    if-le v0, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter r is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_3
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v12

    .line 87
    .local v12, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v12, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 89
    move/from16 v0, p5

    new-array v10, v0, [B

    .line 91
    .local v10, "DK":[B
    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x80

    mul-int v2, v2, p4

    new-array v1, v2, [B

    .line 92
    .local v1, "B":[B
    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x100

    new-array v6, v2, [B

    .line 93
    .local v6, "XY":[B
    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x80

    mul-int/2addr v2, p2

    new-array v5, v2, [B

    .line 95
    .local v5, "V":[B
    const/16 v2, 0x40

    new-array v7, v2, [B

    .line 96
    .local v7, "X":[B
    const/16 v2, 0x10

    new-array v8, v2, [I

    .line 97
    .local v8, "B32":[I
    const/16 v2, 0x10

    new-array v9, v2, [I

    .line 101
    .local v9, "salsaX":[I
    const/4 v2, 0x1

    move/from16 v0, p4

    mul-int/lit16 v3, v0, 0x80

    mul-int v3, v3, p3

    invoke-static {v12, p1, v2, v1, v3}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    .line 103
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v11, v0, :cond_4

    .line 104
    mul-int/lit16 v2, v11, 0x80

    mul-int v2, v2, p3

    move/from16 v3, p3

    move v4, p2

    invoke-static/range {v1 .. v9}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->smix([BIII[B[B[B[I[I)V

    .line 103
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 107
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-static {v12, v1, v2, v10, v0}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    .line 109
    return-object v10
.end method

.method public static native scryptN([B[BJIII)[B
.end method

.method public static smix([BIII[B[B[B[I[I)V
    .locals 9
    .param p0, "B"    # [B
    .param p1, "Bi"    # I
    .param p2, "r"    # I
    .param p3, "N"    # I
    .param p4, "V"    # [B
    .param p5, "XY"    # [B
    .param p6, "X"    # [B
    .param p7, "B32"    # [I
    .param p8, "salsaX"    # [I

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "Xi":I
    mul-int/lit16 v2, p2, 0x80

    .line 117
    .local v2, "Yi":I
    mul-int/lit16 v0, p2, 0x80

    invoke-static {p0, p1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_0

    .line 120
    mul-int/lit16 v0, p2, 0x80

    mul-int/2addr v0, v7

    mul-int/lit16 v3, p2, 0x80

    invoke-static {p5, v1, p4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p5

    move v3, p2

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 121
    invoke-static/range {v0 .. v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->blockmix_salsa8([BIII[B[I[I)V

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, p3, :cond_1

    .line 125
    invoke-static {p5, v1, p2}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->integerify([BII)I

    move-result v0

    add-int/lit8 v3, p3, -0x1

    and-int v8, v0, v3

    .line 126
    .local v8, "j":I
    mul-int/lit16 v0, p2, 0x80

    mul-int/2addr v0, v8

    mul-int/lit16 v3, p2, 0x80

    invoke-static {p4, v0, p5, v1, v3}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->blockxor([BI[BII)V

    move-object v0, p5

    move v3, p2

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 127
    invoke-static/range {v0 .. v6}, Lcom/lambdaworks/crypto/SCryptLessAlloc;->blockmix_salsa8([BIII[B[I[I)V

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 130
    .end local v8    # "j":I
    :cond_1
    mul-int/lit16 v0, p2, 0x80

    invoke-static {p5, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-void
.end method
