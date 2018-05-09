.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 26
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "rounds"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 35
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 36
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 37
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 38
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 59
    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'rounds\' must be a positive, even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    .line 65
    return-void
.end method

.method private limitExceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 365
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    .line 367
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 369
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 373
    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 381
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 382
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    .line 384
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 386
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 390
    :cond_0
    return v0
.end method

.method private resetLimitCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 359
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 360
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 361
    return-void
.end method

.method protected static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 353
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
    .locals 21
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I

    .prologue
    .line 261
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 264
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 265
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 267
    :cond_1
    rem-int/lit8 v19, p0, 0x2

    if-eqz v19, :cond_2

    .line 268
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Number of rounds must be even"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 271
    :cond_2
    const/16 v19, 0x0

    aget v3, p1, v19

    .line 272
    .local v3, "x00":I
    const/16 v19, 0x1

    aget v4, p1, v19

    .line 273
    .local v4, "x01":I
    const/16 v19, 0x2

    aget v5, p1, v19

    .line 274
    .local v5, "x02":I
    const/16 v19, 0x3

    aget v6, p1, v19

    .line 275
    .local v6, "x03":I
    const/16 v19, 0x4

    aget v7, p1, v19

    .line 276
    .local v7, "x04":I
    const/16 v19, 0x5

    aget v8, p1, v19

    .line 277
    .local v8, "x05":I
    const/16 v19, 0x6

    aget v9, p1, v19

    .line 278
    .local v9, "x06":I
    const/16 v19, 0x7

    aget v10, p1, v19

    .line 279
    .local v10, "x07":I
    const/16 v19, 0x8

    aget v11, p1, v19

    .line 280
    .local v11, "x08":I
    const/16 v19, 0x9

    aget v12, p1, v19

    .line 281
    .local v12, "x09":I
    const/16 v19, 0xa

    aget v13, p1, v19

    .line 282
    .local v13, "x10":I
    const/16 v19, 0xb

    aget v14, p1, v19

    .line 283
    .local v14, "x11":I
    const/16 v19, 0xc

    aget v15, p1, v19

    .line 284
    .local v15, "x12":I
    const/16 v19, 0xd

    aget v16, p1, v19

    .line 285
    .local v16, "x13":I
    const/16 v19, 0xe

    aget v17, p1, v19

    .line 286
    .local v17, "x14":I
    const/16 v19, 0xf

    aget v18, p1, v19

    .line 288
    .local v18, "x15":I
    move/from16 v2, p0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 290
    add-int v19, v3, v15

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 291
    add-int v19, v7, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 292
    add-int v19, v11, v7

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 293
    add-int v19, v15, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 294
    add-int v19, v8, v4

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 295
    add-int v19, v12, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 296
    add-int v19, v16, v12

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 297
    add-int v19, v4, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 298
    add-int v19, v13, v9

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 299
    add-int v19, v17, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 300
    add-int v19, v5, v17

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 301
    add-int v19, v9, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 302
    add-int v19, v18, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 303
    add-int v19, v6, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 304
    add-int v19, v10, v6

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 305
    add-int v19, v14, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 307
    add-int v19, v3, v6

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 308
    add-int v19, v4, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 309
    add-int v19, v5, v4

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 310
    add-int v19, v6, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 311
    add-int v19, v8, v7

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 312
    add-int v19, v9, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 313
    add-int v19, v10, v9

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 314
    add-int v19, v7, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 315
    add-int v19, v13, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 316
    add-int v19, v14, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 317
    add-int v19, v11, v14

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 318
    add-int v19, v12, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 319
    add-int v19, v18, v17

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 320
    add-int v19, v15, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 321
    add-int v19, v16, v15

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 322
    add-int v19, v17, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 288
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 325
    :cond_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p1, v20

    add-int v20, v20, v3

    aput v20, p2, v19

    .line 326
    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, p1, v20

    add-int v20, v20, v4

    aput v20, p2, v19

    .line 327
    const/16 v19, 0x2

    const/16 v20, 0x2

    aget v20, p1, v20

    add-int v20, v20, v5

    aput v20, p2, v19

    .line 328
    const/16 v19, 0x3

    const/16 v20, 0x3

    aget v20, p1, v20

    add-int v20, v20, v6

    aput v20, p2, v19

    .line 329
    const/16 v19, 0x4

    const/16 v20, 0x4

    aget v20, p1, v20

    add-int v20, v20, v7

    aput v20, p2, v19

    .line 330
    const/16 v19, 0x5

    const/16 v20, 0x5

    aget v20, p1, v20

    add-int v20, v20, v8

    aput v20, p2, v19

    .line 331
    const/16 v19, 0x6

    const/16 v20, 0x6

    aget v20, p1, v20

    add-int v20, v20, v9

    aput v20, p2, v19

    .line 332
    const/16 v19, 0x7

    const/16 v20, 0x7

    aget v20, p1, v20

    add-int v20, v20, v10

    aput v20, p2, v19

    .line 333
    const/16 v19, 0x8

    const/16 v20, 0x8

    aget v20, p1, v20

    add-int v20, v20, v11

    aput v20, p2, v19

    .line 334
    const/16 v19, 0x9

    const/16 v20, 0x9

    aget v20, p1, v20

    add-int v20, v20, v12

    aput v20, p2, v19

    .line 335
    const/16 v19, 0xa

    const/16 v20, 0xa

    aget v20, p1, v20

    add-int v20, v20, v13

    aput v20, p2, v19

    .line 336
    const/16 v19, 0xb

    const/16 v20, 0xb

    aget v20, p1, v20

    add-int v20, v20, v14

    aput v20, p2, v19

    .line 337
    const/16 v19, 0xc

    const/16 v20, 0xc

    aget v20, p1, v20

    add-int v20, v20, v15

    aput v20, p2, v19

    .line 338
    const/16 v19, 0xd

    const/16 v20, 0xd

    aget v20, p1, v20

    add-int v20, v20, v16

    aput v20, p2, v19

    .line 339
    const/16 v19, 0xe

    const/16 v20, 0xe

    aget v20, p1, v20

    add-int v20, v20, v17

    aput v20, p2, v19

    .line 340
    const/16 v19, 0xf

    const/16 v20, 0xf

    aget v20, p1, v20

    add-int v20, v20, v18

    aput v20, p2, v19

    .line 341
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 151
    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 249
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    .line 250
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    const-string v0, "Salsa20"

    .line 119
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 85
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must include an IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 90
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 92
    .local v1, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 93
    .local v0, "iv":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires exactly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must include a key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 106
    .local v2, "key":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 107
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 108
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 109
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 160
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 167
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 172
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_2
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 182
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 184
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 185
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 188
    :cond_4
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 189
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 196
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 197
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 198
    return-void
.end method

.method protected resetCounter()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    .line 203
    return-void
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 140
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 142
    return v0
.end method

.method protected setKey([B[B)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x8

    const/16 v7, 0xc

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 207
    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    array-length v2, p1

    if-eq v2, v9, :cond_0

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires 128 bit or 256 bit key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_0
    const/4 v1, 0x0

    .line 215
    .local v1, "offset":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x1

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 216
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    invoke-static {p1, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 217
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    invoke-static {p1, v8}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 218
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {p1, v7}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    .line 220
    array-length v2, p1

    if-ne v2, v9, :cond_1

    .line 222
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 223
    .local v0, "constants":[B
    const/16 v1, 0x10

    .line 230
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    invoke-static {p1, v1}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 231
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v3, v1, 0x4

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v7

    .line 232
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xd

    add-int/lit8 v4, v1, 0x8

    invoke-static {p1, v4}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 233
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xe

    add-int/lit8 v4, v1, 0xc

    invoke-static {p1, v4}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 235
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v5

    .line 236
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 237
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 238
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 241
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x6

    invoke-static {p2, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 242
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x7

    invoke-static {p2, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 243
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 244
    return-void

    .line 227
    .end local v0    # "constants":[B
    :cond_1
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    .restart local v0    # "constants":[B
    goto :goto_0
.end method
