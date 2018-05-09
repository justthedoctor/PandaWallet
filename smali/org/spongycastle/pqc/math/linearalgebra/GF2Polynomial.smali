.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"


# static fields
.field private static final bitMask:[I

.field private static final parity:[Z

.field private static rand:Ljava/util/Random;

.field private static final reverseRightMask:[I

.field private static final squaringTable:[S


# instance fields
.field private blocks:I

.field private len:I

.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x21

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    .line 32
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    .line 61
    new-array v0, v2, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    return-void

    .line 32
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    .line 96
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data

    .line 105
    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    move v0, p1

    .line 122
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 127
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 128
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 129
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    move v0, p1

    .line 167
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 172
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 173
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 174
    const-string v1, "ZERO"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    .line 201
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v1, "ONE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    goto :goto_0

    .line 182
    :cond_2
    const-string v1, "RANDOM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    goto :goto_0

    .line 186
    :cond_3
    const-string v1, "X"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignX()V

    goto :goto_0

    .line 190
    :cond_4
    const-string v1, "ALL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignAll()V

    goto :goto_0

    .line 196
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: GF2Polynomial was called using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as value!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 12
    .param p1, "length"    # I
    .param p2, "bi"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    move v3, p1

    .line 283
    .local v3, "l":I
    if-ge v3, v9, :cond_0

    .line 285
    const/4 v3, 0x1

    .line 287
    :cond_0
    add-int/lit8 v7, v3, -0x1

    shr-int/lit8 v7, v7, 0x5

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 288
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 289
    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 291
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 292
    .local v6, "val":[B
    aget-byte v7, v6, v8

    if-nez v7, :cond_1

    .line 294
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    new-array v0, v7, [B

    .line 295
    .local v0, "dummy":[B
    array-length v7, v0

    invoke-static {v6, v9, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object v6, v0

    .line 298
    .end local v0    # "dummy":[B
    :cond_1
    array-length v7, v6

    and-int/lit8 v5, v7, 0x3

    .line 299
    .local v5, "ov":I
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x2

    add-int/lit8 v2, v7, 0x1

    .line 300
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 302
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v8, v2, -0x1

    aget v9, v7, v8

    aget-byte v10, v6, v1

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v5, -0x1

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x3

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    const/4 v4, 0x0

    .line 305
    .local v4, "m":I
    const/4 v1, 0x0

    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x4

    shr-int/lit8 v7, v7, 0x2

    if-gt v1, v7, :cond_3

    .line 307
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x2

    sub-int v4, v7, v8

    .line 308
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v8, v6, v4

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v1

    .line 309
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v1

    add-int/lit8 v9, v4, -0x1

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 310
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v1

    add-int/lit8 v9, v4, -0x2

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 311
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v8, v7, v1

    add-int/lit8 v9, v4, -0x3

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_3
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v7, v7, 0x1f

    if-eqz v7, :cond_4

    .line 315
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v8, v8, -0x1

    aget v9, v7, v8

    sget-object v10, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v11, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v11, v11, 0x1f

    aget v10, v10, v11

    and-int/2addr v9, v10

    aput v9, v7, v8

    .line 317
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 318
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "rand"    # Ljava/util/Random;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    move v0, p1

    .line 140
    .local v0, "l":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_0
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 145
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 146
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 147
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    .line 148
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 11
    .param p1, "length"    # I
    .param p2, "os"    # [B

    .prologue
    const/high16 v10, 0xff0000

    const v9, 0xff00

    const/4 v8, 0x1

    const/high16 v7, -0x1000000

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    move v2, p1

    .line 236
    .local v2, "l":I
    if-ge v2, v8, :cond_0

    .line 238
    const/4 v2, 0x1

    .line 240
    :cond_0
    add-int/lit8 v4, v2, -0x1

    shr-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 241
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 242
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 244
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 245
    .local v1, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_1

    .line 247
    array-length v4, p2

    shl-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 248
    .local v3, "m":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    .line 249
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 250
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x2

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 251
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x3

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "m":I
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .line 254
    array-length v4, p2

    shl-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 255
    .restart local v3    # "m":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    .line 256
    if-lez v3, :cond_2

    .line 258
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 260
    :cond_2
    if-le v3, v8, :cond_3

    .line 262
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x2

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 264
    :cond_3
    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    .line 266
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v0

    add-int/lit8 v6, v3, -0x3

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v0

    .line 268
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 270
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "bs"    # [I

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    move v1, p1

    .line 213
    .local v1, "leng":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 217
    :cond_0
    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 218
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 219
    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 220
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    .local v0, "l":I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {p2, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 328
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 329
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 330
    return-void
.end method

.method private doShiftBlocksLeft(I)V
    .locals 6
    .param p1, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 1975
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 1978
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1980
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v0, p1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 1978
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1982
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 1984
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v5, v2, v0

    .line 1982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1989
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v2, [I

    .line 1990
    .local v1, "result":[I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v3, p1

    invoke-static {v2, v5, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1991
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1992
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1994
    .end local v1    # "result":[I
    :cond_2
    return-void
.end method

.method private karaMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 12
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    const/4 v11, 0x0

    .line 748
    new-instance v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 749
    .local v8, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v10, 0x20

    if-gt v9, v10, :cond_0

    .line 751
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v9, v9, v11

    iget-object v10, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v10, v10, v11

    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v9

    iput-object v9, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 794
    :goto_0
    return-object v8

    .line 754
    :cond_0
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v10, 0x40

    if-gt v9, v10, :cond_1

    .line 756
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v10, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v9

    iput-object v9, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    .line 759
    :cond_1
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v10, 0x80

    if-gt v9, v10, :cond_2

    .line 761
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v10, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v9

    iput-object v9, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    .line 764
    :cond_2
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v10, 0x100

    if-gt v9, v10, :cond_3

    .line 766
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v10, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v9

    iput-object v9, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    .line 769
    :cond_3
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v10, 0x200

    if-gt v9, v10, :cond_4

    .line 771
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v10, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult512([I[I)[I

    move-result-object v9

    iput-object v9, v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    .line 775
    :cond_4
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v7

    .line 776
    .local v7, "n":I
    sget-object v9, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v7, v9, v7

    .line 778
    add-int/lit8 v9, v7, -0x1

    shr-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    .line 779
    .local v0, "a0":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v9, v7, -0x1

    shr-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    .line 780
    .local v1, "a1":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v9, v7, -0x1

    shr-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p1, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 781
    .local v2, "b0":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    add-int/lit8 v9, v7, -0x1

    shr-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p1, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 783
    .local v3, "b1":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-direct {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 784
    .local v4, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-direct {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    .line 785
    .local v6, "e":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 786
    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 787
    invoke-direct {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    .line 789
    .local v5, "d":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    shl-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v4, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 790
    invoke-virtual {v8, v4, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 791
    invoke-virtual {v8, v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 792
    invoke-virtual {v8, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 793
    invoke-virtual {v8, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto/16 :goto_0
.end method

.method private lower(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5
    .param p1, "k"    # I

    .prologue
    const/4 v4, 0x0

    .line 1171
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1172
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    return-object v0
.end method

.method private static mult128([I[I)[I
    .locals 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    .line 1003
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 1004
    .local v7, "result":[I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1005
    .local v0, "a0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    array-length v11, p0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 1007
    .local v1, "a1":[I
    array-length v8, p0

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 1009
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    array-length v11, p0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1011
    :cond_0
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 1012
    .local v2, "b0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    array-length v11, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 1014
    .local v3, "b1":[I
    array-length v8, p1

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 1016
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    array-length v11, p1

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    :cond_1
    const/4 v8, 0x1

    aget v8, v1, v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aget v8, v3, v8

    if-nez v8, :cond_4

    .line 1020
    const/4 v8, 0x0

    aget v8, v1, v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    aget v8, v3, v8

    if-eqz v8, :cond_3

    .line 1022
    :cond_2
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v4

    .line 1023
    .local v4, "c":[I
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1024
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1025
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1026
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1039
    .end local v4    # "c":[I
    :cond_3
    :goto_0
    const/4 v8, 0x0

    aget v9, v1, v8

    const/4 v10, 0x0

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 1040
    const/4 v8, 0x1

    aget v9, v1, v8

    const/4 v10, 0x1

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 1041
    const/4 v8, 0x0

    aget v9, v3, v8

    const/4 v10, 0x0

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 1042
    const/4 v8, 0x1

    aget v9, v3, v8

    const/4 v10, 0x1

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 1043
    const/4 v8, 0x1

    aget v8, v1, v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    aget v8, v3, v8

    if-nez v8, :cond_5

    .line 1045
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    .line 1046
    .local v5, "d":[I
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1047
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1057
    :goto_1
    const/4 v8, 0x1

    aget v8, v0, v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    aget v8, v2, v8

    if-nez v8, :cond_6

    .line 1059
    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    .line 1060
    .local v6, "e":[I
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1061
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1062
    const/4 v8, 0x1

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1063
    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1075
    :goto_2
    return-object v7

    .line 1031
    .end local v5    # "d":[I
    .end local v6    # "e":[I
    :cond_4
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v4

    .line 1032
    .restart local v4    # "c":[I
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1033
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1034
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1035
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x2

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1036
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1037
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    goto/16 :goto_0

    .line 1051
    .end local v4    # "c":[I
    :cond_5
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v5

    .line 1052
    .restart local v5    # "d":[I
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1053
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1054
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1055
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    goto/16 :goto_1

    .line 1067
    :cond_6
    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v6

    .line 1068
    .restart local v6    # "e":[I
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1069
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1070
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1071
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x2

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1072
    const/4 v8, 0x1

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1073
    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    goto/16 :goto_2
.end method

.method private static mult256([I[I)[I
    .locals 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    .line 908
    const/16 v8, 0x10

    new-array v7, v8, [I

    .line 909
    .local v7, "result":[I
    const/4 v8, 0x4

    new-array v0, v8, [I

    .line 910
    .local v0, "a0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    array-length v11, p0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    const/4 v8, 0x4

    new-array v1, v8, [I

    .line 912
    .local v1, "a1":[I
    array-length v8, p0

    const/4 v9, 0x4

    if-le v8, v9, :cond_0

    .line 914
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x4

    array-length v11, p0

    add-int/lit8 v11, v11, -0x4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    :cond_0
    const/4 v8, 0x4

    new-array v2, v8, [I

    .line 917
    .local v2, "b0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    array-length v11, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    const/4 v8, 0x4

    new-array v3, v8, [I

    .line 919
    .local v3, "b1":[I
    array-length v8, p1

    const/4 v9, 0x4

    if-le v8, v9, :cond_1

    .line 921
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x4

    array-length v11, p1

    add-int/lit8 v11, v11, -0x4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    :cond_1
    const/4 v8, 0x3

    aget v8, v1, v8

    if-nez v8, :cond_5

    const/4 v8, 0x2

    aget v8, v1, v8

    if-nez v8, :cond_5

    const/4 v8, 0x3

    aget v8, v3, v8

    if-nez v8, :cond_5

    const/4 v8, 0x2

    aget v8, v3, v8

    if-nez v8, :cond_5

    .line 925
    const/4 v8, 0x1

    aget v8, v1, v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aget v8, v3, v8

    if-nez v8, :cond_4

    .line 927
    const/4 v8, 0x0

    aget v8, v1, v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    aget v8, v3, v8

    if-eqz v8, :cond_3

    .line 929
    :cond_2
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v4

    .line 930
    .local v4, "c":[I
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 931
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 932
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 933
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 965
    .end local v4    # "c":[I
    :cond_3
    :goto_0
    const/4 v8, 0x0

    aget v9, v1, v8

    const/4 v10, 0x0

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 966
    const/4 v8, 0x1

    aget v9, v1, v8

    const/4 v10, 0x1

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 967
    const/4 v8, 0x2

    aget v9, v1, v8

    const/4 v10, 0x2

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 968
    const/4 v8, 0x3

    aget v9, v1, v8

    const/4 v10, 0x3

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 969
    const/4 v8, 0x0

    aget v9, v3, v8

    const/4 v10, 0x0

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 970
    const/4 v8, 0x1

    aget v9, v3, v8

    const/4 v10, 0x1

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 971
    const/4 v8, 0x2

    aget v9, v3, v8

    const/4 v10, 0x2

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 972
    const/4 v8, 0x3

    aget v9, v3, v8

    const/4 v10, 0x3

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 973
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v5

    .line 974
    .local v5, "d":[I
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 975
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 976
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 977
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 978
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 979
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 980
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 981
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 982
    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v6

    .line 983
    .local v6, "e":[I
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 984
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 985
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 986
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 987
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v6, v10

    const/4 v11, 0x7

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 988
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v6, v10

    const/4 v11, 0x6

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 989
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x5

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 990
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x4

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 991
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 992
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 993
    const/4 v8, 0x1

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 994
    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 995
    return-object v7

    .line 938
    .end local v5    # "d":[I
    .end local v6    # "e":[I
    :cond_4
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v4

    .line 939
    .restart local v4    # "c":[I
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 940
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 941
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 942
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 943
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 944
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 945
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 946
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    goto/16 :goto_0

    .line 951
    .end local v4    # "c":[I
    :cond_5
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v4

    .line 952
    .restart local v4    # "c":[I
    const/16 v8, 0xf

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 953
    const/16 v8, 0xe

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 954
    const/16 v8, 0xd

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 955
    const/16 v8, 0xc

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 956
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    const/4 v11, 0x7

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 957
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x6

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 958
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x5

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 959
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x4

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 960
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 961
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 962
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 963
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    goto/16 :goto_0
.end method

.method private static mult32(II)[I
    .locals 12
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    const-wide v10, 0xffffffffL

    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 1118
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1119
    .local v5, "result":[I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-object v5

    .line 1123
    :cond_1
    int-to-long v0, p1

    .line 1124
    .local v0, "b2":J
    and-long/2addr v0, v10

    .line 1126
    const-wide/16 v2, 0x0

    .line 1127
    .local v2, "h":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-gt v4, v9, :cond_3

    .line 1129
    sget-object v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    .line 1131
    xor-long/2addr v2, v0

    .line 1133
    :cond_2
    shl-long/2addr v0, v8

    .line 1127
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1135
    :cond_3
    ushr-long v6, v2, v9

    long-to-int v6, v6

    aput v6, v5, v8

    .line 1136
    const/4 v6, 0x0

    and-long v7, v2, v10

    long-to-int v7, v7

    aput v7, v5, v6

    goto :goto_0
.end method

.method private static mult512([I[I)[I
    .locals 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    .line 802
    const/16 v8, 0x20

    new-array v7, v8, [I

    .line 803
    .local v7, "result":[I
    const/16 v8, 0x8

    new-array v0, v8, [I

    .line 804
    .local v0, "a0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    array-length v11, p0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    const/16 v8, 0x8

    new-array v1, v8, [I

    .line 806
    .local v1, "a1":[I
    array-length v8, p0

    const/16 v9, 0x8

    if-le v8, v9, :cond_0

    .line 808
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v10, 0x8

    array-length v11, p0

    add-int/lit8 v11, v11, -0x8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    :cond_0
    const/16 v8, 0x8

    new-array v2, v8, [I

    .line 811
    .local v2, "b0":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    array-length v11, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    const/16 v8, 0x8

    new-array v3, v8, [I

    .line 813
    .local v3, "b1":[I
    array-length v8, p1

    const/16 v9, 0x8

    if-le v8, v9, :cond_1

    .line 815
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v10, 0x8

    array-length v11, p1

    add-int/lit8 v11, v11, -0x8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p1, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :cond_1
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v4

    .line 818
    .local v4, "c":[I
    const/16 v8, 0x1f

    aget v9, v7, v8

    const/16 v10, 0xf

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 819
    const/16 v8, 0x1e

    aget v9, v7, v8

    const/16 v10, 0xe

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 820
    const/16 v8, 0x1d

    aget v9, v7, v8

    const/16 v10, 0xd

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 821
    const/16 v8, 0x1c

    aget v9, v7, v8

    const/16 v10, 0xc

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 822
    const/16 v8, 0x1b

    aget v9, v7, v8

    const/16 v10, 0xb

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 823
    const/16 v8, 0x1a

    aget v9, v7, v8

    const/16 v10, 0xa

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 824
    const/16 v8, 0x19

    aget v9, v7, v8

    const/16 v10, 0x9

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 825
    const/16 v8, 0x18

    aget v9, v7, v8

    const/16 v10, 0x8

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 826
    const/16 v8, 0x17

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v4, v10

    const/16 v11, 0xf

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 827
    const/16 v8, 0x16

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v4, v10

    const/16 v11, 0xe

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 828
    const/16 v8, 0x15

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v4, v10

    const/16 v11, 0xd

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 829
    const/16 v8, 0x14

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v4, v10

    const/16 v11, 0xc

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 830
    const/16 v8, 0x13

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    const/16 v11, 0xb

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 831
    const/16 v8, 0x12

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    const/16 v11, 0xa

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 832
    const/16 v8, 0x11

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    const/16 v11, 0x9

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 833
    const/16 v8, 0x10

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    const/16 v11, 0x8

    aget v11, v4, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 834
    const/16 v8, 0xf

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 835
    const/16 v8, 0xe

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 836
    const/16 v8, 0xd

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 837
    const/16 v8, 0xc

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 838
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 839
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 840
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 841
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v4, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 842
    const/4 v8, 0x0

    aget v9, v1, v8

    const/4 v10, 0x0

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 843
    const/4 v8, 0x1

    aget v9, v1, v8

    const/4 v10, 0x1

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 844
    const/4 v8, 0x2

    aget v9, v1, v8

    const/4 v10, 0x2

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 845
    const/4 v8, 0x3

    aget v9, v1, v8

    const/4 v10, 0x3

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 846
    const/4 v8, 0x4

    aget v9, v1, v8

    const/4 v10, 0x4

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 847
    const/4 v8, 0x5

    aget v9, v1, v8

    const/4 v10, 0x5

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 848
    const/4 v8, 0x6

    aget v9, v1, v8

    const/4 v10, 0x6

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 849
    const/4 v8, 0x7

    aget v9, v1, v8

    const/4 v10, 0x7

    aget v10, v0, v10

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 850
    const/4 v8, 0x0

    aget v9, v3, v8

    const/4 v10, 0x0

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 851
    const/4 v8, 0x1

    aget v9, v3, v8

    const/4 v10, 0x1

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 852
    const/4 v8, 0x2

    aget v9, v3, v8

    const/4 v10, 0x2

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 853
    const/4 v8, 0x3

    aget v9, v3, v8

    const/4 v10, 0x3

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 854
    const/4 v8, 0x4

    aget v9, v3, v8

    const/4 v10, 0x4

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 855
    const/4 v8, 0x5

    aget v9, v3, v8

    const/4 v10, 0x5

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 856
    const/4 v8, 0x6

    aget v9, v3, v8

    const/4 v10, 0x6

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 857
    const/4 v8, 0x7

    aget v9, v3, v8

    const/4 v10, 0x7

    aget v10, v2, v10

    xor-int/2addr v9, v10

    aput v9, v3, v8

    .line 858
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v5

    .line 859
    .local v5, "d":[I
    const/16 v8, 0x17

    aget v9, v7, v8

    const/16 v10, 0xf

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 860
    const/16 v8, 0x16

    aget v9, v7, v8

    const/16 v10, 0xe

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 861
    const/16 v8, 0x15

    aget v9, v7, v8

    const/16 v10, 0xd

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 862
    const/16 v8, 0x14

    aget v9, v7, v8

    const/16 v10, 0xc

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 863
    const/16 v8, 0x13

    aget v9, v7, v8

    const/16 v10, 0xb

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 864
    const/16 v8, 0x12

    aget v9, v7, v8

    const/16 v10, 0xa

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 865
    const/16 v8, 0x11

    aget v9, v7, v8

    const/16 v10, 0x9

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 866
    const/16 v8, 0x10

    aget v9, v7, v8

    const/16 v10, 0x8

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 867
    const/16 v8, 0xf

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 868
    const/16 v8, 0xe

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 869
    const/16 v8, 0xd

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 870
    const/16 v8, 0xc

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 871
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 872
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 873
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 874
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v5, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 875
    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v6

    .line 876
    .local v6, "e":[I
    const/16 v8, 0x17

    aget v9, v7, v8

    const/16 v10, 0xf

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 877
    const/16 v8, 0x16

    aget v9, v7, v8

    const/16 v10, 0xe

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 878
    const/16 v8, 0x15

    aget v9, v7, v8

    const/16 v10, 0xd

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 879
    const/16 v8, 0x14

    aget v9, v7, v8

    const/16 v10, 0xc

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 880
    const/16 v8, 0x13

    aget v9, v7, v8

    const/16 v10, 0xb

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 881
    const/16 v8, 0x12

    aget v9, v7, v8

    const/16 v10, 0xa

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 882
    const/16 v8, 0x11

    aget v9, v7, v8

    const/16 v10, 0x9

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 883
    const/16 v8, 0x10

    aget v9, v7, v8

    const/16 v10, 0x8

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 884
    const/16 v8, 0xf

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v6, v10

    const/16 v11, 0xf

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 885
    const/16 v8, 0xe

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v6, v10

    const/16 v11, 0xe

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 886
    const/16 v8, 0xd

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v6, v10

    const/16 v11, 0xd

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 887
    const/16 v8, 0xc

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v6, v10

    const/16 v11, 0xc

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 888
    const/16 v8, 0xb

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v6, v10

    const/16 v11, 0xb

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 889
    const/16 v8, 0xa

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v6, v10

    const/16 v11, 0xa

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 890
    const/16 v8, 0x9

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    const/16 v11, 0x9

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 891
    const/16 v8, 0x8

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    const/16 v11, 0x8

    aget v11, v6, v11

    xor-int/2addr v10, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 892
    const/4 v8, 0x7

    aget v9, v7, v8

    const/4 v10, 0x7

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 893
    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v10, 0x6

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 894
    const/4 v8, 0x5

    aget v9, v7, v8

    const/4 v10, 0x5

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 895
    const/4 v8, 0x4

    aget v9, v7, v8

    const/4 v10, 0x4

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 896
    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v10, 0x3

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 897
    const/4 v8, 0x2

    aget v9, v7, v8

    const/4 v10, 0x2

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 898
    const/4 v8, 0x1

    aget v9, v7, v8

    const/4 v10, 0x1

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 899
    const/4 v8, 0x0

    aget v9, v7, v8

    const/4 v10, 0x0

    aget v10, v6, v10

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 900
    return-object v7
.end method

.method private static mult64([I[I)[I
    .locals 14
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1083
    const/4 v8, 0x4

    new-array v7, v8, [I

    .line 1084
    .local v7, "result":[I
    aget v0, p0, v12

    .line 1085
    .local v0, "a0":I
    const/4 v1, 0x0

    .line 1086
    .local v1, "a1":I
    array-length v8, p0

    if-le v8, v11, :cond_0

    .line 1088
    aget v1, p0, v11

    .line 1090
    :cond_0
    aget v2, p1, v12

    .line 1091
    .local v2, "b0":I
    const/4 v3, 0x0

    .line 1092
    .local v3, "b1":I
    array-length v8, p1

    if-le v8, v11, :cond_1

    .line 1094
    aget v3, p1, v11

    .line 1096
    :cond_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 1098
    :cond_2
    invoke-static {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v4

    .line 1099
    .local v4, "c":[I
    const/4 v8, 0x3

    aget v9, v7, v8

    aget v10, v4, v11

    xor-int/2addr v9, v10

    aput v9, v7, v8

    .line 1100
    aget v8, v7, v13

    aget v9, v4, v12

    aget v10, v4, v11

    xor-int/2addr v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v13

    .line 1101
    aget v8, v7, v11

    aget v9, v4, v12

    xor-int/2addr v8, v9

    aput v8, v7, v11

    .line 1103
    .end local v4    # "c":[I
    :cond_3
    xor-int v8, v0, v1

    xor-int v9, v2, v3

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    .line 1104
    .local v5, "d":[I
    aget v8, v7, v13

    aget v9, v5, v11

    xor-int/2addr v8, v9

    aput v8, v7, v13

    .line 1105
    aget v8, v7, v11

    aget v9, v5, v12

    xor-int/2addr v8, v9

    aput v8, v7, v11

    .line 1106
    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    .line 1107
    .local v6, "e":[I
    aget v8, v7, v13

    aget v9, v6, v11

    xor-int/2addr v8, v9

    aput v8, v7, v13

    .line 1108
    aget v8, v7, v11

    aget v9, v6, v12

    aget v10, v6, v11

    xor-int/2addr v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v11

    .line 1109
    aget v8, v7, v12

    aget v9, v6, v12

    xor-int/2addr v8, v9

    aput v8, v7, v12

    .line 1110
    return-object v7
.end method

.method private upper(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5
    .param p1, "k"    # I

    .prologue
    .line 1151
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v2, p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1152
    .local v0, "j":I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1153
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v2, p1, :cond_0

    .line 1155
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    :cond_0
    return-object v1
.end method

.method private zeroUnusedBits()V
    .locals 5

    .prologue
    .line 1723
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 1727
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 630
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 631
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 632
    return-void
.end method

.method public assignAll()V
    .locals 3

    .prologue
    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 493
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 496
    return-void
.end method

.method public assignOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 467
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v1, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x1

    aput v2, v1, v3

    .line 470
    return-void
.end method

.method public assignX()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v1, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x2

    aput v2, v1, v3

    .line 483
    return-void
.end method

.method public assignZero()V
    .locals 3

    .prologue
    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public divide(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 10
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1267
    const/4 v6, 0x2

    new-array v5, v6, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 1268
    .local v5, "result":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v4, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1269
    .local v4, "q":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1270
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1273
    .local v1, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1275
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 1277
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1278
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1279
    iget v6, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v7, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v6, v7, :cond_1

    .line 1281
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v6, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v6, v5, v8

    .line 1282
    aput-object v0, v5, v9

    .line 1299
    :goto_0
    return-object v5

    .line 1285
    :cond_1
    iget v6, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v7, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v6, v7

    .line 1286
    .local v2, "i":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1288
    :goto_1
    if-ltz v2, :cond_2

    .line 1290
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 1291
    .local v3, "j":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1292
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1293
    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 1294
    iget v6, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v7, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v6, v7

    goto :goto_1

    .line 1297
    .end local v3    # "j":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_2
    aput-object v4, v5, v8

    .line 1298
    aput-object v0, v5, v9

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 549
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v3, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 554
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 556
    .local v1, "otherPol":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v3, v4, :cond_0

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v3, :cond_2

    .line 562
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public expandN(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x0

    .line 1528
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v3, p1, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1533
    add-int/lit8 v3, p1, -0x1

    ushr-int/lit8 v3, v3, 0x5

    add-int/lit8 v2, v3, 0x1

    .line 1534
    .local v2, "k":I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v3, v2, :cond_0

    .line 1538
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    if-lt v3, v2, :cond_3

    .line 1541
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1543
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v5, v3, v1

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1545
    :cond_2
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    goto :goto_0

    .line 1548
    .end local v1    # "j":I
    :cond_3
    new-array v0, v2, [I

    .line 1549
    .local v0, "bs":[I
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1550
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1551
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1552
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0
.end method

.method public gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1314
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1316
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Both operands of gcd equal zero."

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1320
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1337
    :cond_1
    :goto_0
    return-object v0

    .line 1322
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1324
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0

    .line 1326
    :cond_3
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1327
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1330
    .local v1, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1332
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 1333
    .local v2, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    move-object v0, v1

    .line 1334
    move-object v1, v2

    goto :goto_1
.end method

.method public getBit(I)I
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 1759
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 575
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    .prologue
    .line 687
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 688
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    .line 689
    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 677
    return-void
.end method

.method public isIrreducible()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1353
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v6

    .line 1357
    :cond_1
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1361
    .local v2, "f":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1362
    iget v7, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v7, -0x1

    .line 1363
    .local v0, "d":I
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v7, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string v8, "X"

    invoke-direct {v5, v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 1365
    .local v5, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    shr-int/lit8 v7, v0, 0x1

    if-gt v4, v7, :cond_2

    .line 1367
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    .line 1368
    invoke-virtual {v5, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    .line 1369
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v8, 0x20

    const-string v9, "X"

    invoke-direct {v7, v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->add(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    .line 1370
    .local v1, "dummy":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1372
    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 1373
    .local v3, "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1384
    .end local v1    # "dummy":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .end local v3    # "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isOne()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 608
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v3, :cond_2

    .line 610
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    if-eqz v3, :cond_1

    .line 619
    :cond_0
    :goto_1
    return v1

    .line 608
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 619
    goto :goto_1
.end method

.method public isZero()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 586
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-nez v2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v1

    .line 590
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_0

    .line 592
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    if-eqz v2, :cond_2

    .line 594
    const/4 v1, 0x0

    goto :goto_0

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 737
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 738
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 739
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 740
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    return-object v1
.end method

.method public multiplyClassic(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    const/16 v6, 0x1f

    .line 702
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 703
    .local v3, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/16 v4, 0x20

    new-array v2, v4, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 705
    .local v2, "m":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v5, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aput-object v5, v2, v4

    .line 706
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 708
    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    aput-object v4, v2, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v4, :cond_4

    .line 712
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-gt v1, v6, :cond_2

    .line 714
    iget-object v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    sget-object v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v5, v5, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 716
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 712
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 719
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-gt v1, v6, :cond_3

    .line 721
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftBlocksLeft()V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 710
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    .end local v1    # "j":I
    :cond_4
    return-object v3
.end method

.method public quotient(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1225
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1226
    .local v4, "q":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1227
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1230
    .local v1, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1232
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 1234
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1235
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1236
    iget v5, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v6, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v5, v6, :cond_2

    .line 1238
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .end local v4    # "q":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 1252
    :cond_1
    return-object v4

    .line 1240
    .restart local v4    # "q":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_2
    iget v5, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v6, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v5, v6

    .line 1241
    .local v2, "i":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1243
    :goto_0
    if-ltz v2, :cond_1

    .line 1245
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 1246
    .local v3, "j":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1247
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1248
    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 1249
    iget v5, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v6, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v5, v6

    goto :goto_0
.end method

.method public randomize()V
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 521
    return-void
.end method

.method public randomize(Ljava/util/Random;)V
    .locals 3
    .param p1, "rand"    # Ljava/util/Random;

    .prologue
    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    .line 534
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 537
    return-void
.end method

.method public reduceN()V
    .locals 4

    .prologue
    .line 1502
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v3, -0x1

    .line 1503
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    .line 1505
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1507
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v3, v1

    .line 1508
    .local v0, "h":I
    const/4 v2, 0x0

    .line 1509
    .local v2, "j":I
    :goto_1
    if-eqz v0, :cond_1

    .line 1511
    ushr-int/lit8 v0, v0, 0x1

    .line 1512
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1514
    :cond_1
    shl-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v2

    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1515
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1516
    return-void
.end method

.method reducePentanomial(I[I)V
    .locals 21
    .param p1, "m"    # I
    .param p2, "pc"    # [I

    .prologue
    .line 1449
    ushr-int/lit8 v5, p1, 0x5

    .line 1450
    .local v5, "p0":I
    and-int/lit8 v15, p1, 0x1f

    rsub-int/lit8 v9, v15, 0x20

    .line 1451
    .local v9, "q0":I
    const/4 v15, 0x0

    aget v15, p2, v15

    sub-int v15, p1, v15

    ushr-int/lit8 v6, v15, 0x5

    .line 1452
    .local v6, "p1":I
    const/4 v15, 0x0

    aget v15, p2, v15

    sub-int v15, p1, v15

    and-int/lit8 v15, v15, 0x1f

    rsub-int/lit8 v10, v15, 0x20

    .line 1453
    .local v10, "q1":I
    const/4 v15, 0x1

    aget v15, p2, v15

    sub-int v15, p1, v15

    ushr-int/lit8 v7, v15, 0x5

    .line 1454
    .local v7, "p2":I
    const/4 v15, 0x1

    aget v15, p2, v15

    sub-int v15, p1, v15

    and-int/lit8 v15, v15, 0x1f

    rsub-int/lit8 v11, v15, 0x20

    .line 1455
    .local v11, "q2":I
    const/4 v15, 0x2

    aget v15, p2, v15

    sub-int v15, p1, v15

    ushr-int/lit8 v8, v15, 0x5

    .line 1456
    .local v8, "p3":I
    const/4 v15, 0x2

    aget v15, p2, v15

    sub-int v15, p1, v15

    and-int/lit8 v15, v15, 0x1f

    rsub-int/lit8 v12, v15, 0x20

    .line 1457
    .local v12, "q3":I
    shl-int/lit8 v15, p1, 0x1

    add-int/lit8 v15, v15, -0x2

    ushr-int/lit8 v3, v15, 0x5

    .line 1458
    .local v3, "max":I
    move v4, v5

    .line 1459
    .local v4, "min":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-le v2, v4, :cond_0

    .line 1461
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v15, v15, v2

    int-to-long v15, v15

    const-wide v17, 0xffffffffL

    and-long v13, v15, v17

    .line 1462
    .local v13, "t":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v5

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v9

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1463
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v5

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v9, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1464
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v6

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v10

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1465
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v6

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v10, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1466
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v7

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v11

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1467
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v7

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v11, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1468
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v8

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1469
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v2, v8

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v12, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1470
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/16 v16, 0x0

    aput v16, v15, v2

    .line 1459
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 1472
    .end local v13    # "t":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v15, v15, v4

    int-to-long v15, v15

    const-wide v17, 0xffffffffL

    and-long v15, v15, v17

    const-wide v17, 0xffffffffL

    and-int/lit8 v19, p1, 0x1f

    shl-long v17, v17, v19

    and-long v13, v15, v17

    .line 1473
    .restart local v13    # "t":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/16 v16, 0x0

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v9, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1474
    sub-int v15, v4, v6

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_1

    .line 1476
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v6

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v10

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1478
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v6

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v10, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1479
    sub-int v15, v4, v7

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_2

    .line 1481
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v7

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v11

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1483
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v7

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v11, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1484
    sub-int v15, v4, v8

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_3

    .line 1486
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v8

    add-int/lit8 v16, v16, -0x1

    aget v17, v15, v16

    shl-long v18, v13, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    xor-int v17, v17, v18

    aput v17, v15, v16

    .line 1488
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v16, v4, v8

    aget v17, v15, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rsub-int/lit8 v19, v12, 0x20

    ushr-long v19, v13, v19

    xor-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    .line 1489
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v16, v15, v4

    sget-object v17, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v18, p1, 0x1f

    aget v17, v17, v18

    and-int v16, v16, v17

    aput v16, v15, v4

    .line 1491
    add-int/lit8 v15, p1, -0x1

    ushr-int/lit8 v15, v15, 0x5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1492
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1493
    return-void
.end method

.method reduceTrinomial(II)V
    .locals 17
    .param p1, "m"    # I
    .param p2, "tc"    # I

    .prologue
    .line 1400
    ushr-int/lit8 v5, p1, 0x5

    .line 1401
    .local v5, "p0":I
    and-int/lit8 v11, p1, 0x1f

    rsub-int/lit8 v7, v11, 0x20

    .line 1402
    .local v7, "q0":I
    sub-int v11, p1, p2

    ushr-int/lit8 v6, v11, 0x5

    .line 1403
    .local v6, "p1":I
    sub-int v11, p1, p2

    and-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v8, v11, 0x20

    .line 1404
    .local v8, "q1":I
    shl-int/lit8 v11, p1, 0x1

    add-int/lit8 v11, v11, -0x2

    ushr-int/lit8 v3, v11, 0x5

    .line 1405
    .local v3, "max":I
    move v4, v5

    .line 1406
    .local v4, "min":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-le v2, v4, :cond_0

    .line 1410
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v11, v11, v2

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long v9, v11, v13

    .line 1412
    .local v9, "t":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v2, v5

    add-int/lit8 v12, v12, -0x1

    aget v13, v11, v12

    shl-long v14, v9, v7

    long-to-int v14, v14

    xor-int/2addr v13, v14

    aput v13, v11, v12

    .line 1414
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v2, v5

    aget v13, v11, v12

    int-to-long v13, v13

    rsub-int/lit8 v15, v7, 0x20

    ushr-long v15, v9, v15

    xor-long/2addr v13, v15

    long-to-int v13, v13

    aput v13, v11, v12

    .line 1416
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v2, v6

    add-int/lit8 v12, v12, -0x1

    aget v13, v11, v12

    shl-long v14, v9, v8

    long-to-int v14, v14

    xor-int/2addr v13, v14

    aput v13, v11, v12

    .line 1418
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v2, v6

    aget v13, v11, v12

    int-to-long v13, v13

    rsub-int/lit8 v15, v8, 0x20

    ushr-long v15, v9, v15

    xor-long/2addr v13, v15

    long-to-int v13, v13

    aput v13, v11, v12

    .line 1419
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v12, 0x0

    aput v12, v11, v2

    .line 1406
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1422
    .end local v9    # "t":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v11, v11, v4

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    const-wide v13, 0xffffffffL

    and-int/lit8 v15, p1, 0x1f

    shl-long/2addr v13, v15

    and-long v9, v11, v13

    .line 1424
    .restart local v9    # "t":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v12, 0x0

    aget v13, v11, v12

    int-to-long v13, v13

    rsub-int/lit8 v15, v7, 0x20

    ushr-long v15, v9, v15

    xor-long/2addr v13, v15

    long-to-int v13, v13

    aput v13, v11, v12

    .line 1425
    sub-int v11, v4, v6

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_1

    .line 1427
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v4, v6

    add-int/lit8 v12, v12, -0x1

    aget v13, v11, v12

    shl-long v14, v9, v8

    long-to-int v14, v14

    xor-int/2addr v13, v14

    aput v13, v11, v12

    .line 1429
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v12, v4, v6

    aget v13, v11, v12

    int-to-long v13, v13

    rsub-int/lit8 v15, v8, 0x20

    ushr-long v15, v9, v15

    xor-long/2addr v13, v15

    long-to-int v13, v13

    aput v13, v11, v12

    .line 1431
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v12, v11, v4

    sget-object v13, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v14, p1, 0x1f

    aget v13, v13, v14

    and-int/2addr v12, v13

    aput v12, v11, v4

    .line 1432
    add-int/lit8 v11, p1, -0x1

    ushr-int/lit8 v11, v11, 0x5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1433
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1434
    return-void
.end method

.method public remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1188
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1189
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1192
    .local v1, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1194
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 1196
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1197
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1198
    iget v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v4, v5, :cond_2

    .line 1210
    :cond_1
    return-object v0

    .line 1202
    :cond_2
    iget v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v4, v5

    .line 1203
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1205
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 1206
    .local v3, "j":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1207
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 1208
    iget v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v2, v4, v5

    goto :goto_0
.end method

.method public resetBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1775
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1777
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1779
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1784
    :goto_0
    return-void

    .line 1783
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1738
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1740
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1742
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1747
    :goto_0
    return-void

    .line 1746
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method shiftBlocksLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1946
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1947
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1948
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 1951
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 1953
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 1951
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1955
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v5, v2, v5

    .line 1964
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 1959
    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v2, [I

    .line 1960
    .local v1, "result":[I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1961
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1962
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_1
.end method

.method public shiftLeft()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    .prologue
    .line 1829
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1831
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 1833
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 1834
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 1831
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    shl-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1837
    return-object v1
.end method

.method public shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7
    .param p1, "k"    # I

    .prologue
    .line 1890
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1892
    .local v2, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/16 v3, 0x20

    if-lt p1, v3, :cond_0

    .line 1894
    ushr-int/lit8 v3, p1, 0x5

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->doShiftBlocksLeft(I)V

    .line 1897
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    .line 1898
    .local v1, "remaining":I
    if-eqz v1, :cond_2

    .line 1900
    iget v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    .line 1902
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    shl-int/2addr v4, v1

    aput v4, v3, v0

    .line 1903
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    rsub-int/lit8 v6, v1, 0x20

    ushr-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v0

    .line 1900
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1905
    :cond_1
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    shl-int/2addr v5, v1

    aput v5, v3, v4

    .line 1907
    .end local v0    # "i":I
    :cond_2
    return-object v2
.end method

.method public shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .param p2, "k"    # I

    .prologue
    .line 1920
    if-nez p2, :cond_1

    .line 1922
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1936
    :cond_0
    return-void

    .line 1926
    :cond_1
    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 1927
    ushr-int/lit8 v0, p2, 0x5

    .line 1928
    .local v0, "d":I
    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1930
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_2

    and-int/lit8 v2, p2, 0x1f

    if-eqz v2, :cond_2

    .line 1932
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    and-int/lit8 v6, p2, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    ushr-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 1934
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v1, v0

    aget v4, v2, v3

    iget-object v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    and-int/lit8 v6, p2, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 1928
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public shiftLeftThis()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1847
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v2, v2, 0x1f

    if-nez v2, :cond_1

    .line 1849
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1850
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1851
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 1853
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v2, [I

    .line 1854
    .local v0, "bs":[I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v3, v3

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1855
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1856
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1858
    .end local v0    # "bs":[I
    :cond_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_3

    .line 1860
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v1

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 1861
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    shl-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1858
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1866
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1867
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, v7, :cond_2

    .line 1869
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 1870
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v1

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 1867
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1872
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v6

    shl-int/lit8 v3, v3, 0x1

    aput v3, v2, v6

    .line 1874
    :cond_3
    return-void
.end method

.method public shiftRight()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2003
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 2005
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    .line 2008
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 2009
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 2006
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 2012
    iget v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_1

    .line 2014
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v6, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 2016
    :cond_1
    return-object v1
.end method

.method public shiftRightThis()V
    .locals 6

    .prologue
    .line 2025
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 2026
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 2027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    .line 2029
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 2030
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 2027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2032
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 2033
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_1

    .line 2035
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 2037
    :cond_1
    return-void
.end method

.method public squareThisBitwise()V
    .locals 7

    .prologue
    .line 1565
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1569
    :cond_0
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v5, v5, 0x1

    new-array v4, v5, [I

    .line 1570
    .local v4, "result":[I
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1572
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v5, v1

    .line 1573
    .local v0, "h":I
    const/4 v2, 0x1

    .line 1574
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    const/16 v5, 0x10

    if-ge v3, v5, :cond_3

    .line 1576
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1

    .line 1578
    shl-int/lit8 v5, v1, 0x1

    aget v6, v4, v5

    or-int/2addr v6, v2

    aput v6, v4, v5

    .line 1580
    :cond_1
    const/high16 v5, 0x10000

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    .line 1582
    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    or-int/2addr v6, v2

    aput v6, v4, v5

    .line 1584
    :cond_2
    shl-int/lit8 v2, v2, 0x2

    .line 1585
    ushr-int/lit8 v0, v0, 0x1

    .line 1574
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1570
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1588
    .end local v0    # "h":I
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1589
    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1590
    array-length v5, v4

    iput v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1591
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_0
.end method

.method public squareThisPreCalc()V
    .locals 10

    .prologue
    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/high16 v7, -0x1000000

    .line 1601
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1632
    :goto_0
    return-void

    .line 1605
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_2

    .line 1607
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1609
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x10

    aget-short v4, v4, v5

    sget-object v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v0

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    aget-short v5, v5, v6

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 1611
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v3, v0, 0x1

    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    aget-short v4, v4, v5

    sget-object v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v0

    and-int/2addr v6, v8

    ushr-int/lit8 v6, v6, 0x8

    aget-short v5, v5, v6

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 1607
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1614
    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1615
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_0

    .line 1619
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 1620
    .local v1, "result":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_3

    .line 1622
    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-short v3, v3, v4

    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v8

    ushr-int/lit8 v5, v5, 0x8

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 1624
    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/2addr v4, v9

    ushr-int/lit8 v4, v4, 0x10

    aget-short v3, v3, v4

    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0x18

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 1620
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1627
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1628
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    .line 1629
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    .line 1630
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto/16 :goto_0
.end method

.method public subtract(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public subtractFromThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 654
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 655
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 656
    return-void
.end method

.method public testBit(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 1815
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 8

    .prologue
    .line 422
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x3

    add-int/lit8 v1, v5, 0x1

    .line 423
    .local v1, "k":I
    and-int/lit8 v3, v1, 0x3

    .line 425
    .local v3, "ov":I
    new-array v4, v1, [B

    .line 427
    .local v4, "res":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    shr-int/lit8 v5, v1, 0x2

    if-ge v0, v5, :cond_0

    .line 429
    shl-int/lit8 v5, v0, 0x2

    sub-int v5, v1, v5

    add-int/lit8 v2, v5, -0x1

    .line 430
    .local v2, "m":I
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 431
    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 432
    add-int/lit8 v5, v2, -0x2

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v0

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 433
    add-int/lit8 v5, v2, -0x3

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v0

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "m":I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 437
    sub-int v5, v3, v0

    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v2, v5, 0x3

    .line 438
    .restart local v2    # "m":I
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    const/16 v6, 0xff

    shl-int/2addr v6, v2

    and-int/2addr v5, v6

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    .end local v2    # "m":I
    :cond_1
    return-object v4
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    new-array v1, v2, [B

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 455
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method public toIntegerArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v1, [I

    .line 360
    .local v0, "result":[I
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7
    .param p1, "radix"    # I

    .prologue
    const/16 v6, 0x10

    .line 373
    new-array v1, v6, [C

    fill-array-data v1, :array_0

    .line 375
    .local v1, "HEX_CHARS":[C
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0000"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "0001"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "0010"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "0011"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "0100"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "0101"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "0110"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "0111"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "1000"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "1001"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "1010"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "1011"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "1100"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "1101"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "1110"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "1111"

    aput-object v5, v0, v4

    .line 380
    .local v0, "BIN_CHARS":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 381
    .local v3, "res":Ljava/lang/String;
    if-ne p1, v6, :cond_0

    .line 383
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x1c

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x14

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x10

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x1c

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x14

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x10

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v2

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 411
    :cond_1
    return-object v3

    .line 373
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public vectorMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Z
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1647
    const/4 v2, 0x0

    .line 1648
    .local v2, "result":Z
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eq v3, v4, :cond_0

    .line 1650
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 1652
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v3, :cond_1

    .line 1654
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    iget-object v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v1

    and-int v0, v3, v4

    .line 1655
    .local v0, "h":I
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    and-int/lit16 v4, v0, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    .line 1656
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    .line 1657
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    .line 1658
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    .line 1652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1660
    .end local v0    # "h":I
    :cond_1
    return v2
.end method

.method public xor(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 1674
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1675
    .local v1, "k":I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v3, v4, :cond_0

    .line 1677
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1678
    .local v2, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1680
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v3, v0

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    .end local v0    # "i":I
    .end local v2    # "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_0
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1686
    .restart local v2    # "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1688
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v3, v0

    .line 1686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    :cond_1
    invoke-direct {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 1694
    return-object v2
.end method

.method public xorBit(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1795
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1797
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1799
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1804
    :goto_0
    return-void

    .line 1803
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public xorThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 1707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1709
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 1707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1713
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    .line 1714
    return-void
.end method
