.class public Lcom/subgraph/orchid/crypto/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# static fields
.field static basev:[B

.field static minusp:[I


# instance fields
.field final CRYPTO_BYTES:I

.field final CRYPTO_SCALARBYTES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/subgraph/orchid/crypto/Curve25519;->basev:[B

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/subgraph/orchid/crypto/Curve25519;->minusp:[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x13
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/subgraph/orchid/crypto/Curve25519;->CRYPTO_BYTES:I

    .line 36
    iput v0, p0, Lcom/subgraph/orchid/crypto/Curve25519;->CRYPTO_SCALARBYTES:I

    return-void
.end method

.method static add([II[II[II)V
    .locals 4
    .param p0, "outv"    # [I
    .param p1, "outvoffset"    # I
    .param p2, "a"    # [I
    .param p3, "aoffset"    # I
    .param p4, "b"    # [I
    .param p5, "boffset"    # I

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "u":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    .line 53
    add-int v2, p3, v0

    aget v2, p2, v2

    add-int v3, p5, v0

    aget v3, p4, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 54
    add-int v2, p1, v0

    and-int/lit16 v3, v1, 0xff

    aput v3, p0, v2

    .line 55
    ushr-int/lit8 v1, v1, 0x8

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    add-int/lit8 v2, p3, 0x1f

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1f

    aget v3, p4, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 59
    add-int/lit8 v2, p1, 0x1f

    aput v1, p0, v2

    .line 60
    return-void
.end method

.method public static crypto_scalarmult([B[B[B)I
    .locals 8
    .param p0, "q"    # [B
    .param p1, "n"    # [B
    .param p2, "p"    # [B

    .prologue
    const/16 v1, 0x40

    const/16 v4, 0x1f

    const/4 v3, 0x0

    const/16 v5, 0x20

    .line 445
    const/16 v2, 0x60

    new-array v0, v2, [I

    .line 446
    .local v0, "work":[I
    new-array v6, v5, [B

    .line 448
    .local v6, "e":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 449
    aget-byte v2, p1, v7

    aput-byte v2, v6, v7

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 451
    :cond_0
    aget-byte v2, v6, v3

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, v6, v3

    .line 452
    aget-byte v2, v6, v4

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    .line 453
    aget-byte v2, v6, v4

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    .line 455
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 456
    aget-byte v2, p2, v7

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v7

    .line 455
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-static {v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->mainloop([I[B)V

    .line 460
    invoke-static {v0, v5, v0, v5}, Lcom/subgraph/orchid/crypto/Curve25519;->recip([II[II)V

    move-object v2, v0

    move-object v4, v0

    .line 461
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 462
    invoke-static {v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->freeze([II)V

    .line 464
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_2

    .line 465
    add-int/lit8 v1, v7, 0x40

    aget v1, v0, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v7

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 467
    :cond_2
    return v3
.end method

.method public static crypto_scalarmult_base([B[B)I
    .locals 2
    .param p0, "q"    # [B
    .param p1, "n"    # [B

    .prologue
    .line 43
    sget-object v0, Lcom/subgraph/orchid/crypto/Curve25519;->basev:[B

    .line 44
    .local v0, "basevp":[B
    invoke-static {p0, p1, v0}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult([B[B[B)I

    move-result v1

    return v1
.end method

.method static freeze([II)V
    .locals 10
    .param p0, "a"    # [I
    .param p1, "aoffset"    # I

    .prologue
    const/16 v9, 0x20

    const/4 v1, 0x0

    .line 105
    new-array v6, v9, [I

    .line 107
    .local v6, "aorig":[I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 108
    add-int v0, p1, v7

    aget v0, p0, v0

    aput v0, v6, v7

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 110
    :cond_0
    sget-object v4, Lcom/subgraph/orchid/crypto/Curve25519;->minusp:[I

    .local v4, "minuspp":[I
    move-object v0, p0

    move-object v2, p0

    move v3, v1

    move v5, v1

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    .line 114
    add-int/lit8 v0, p1, 0x1f

    aget v0, p0, v0

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1

    neg-int v8, v0

    .line 116
    .local v8, "negative":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_1

    .line 117
    add-int v0, p1, v7

    aget v1, p0, v0

    aget v2, v6, v7

    add-int v3, p1, v7

    aget v3, p0, v3

    xor-int/2addr v2, v3

    and-int/2addr v2, v8

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method static mainloop([I[B)V
    .locals 44
    .param p0, "work"    # [I
    .param p1, "e"    # [B

    .prologue
    .line 209
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v37, v0

    .line 210
    .local v37, "xzm1":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v36, v0

    .line 211
    .local v36, "xzm":[I
    const/16 v6, 0x40

    new-array v7, v6, [I

    .line 212
    .local v7, "xzmb":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v38, v0

    .line 213
    .local v38, "xzm1b":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v42, v0

    .line 214
    .local v42, "xznb":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v40, v0

    .line 215
    .local v40, "xzn1b":[I
    const/16 v6, 0x40

    new-array v5, v6, [I

    .line 216
    .local v5, "a0":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v17, v0

    .line 217
    .local v17, "a1":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v20, v0

    .line 218
    .local v20, "b0":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 219
    .local v22, "b1":[I
    const/16 v6, 0x40

    new-array v0, v6, [I

    move-object/from16 v24, v0

    .line 220
    .local v24, "c1":[I
    const/16 v6, 0x20

    new-array v0, v6, [I

    move-object/from16 v28, v0

    .line 221
    .local v28, "r":[I
    const/16 v6, 0x20

    new-array v0, v6, [I

    move-object/from16 v30, v0

    .line 222
    .local v30, "s":[I
    const/16 v6, 0x20

    new-array v0, v6, [I

    move-object/from16 v32, v0

    .line 223
    .local v32, "t":[I
    const/16 v6, 0x20

    new-array v0, v6, [I

    move-object/from16 v33, v0

    .line 225
    .local v33, "u":[I
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_0
    const/16 v6, 0x20

    move/from16 v0, v26

    if-ge v0, v6, :cond_0

    .line 226
    aget v6, p0, v26

    aput v6, v37, v26

    .line 225
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 228
    :cond_0
    const/16 v6, 0x20

    const/4 v8, 0x1

    aput v8, v37, v6

    .line 230
    const/16 v26, 0x21

    :goto_1
    const/16 v6, 0x40

    move/from16 v0, v26

    if-ge v0, v6, :cond_1

    .line 231
    const/4 v6, 0x0

    aput v6, v37, v26

    .line 230
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 233
    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v8, v36, v6

    .line 235
    const/16 v26, 0x1

    :goto_2
    const/16 v6, 0x40

    move/from16 v0, v26

    if-ge v0, v6, :cond_2

    .line 236
    const/4 v6, 0x0

    aput v6, v36, v26

    .line 235
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 238
    :cond_2
    move-object v9, v7

    .local v9, "xzmbp":[I
    move-object/from16 v16, v5

    .local v16, "a0p":[I
    move-object/from16 v39, v38

    .line 239
    .local v39, "xzm1bp":[I
    move-object/from16 v18, v17

    .local v18, "a1p":[I
    move-object/from16 v21, v20

    .local v21, "b0p":[I
    move-object/from16 v23, v22

    .local v23, "b1p":[I
    move-object/from16 v25, v24

    .line 240
    .local v25, "c1p":[I
    move-object/from16 v43, v42

    .local v43, "xznbp":[I
    move-object/from16 v34, v33

    .local v34, "up":[I
    move-object/from16 v41, v40

    .line 241
    .local v41, "xzn1bp":[I
    move-object/from16 v35, p0

    .local v35, "workp":[I
    move-object/from16 v31, v30

    .local v31, "sp":[I
    move-object/from16 v29, v28

    .line 243
    .local v29, "rp":[I
    const/16 v27, 0xfe

    .local v27, "pos":I
    :goto_3
    if-ltz v27, :cond_3

    .line 245
    div-int/lit8 v6, v27, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v8, v27, 0x7

    ushr-int v19, v6, v8

    .line 246
    .local v19, "b":I
    and-int/lit8 v19, v19, 0x1

    .line 247
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v3, v19

    invoke-static {v7, v0, v1, v2, v3}, Lcom/subgraph/orchid/crypto/Curve25519;->select([I[I[I[II)V

    .line 248
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x20

    invoke-static/range {v5 .. v10}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    .line 249
    const/16 v11, 0x20

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v16

    move-object v12, v7

    move-object v14, v9

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    .line 250
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v17

    move-object/from16 v12, v38

    move-object/from16 v14, v39

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    .line 251
    const/16 v11, 0x20

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v18

    move-object/from16 v12, v38

    move-object/from16 v14, v39

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    .line 252
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1, v8}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 253
    const/16 v6, 0x20

    const/16 v8, 0x20

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1, v8}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 254
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v23

    move-object/from16 v12, v18

    move-object/from16 v14, v16

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 255
    const/16 v11, 0x20

    const/16 v13, 0x20

    const/4 v15, 0x0

    move-object/from16 v10, v23

    move-object/from16 v12, v18

    move-object/from16 v14, v16

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 256
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v24

    move-object/from16 v12, v22

    move-object/from16 v14, v23

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    .line 257
    const/16 v11, 0x20

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v25

    move-object/from16 v12, v22

    move-object/from16 v14, v23

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    .line 258
    const/4 v6, 0x0

    const/16 v8, 0x20

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v6, v1, v8}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 259
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v31

    move-object/from16 v12, v20

    move-object/from16 v14, v21

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    .line 260
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->mult121665([I[I)V

    .line 261
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v33

    move-object/from16 v12, v32

    move-object/from16 v14, v21

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    .line 262
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x20

    move-object/from16 v10, v43

    move-object/from16 v12, v21

    move-object/from16 v14, v21

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 263
    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v43

    move-object/from16 v12, v31

    move-object/from16 v14, v34

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 264
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-static {v0, v6, v1, v8}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 265
    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v41

    move-object/from16 v12, v29

    move-object/from16 v14, v35

    invoke-static/range {v10 .. v15}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 266
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    move-object/from16 v3, v40

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/crypto/Curve25519;->select([I[I[I[II)V

    .line 243
    add-int/lit8 v27, v27, -0x1

    goto/16 :goto_3

    .line 269
    .end local v19    # "b":I
    :cond_3
    const/16 v26, 0x0

    :goto_4
    const/16 v6, 0x40

    move/from16 v0, v26

    if-ge v0, v6, :cond_4

    .line 270
    aget v6, v36, v26

    aput v6, p0, v26

    .line 269
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 271
    :cond_4
    return-void
.end method

.method static mult([II[II[II)V
    .locals 6
    .param p0, "outv"    # [I
    .param p1, "outvoffset"    # I
    .param p2, "a"    # [I
    .param p3, "aoffset"    # I
    .param p4, "b"    # [I
    .param p5, "boffset"    # I

    .prologue
    const/16 v5, 0x20

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "u":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-gt v1, v0, :cond_0

    .line 129
    add-int v3, p3, v1

    aget v3, p2, v3

    add-int v4, p5, v0

    sub-int/2addr v4, v1

    aget v4, p4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_2
    if-ge v1, v5, :cond_1

    .line 132
    add-int v3, p3, v1

    aget v3, p2, v3

    mul-int/lit8 v3, v3, 0x26

    add-int v4, p5, v0

    add-int/lit8 v4, v4, 0x20

    sub-int/2addr v4, v1

    aget v4, p4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_1
    add-int v3, p1, v0

    aput v2, p0, v3

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "j":I
    .end local v2    # "u":I
    :cond_2
    invoke-static {p0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->squeeze([II)V

    .line 138
    return-void
.end method

.method static mult121665([I[I)V
    .locals 5
    .param p0, "outv"    # [I
    .param p1, "a"    # [I

    .prologue
    const v4, 0x1db41

    const/16 v3, 0x1f

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "u":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 147
    aget v2, p1, v0

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 148
    and-int/lit16 v2, v1, 0xff

    aput v2, p0, v0

    .line 149
    ushr-int/lit8 v1, v1, 0x8

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    aget v2, p1, v3

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 153
    and-int/lit8 v2, v1, 0x7f

    aput v2, p0, v3

    .line 154
    ushr-int/lit8 v2, v1, 0x7

    mul-int/lit8 v1, v2, 0x13

    .line 156
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 158
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 159
    and-int/lit16 v2, v1, 0xff

    aput v2, p0, v0

    .line 160
    ushr-int/lit8 v1, v1, 0x8

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 164
    aput v1, p0, v0

    .line 165
    return-void
.end method

.method static recip([II[II)V
    .locals 42
    .param p0, "outv"    # [I
    .param p1, "outvoffset"    # I
    .param p2, "z"    # [I
    .param p3, "zoffset"    # I

    .prologue
    .line 275
    const/16 v4, 0x20

    new-array v10, v4, [I

    .line 276
    .local v10, "z2":[I
    const/16 v4, 0x20

    new-array v15, v4, [I

    .line 277
    .local v15, "z9":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 278
    .local v38, "z11":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 279
    .local v20, "z2_5_0":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 280
    .local v25, "z2_10_0":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v30, v0

    .line 281
    .local v30, "z2_20_0":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 282
    .local v40, "z2_50_0":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v39, v0

    .line 283
    .local v39, "z2_100_0":[I
    const/16 v4, 0x20

    new-array v13, v4, [I

    .line 284
    .local v13, "t0":[I
    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 287
    .local v23, "t1":[I
    move-object/from16 v41, v10

    .line 288
    .local v41, "z2p":[I
    const/4 v4, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 291
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v10, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 294
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 297
    move-object v3, v15

    .local v3, "z9p":[I
    move-object v5, v13

    .line 298
    .local v5, "t0p":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 301
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v38

    move-object v8, v15

    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 304
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 307
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v20

    invoke-static/range {v11 .. v16}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 310
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 313
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 316
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 319
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 322
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 325
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v25

    move-object/from16 v18, v13

    invoke-static/range {v16 .. v21}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 328
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 331
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 334
    const/16 v37, 0x2

    .local v37, "i":I
    :goto_0
    const/16 v4, 0xa

    move/from16 v0, v37

    if-ge v0, v4, :cond_0

    .line 336
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 337
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 334
    add-int/lit8 v37, v37, 0x2

    goto :goto_0

    .line 341
    :cond_0
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v30

    invoke-static/range {v21 .. v26}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 344
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 347
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 350
    const/16 v37, 0x2

    :goto_1
    const/16 v4, 0x14

    move/from16 v0, v37

    if-ge v0, v4, :cond_1

    .line 352
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 353
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 350
    add-int/lit8 v37, v37, 0x2

    goto :goto_1

    .line 357
    :cond_1
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v13

    move-object/from16 v28, v23

    invoke-static/range {v26 .. v31}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 360
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 363
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 366
    const/16 v37, 0x2

    :goto_2
    const/16 v4, 0xa

    move/from16 v0, v37

    if-ge v0, v4, :cond_2

    .line 368
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 369
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 366
    add-int/lit8 v37, v37, 0x2

    goto :goto_2

    .line 373
    :cond_2
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v40

    move-object/from16 v33, v13

    move-object/from16 v35, v25

    invoke-static/range {v31 .. v36}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 376
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v40

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 379
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 382
    const/16 v37, 0x2

    :goto_3
    const/16 v4, 0x32

    move/from16 v0, v37

    if-ge v0, v4, :cond_3

    .line 384
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 385
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 382
    add-int/lit8 v37, v37, 0x2

    goto :goto_3

    .line 389
    :cond_3
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v39

    move-object/from16 v33, v23

    move-object/from16 v35, v40

    invoke-static/range {v31 .. v36}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 392
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-static {v0, v4, v1, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 395
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 398
    const/16 v37, 0x2

    :goto_4
    const/16 v4, 0x64

    move/from16 v0, v37

    if-ge v0, v4, :cond_4

    .line 400
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 401
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 398
    add-int/lit8 v37, v37, 0x2

    goto :goto_4

    .line 405
    :cond_4
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v23

    move-object/from16 v33, v13

    move-object/from16 v35, v39

    invoke-static/range {v31 .. v36}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 408
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 411
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 414
    const/16 v37, 0x2

    :goto_5
    const/16 v4, 0x32

    move/from16 v0, v37

    if-ge v0, v4, :cond_5

    .line 416
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 417
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 414
    add-int/lit8 v37, v37, 0x2

    goto :goto_5

    .line 421
    :cond_5
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v13

    move-object/from16 v33, v23

    move-object/from16 v35, v40

    invoke-static/range {v31 .. v36}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 424
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 427
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 430
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 433
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v13, v4, v0, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 436
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v13, v6}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 439
    move-object/from16 v33, v23

    .local v33, "t1p":[I
    move-object/from16 v35, v38

    .line 440
    .local v35, "z11p":[I
    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, p0

    move/from16 v32, p1

    invoke-static/range {v31 .. v36}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 441
    return-void
.end method

.method static select([I[I[I[II)V
    .locals 5
    .param p0, "p"    # [I
    .param p1, "q"    # [I
    .param p2, "r"    # [I
    .param p3, "s"    # [I
    .param p4, "b"    # I

    .prologue
    .line 197
    add-int/lit8 v0, p4, -0x1

    .line 199
    .local v0, "bminus1":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0x40

    if-ge v1, v3, :cond_0

    .line 201
    aget v3, p2, v1

    aget v4, p3, v1

    xor-int/2addr v3, v4

    and-int v2, v0, v3

    .line 202
    .local v2, "t":I
    aget v3, p3, v1

    xor-int/2addr v3, v2

    aput v3, p0, v1

    .line 203
    aget v3, p2, v1

    xor-int/2addr v3, v2

    aput v3, p1, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "t":I
    :cond_0
    return-void
.end method

.method static square([II[II)V
    .locals 5
    .param p0, "outv"    # [I
    .param p1, "outvoffset"    # I
    .param p2, "a"    # [I
    .param p3, "aoffset"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 173
    const/4 v2, 0x0

    .line 175
    .local v2, "u":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sub-int v3, v0, v1

    if-ge v1, v3, :cond_0

    .line 176
    add-int v3, p3, v1

    aget v3, p2, v3

    add-int v4, p3, v0

    sub-int/2addr v4, v1

    aget v4, p2, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_2
    add-int/lit8 v3, v0, 0x20

    sub-int/2addr v3, v1

    if-ge v1, v3, :cond_1

    .line 179
    add-int v3, p3, v1

    aget v3, p2, v3

    mul-int/lit8 v3, v3, 0x26

    add-int v4, p3, v0

    add-int/lit8 v4, v4, 0x20

    sub-int/2addr v4, v1

    aget v4, p2, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    :cond_1
    mul-int/lit8 v2, v2, 0x2

    .line 183
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    .line 185
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    aget v3, p2, v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p3

    aget v4, p2, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 186
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x10

    aget v3, p2, v3

    mul-int/lit8 v3, v3, 0x26

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x10

    aget v4, p2, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 189
    :cond_2
    add-int v3, p1, v0

    aput v2, p0, v3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "j":I
    .end local v2    # "u":I
    :cond_3
    invoke-static {p0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->squeeze([II)V

    .line 193
    return-void
.end method

.method static squeeze([II)V
    .locals 5
    .param p0, "a"    # [I
    .param p1, "aoffset"    # I

    .prologue
    const/16 v4, 0x1f

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "u":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 83
    add-int v2, p1, v0

    aget v2, p0, v2

    add-int/2addr v1, v2

    .line 84
    add-int v2, p1, v0

    and-int/lit16 v3, v1, 0xff

    aput v3, p0, v2

    .line 85
    ushr-int/lit8 v1, v1, 0x8

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    add-int/lit8 v2, p1, 0x1f

    aget v2, p0, v2

    add-int/2addr v1, v2

    .line 89
    add-int/lit8 v2, p1, 0x1f

    and-int/lit8 v3, v1, 0x7f

    aput v3, p0, v2

    .line 90
    ushr-int/lit8 v2, v1, 0x7

    mul-int/lit8 v1, v2, 0x13

    .line 92
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 94
    add-int v2, p1, v0

    aget v2, p0, v2

    add-int/2addr v1, v2

    .line 95
    add-int v2, p1, v0

    and-int/lit16 v3, v1, 0xff

    aput v3, p0, v2

    .line 96
    ushr-int/lit8 v1, v1, 0x8

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v2, p1, 0x1f

    aget v2, p0, v2

    add-int/2addr v1, v2

    .line 100
    add-int/lit8 v2, p1, 0x1f

    aput v1, p0, v2

    .line 101
    return-void
.end method

.method static sub([II[II[II)V
    .locals 4
    .param p0, "outv"    # [I
    .param p1, "outvoffset"    # I
    .param p2, "a"    # [I
    .param p3, "aoffset"    # I
    .param p4, "b"    # [I
    .param p5, "boffset"    # I

    .prologue
    .line 64
    const/16 v1, 0xda

    .line 66
    .local v1, "u":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    .line 68
    add-int v2, p3, v0

    aget v2, p2, v2

    const v3, 0xff00

    add-int/2addr v2, v3

    add-int v3, p5, v0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 69
    add-int v2, p1, v0

    and-int/lit16 v3, v1, 0xff

    aput v3, p0, v2

    .line 70
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    add-int/lit8 v2, p3, 0x1f

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1f

    aget v3, p4, v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 74
    add-int/lit8 v2, p1, 0x1f

    aput v1, p0, v2

    .line 75
    return-void
.end method
