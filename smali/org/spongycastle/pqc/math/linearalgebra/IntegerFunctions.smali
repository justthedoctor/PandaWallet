.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source "IntegerFunctions.java"


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final SMALL_PRIME_PRODUCT:J = 0x8a5b6470af95L

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 17
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void

    .line 21
    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 5
    .param p0, "n"    # I
    .param p1, "t"    # I

    .prologue
    .line 1025
    sget-object v1, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 1027
    .local v1, "result":Ljava/math/BigInteger;
    if-nez p0, :cond_1

    .line 1029
    if-nez p1, :cond_0

    move-object v2, v1

    .line 1048
    :goto_0
    return-object v2

    .line 1033
    :cond_0
    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 1037
    :cond_1
    ushr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_2

    .line 1039
    sub-int p1, p0, p1

    .line 1042
    :cond_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p1, :cond_3

    .line 1044
    add-int/lit8 v2, v0, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 1048
    goto :goto_0
.end method

.method public static bitCount(I)I
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "h":I
    :goto_0
    if-eqz p0, :cond_0

    .line 488
    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    .line 489
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return v0
.end method

.method public static ceilLog(I)I
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "log":I
    const/4 v0, 0x1

    .line 340
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 342
    shl-int/lit8 v0, v0, 0x1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return v1
.end method

.method public static ceilLog(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "a"    # Ljava/math/BigInteger;

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "result":I
    sget-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 321
    .local v0, "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_0
    return v1
.end method

.method public static ceilLog256(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 357
    if-nez p0, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 377
    :cond_0
    return v0

    .line 362
    :cond_1
    if-gez p0, :cond_2

    .line 364
    neg-int v1, p0

    .line 371
    .local v1, "m":I
    :goto_0
    const/4 v0, 0x0

    .line 372
    .local v0, "d":I
    :goto_1
    if-lez v1, :cond_0

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 375
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 368
    .end local v0    # "d":I
    .end local v1    # "m":I
    :cond_2
    move v1, p0

    .restart local v1    # "m":I
    goto :goto_0
.end method

.method public static ceilLog256(J)I
    .locals 6
    .param p0, "n"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 389
    cmp-long v3, p0, v4

    if-nez v3, :cond_1

    .line 391
    const/4 v0, 0x1

    .line 409
    :cond_0
    return v0

    .line 394
    :cond_1
    cmp-long v3, p0, v4

    if-gez v3, :cond_2

    .line 396
    neg-long v1, p0

    .line 403
    .local v1, "m":J
    :goto_0
    const/4 v0, 0x0

    .line 404
    .local v0, "d":I
    :goto_1
    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 407
    const/16 v3, 0x8

    ushr-long/2addr v1, v3

    goto :goto_1

    .line 400
    .end local v0    # "d":I
    .end local v1    # "m":J
    :cond_2
    move-wide v1, p0

    .restart local v1    # "m":J
    goto :goto_0
.end method

.method public static divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x1

    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    .line 295
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static divideAndRound([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "a"    # [Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 302
    array-length v2, p0

    new-array v1, v2, [Ljava/math/BigInteger;

    .line 303
    .local v1, "out":[Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 305
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-object v1
.end method

.method public static extGCD(II)[I
    .locals 9
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 278
    .local v0, "ba":Ljava/math/BigInteger;
    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 279
    .local v1, "bb":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 280
    .local v2, "bresult":[Ljava/math/BigInteger;
    const/4 v4, 0x3

    new-array v3, v4, [I

    .line 281
    .local v3, "result":[I
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v6

    .line 282
    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v7

    .line 283
    aget-object v4, v2, v8

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v8

    .line 284
    return-object v3
.end method

.method public static extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 12
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 628
    sget-object v5, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 629
    .local v5, "u":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 630
    .local v6, "v":Ljava/math/BigInteger;
    move-object v0, p0

    .line 631
    .local v0, "d":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-eqz v9, :cond_1

    .line 633
    sget-object v7, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 634
    .local v7, "v1":Ljava/math/BigInteger;
    move-object v8, p1

    .line 635
    .local v8, "v3":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-eqz v9, :cond_0

    .line 637
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 638
    .local v4, "tmp":[Ljava/math/BigInteger;
    aget-object v1, v4, v10

    .line 639
    .local v1, "q":Ljava/math/BigInteger;
    aget-object v3, v4, v11

    .line 640
    .local v3, "t3":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 641
    .local v2, "t1":Ljava/math/BigInteger;
    move-object v5, v7

    .line 642
    move-object v0, v8

    .line 643
    move-object v7, v2

    .line 644
    move-object v8, v3

    .line 645
    goto :goto_0

    .line 646
    .end local v1    # "q":Ljava/math/BigInteger;
    .end local v2    # "t1":Ljava/math/BigInteger;
    .end local v3    # "t3":Ljava/math/BigInteger;
    .end local v4    # "tmp":[Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 648
    .end local v7    # "v1":Ljava/math/BigInteger;
    .end local v8    # "v3":Ljava/math/BigInteger;
    :cond_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/math/BigInteger;

    aput-object v0, v9, v10

    aput-object v5, v9, v11

    const/4 v10, 0x2

    aput-object v6, v9, v10

    return-object v9
.end method

.method public static floatLog(F)F
    .locals 12
    .param p0, "param"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1163
    sub-float v6, p0, v7

    add-float/2addr v7, p0

    div-float/2addr v6, v7

    float-to-double v0, v6

    .line 1164
    .local v0, "arg":D
    move-wide v2, v0

    .line 1165
    .local v2, "arg2":D
    const/4 v4, 0x1

    .line 1166
    .local v4, "counter":I
    double-to-float v5, v0

    .line 1168
    .local v5, "result":F
    :goto_0
    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    .line 1170
    add-int/lit8 v4, v4, 0x2

    .line 1171
    mul-double v6, v0, v0

    mul-double/2addr v2, v6

    .line 1172
    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v4

    div-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-float v5, v6

    goto :goto_0

    .line 1174
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    return v6
.end method

.method public static floatPow(FI)F
    .locals 1
    .param p0, "f"    # F
    .param p1, "i"    # I

    .prologue
    .line 1186
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1187
    .local v0, "g":F
    :goto_0
    if-lez p1, :cond_0

    .line 1189
    mul-float/2addr v0, p0

    .line 1187
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1191
    :cond_0
    return v0
.end method

.method public static floorLog(I)I
    .locals 3
    .param p0, "a"    # I

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "h":I
    if-gtz p0, :cond_0

    .line 443
    const/4 v2, -0x1

    .line 452
    :goto_0
    return v2

    .line 445
    :cond_0
    ushr-int/lit8 v1, p0, 0x1

    .line 446
    .local v1, "p":I
    :goto_1
    if-lez v1, :cond_1

    .line 448
    add-int/lit8 v0, v0, 0x1

    .line 449
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 452
    goto :goto_0
.end method

.method public static floorLog(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "a"    # Ljava/math/BigInteger;

    .prologue
    .line 421
    const/4 v1, -0x1

    .line 422
    .local v1, "result":I
    sget-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 423
    .local v0, "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 425
    add-int/lit8 v1, v1, 0x1

    .line 426
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_0
    return v1
.end method

.method public static gcd(II)I
    .locals 3
    .param p0, "u"    # I
    .param p1, "v"    # I

    .prologue
    .line 265
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static intRoot(II)F
    .locals 8
    .param p0, "base"    # I
    .param p1, "root"    # I

    .prologue
    .line 1137
    div-int v4, p0, p1

    int-to-float v1, v4

    .line 1138
    .local v1, "gNew":F
    const/4 v2, 0x0

    .line 1139
    .local v2, "gOld":F
    const/4 v0, 0x0

    .line 1140
    .local v0, "counter":I
    :goto_0
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 1142
    invoke-static {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    .line 1143
    .local v3, "gPow":F
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1145
    add-float v4, v1, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 1146
    invoke-static {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    goto :goto_1

    .line 1148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1149
    move v2, v1

    .line 1150
    int-to-float v4, p0

    sub-float v4, v3, v4

    int-to-float v5, p1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v2, v6}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v1, v2, v4

    .line 1151
    goto :goto_0

    .line 1152
    .end local v3    # "gPow":F
    :cond_1
    return v1
.end method

.method public static integerToOctets(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 1388
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1391
    .local v1, "valBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_0

    .line 1398
    .end local v1    # "valBytes":[B
    :goto_0
    return-object v1

    .line 1396
    .restart local v1    # "valBytes":[B
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x3

    new-array v0, v2, [B

    .line 1397
    .local v0, "tmp":[B
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1398
    goto :goto_0
.end method

.method public static isIncreasing([I)Z
    .locals 4
    .param p0, "a"    # [I

    .prologue
    .line 1374
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1376
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    aget v2, p0, v0

    if-lt v1, v2, :cond_0

    .line 1378
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1380
    const/4 v1, 0x0

    .line 1383
    :goto_1
    return v1

    .line 1374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isPower(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "p"    # I

    .prologue
    const/4 v2, -0x1

    .line 724
    if-gtz p0, :cond_1

    move v1, v2

    .line 739
    :cond_0
    :goto_0
    return v1

    .line 728
    :cond_1
    const/4 v1, 0x0

    .line 729
    .local v1, "n":I
    move v0, p0

    .line 730
    .local v0, "d":I
    :goto_1
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 732
    rem-int v3, v0, p1

    if-eqz v3, :cond_2

    move v1, v2

    .line 734
    goto :goto_0

    .line 736
    :cond_2
    div-int/2addr v0, p1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isPrime(I)Z
    .locals 4
    .param p0, "n"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 786
    if-ge p0, v3, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v1

    .line 790
    :cond_1
    if-ne p0, v3, :cond_2

    move v1, v2

    .line 792
    goto :goto_0

    .line 794
    :cond_2
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    .line 798
    const/16 v3, 0x2a

    if-ge p0, v3, :cond_4

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 802
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    aget v3, v3, v0

    if-ne p0, v3, :cond_3

    move v1, v2

    .line 804
    goto :goto_0

    .line 800
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "i":I
    :cond_4
    rem-int/lit8 v2, p0, 0x3

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x5

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x7

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0xb

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0xd

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x11

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x13

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x17

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x1d

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x1f

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x25

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p0, 0x29

    if-eqz v2, :cond_0

    .line 817
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 10
    .param p0, "A"    # Ljava/math/BigInteger;
    .param p1, "B"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 59
    const-wide/16 v2, 0x1

    .line 61
    .local v2, "k":J
    const-wide/16 v2, 0x1

    .line 64
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 67
    .local v0, "a":Ljava/math/BigInteger;
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    move v7, v6

    .line 136
    .end local v0    # "a":Ljava/math/BigInteger;
    :cond_0
    :goto_1
    return v7

    .restart local v0    # "a":Ljava/math/BigInteger;
    :cond_1
    move v6, v7

    .line 67
    goto :goto_0

    .line 70
    .end local v0    # "a":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    :cond_3
    move-object v0, p0

    .line 76
    .restart local v0    # "a":Ljava/math/BigInteger;
    move-object v1, p1

    .line 78
    .local v1, "b":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-ne v8, v9, :cond_4

    .line 80
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-ne v8, v9, :cond_4

    .line 83
    const-wide/16 v2, -0x1

    .line 87
    :cond_4
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 88
    .local v4, "v":Ljava/math/BigInteger;
    :goto_2
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 90
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 91
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 96
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x7

    aget v8, v8, v9

    int-to-long v8, v8

    mul-long/2addr v2, v8

    .line 99
    :cond_6
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-gez v8, :cond_8

    .line 101
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 103
    neg-long v2, v2

    .line 105
    :cond_7
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 109
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_c

    .line 111
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 112
    :goto_4
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 114
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 115
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 119
    sget-object v8, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x7

    aget v8, v8, v9

    int-to-long v8, v8

    mul-long/2addr v2, v8

    .line 122
    :cond_a
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_b

    .line 125
    move-object v5, v0

    .line 126
    .local v5, "x":Ljava/math/BigInteger;
    move-object v0, v1

    .line 127
    move-object v1, v5

    .line 128
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 130
    neg-long v2, v2

    .line 133
    .end local v5    # "x":Ljava/math/BigInteger;
    :cond_b
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    .line 136
    :cond_c
    sget-object v6, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    long-to-int v7, v2

    goto/16 :goto_1
.end method

.method public static leastCommonMultiple([Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "numbers"    # [Ljava/math/BigInteger;

    .prologue
    .line 659
    array-length v2, p0

    .line 660
    .local v2, "n":I
    const/4 v4, 0x0

    aget-object v3, p0, v4

    .line 661
    .local v3, "result":Ljava/math/BigInteger;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 663
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 664
    .local v0, "gcd":Ljava/math/BigInteger;
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "gcd":Ljava/math/BigInteger;
    :cond_0
    return-object v3
.end method

.method public static leastDiv(I)I
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 750
    if-gez p0, :cond_0

    .line 752
    neg-int p0, p0

    .line 754
    :cond_0
    if-nez p0, :cond_2

    .line 756
    const/4 v0, 0x1

    .line 772
    :cond_1
    :goto_0
    return v0

    .line 758
    :cond_2
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_3

    .line 760
    const/4 v0, 0x2

    goto :goto_0

    .line 762
    :cond_3
    const/4 v0, 0x3

    .line 763
    .local v0, "p":I
    :goto_1
    div-int v1, p0, v0

    if-gt v0, v1, :cond_4

    .line 765
    rem-int v1, p0, v0

    if-eqz v1, :cond_1

    .line 769
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    move v0, p0

    .line 772
    goto :goto_0
.end method

.method public static log(D)D
    .locals 11
    .param p0, "x"    # D

    .prologue
    .line 1203
    const-wide/16 v9, 0x0

    cmpl-double v9, p0, v9

    if-lez v9, :cond_0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, p0, v9

    if-gez v9, :cond_0

    .line 1205
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v0, v9, p0

    .line 1206
    .local v0, "d":D
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->log(D)D

    move-result-wide v9

    neg-double v4, v9

    .line 1222
    :goto_0
    return-wide v4

    .line 1210
    .end local v0    # "d":D
    :cond_0
    const/4 v6, 0x0

    .line 1211
    .local v6, "tmp":I
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1212
    .local v7, "tmp2":D
    move-wide v0, p0

    .line 1214
    .restart local v0    # "d":D
    :goto_1
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v9, v0, v9

    if-lez v9, :cond_1

    .line 1216
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v9

    .line 1217
    add-int/lit8 v6, v6, 0x1

    .line 1218
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    goto :goto_1

    .line 1220
    :cond_1
    div-double v2, p0, v7

    .line 1221
    .local v2, "rem":D
    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v2

    .line 1222
    int-to-double v9, v6

    add-double v4, v9, v2

    goto :goto_0
.end method

.method public static log(J)D
    .locals 9
    .param p0, "x"    # J

    .prologue
    .line 1234
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(Ljava/math/BigInteger;)I

    move-result v2

    .line 1235
    .local v2, "tmp":I
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    int-to-long v3, v5

    .line 1236
    .local v3, "tmp2":J
    long-to-double v5, p0

    long-to-double v7, v3

    div-double v0, v5, v7

    .line 1237
    .local v0, "rem":D
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v0

    .line 1238
    int-to-double v5, v2

    add-double/2addr v5, v0

    return-wide v5
.end method

.method private static logBKM(D)D
    .locals 13
    .param p0, "arg"    # D

    .prologue
    .line 1250
    const/16 v11, 0x64

    new-array v0, v11, [D

    fill-array-data v0, :array_0

    .line 1352
    .local v0, "ae":[D
    const/16 v2, 0x35

    .line 1353
    .local v2, "n":I
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1354
    .local v5, "x":D
    const-wide/16 v7, 0x0

    .line 1356
    .local v7, "y":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1359
    .local v3, "s":D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1361
    mul-double v11, v5, v3

    add-double v9, v5, v11

    .line 1362
    .local v9, "z":D
    cmpg-double v11, v9, p0

    if-gtz v11, :cond_0

    .line 1364
    move-wide v5, v9

    .line 1365
    aget-wide v11, v0, v1

    add-double/2addr v7, v11

    .line 1367
    :cond_0
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v11

    .line 1359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    .end local v9    # "z":D
    :cond_1
    return-wide v7

    .line 1250
    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe2b803473f7ad1L    # 0.5849625007211562
        0x3fd49a784bcd1b8bL    # 0.32192809488736235
        0x3fc5c01a39fbd688L    # 0.16992500144231237
        0x3fb663f6fac91316L    # 0.0874628412503394
        0x3fa6bad3758efd87L    # 0.044394119358453436
        0x3f96e79685c2d22aL    # 0.02236781302845451
        0x3f86fe50b6ef0851L    # 0.01122725542325412
        0x3f7709c46d7aac77L    # 0.005624549193878107
        0x3f670f83ff0a7565L    # 0.0028150156070540383
        0x3f5712653743f454L    # 0.0014081943928083889
        0x3f4713d62f7957c3L    # 7.042690112466433E-4
        0x3f37148ec2a1bfc9L    # 3.5217748030102726E-4
        0x3f2714eb11fa5363L    # 1.7609948644250602E-4
        0x3f1715193b17d35dL    # 8.80524301221769E-5
        0x3f0715305002e4aeL    # 4.4026886827316716E-5
        0x3ef7153bda8f8225L    # 2.2013611360340496E-5
        0x3ee715419fdb9623L    # 1.1006847667481442E-5
        0x3ed7154482831175L    # 5.503434330648604E-6
        0x3ec71545f3d72b72L    # 2.751719789561283E-6
        0x3eb71546ac814f86L    # 1.375860550841138E-6
        0x3ea7154708d66756L    # 6.879304394358497E-7
        0x3e9715473700f4afL    # 3.4396526072176454E-7
        0x3e8715474e163bb8L    # 1.7198264061184464E-7
        0x3e77154759a0df53L    # 8.599132286866321E-8
        0x3e6715475f663127L    # 4.299566207501687E-8
        0x3e5715476248da12L    # 2.1497831197679756E-8
        0x3e47154763ba2e88L    # 1.0748915638882709E-8
        0x3e3715476472d8c3L    # 5.374457829452062E-9
        0x3e27154764cf2de1L    # 2.687228917228708E-9
        0x3e17154764fd586fL    # 1.3436144592400231E-9
        0x3e07154765146db7L    # 6.718072297764289E-10
        0x3df71547651ff85aL
        0x3de715476525bdacL    # 1.6795180747343547E-10
        0x3dd715476528a055L    # 8.397590373916176E-11
        0x3dc71547652a11aaL    # 4.1987951870191886E-11
        0x3db71547652aca54L
        0x3da71547652b26a9L    # 1.0496987967662534E-11
        0x3d971547652b54d4L    # 5.2484939838408146E-12
        0x3d871547652b6be9L    # 2.624246991922794E-12
        0x3d771547652b7773L    # 1.3121234959619935E-12
        0x3d671547652b7d39L    # 6.56061747981146E-13
        0x3d571547652b801bL    # 3.2803087399061026E-13
        0x3d471547652b818dL    # 1.6401543699531447E-13
        0x3d371547652b8245L    # 8.200771849765956E-14
        0x3d271547652b82a2L    # 4.1003859248830365E-14
        0x3d171547652b82d0L    # 2.0501929624415328E-14
        0x3d071547652b82e7L    # 1.02509648122077E-14
        0x3cf71547652b82f3L    # 5.1254824061038595E-15
        0x3ce71547652b82f8L
        0x3cd71547652b82fbL    # 1.2813706015259665E-15
        0x3cc71547652b82fdL    # 6.406853007629834E-16
        0x3cb71547652b82fdL    # 3.203426503814917E-16
        0x3ca71547652b82feL    # 1.6017132519074588E-16
        0x3c971547652b82feL    # 8.008566259537294E-17
        0x3c871547652b82feL    # 4.004283129768647E-17
        0x3c771547652b82feL    # 2.0021415648843235E-17
        0x3c671547652b82feL    # 1.0010707824421618E-17
        0x3c571547652b82feL    # 5.005353912210809E-18
        0x3c471547652b82feL    # 2.5026769561054044E-18
        0x3c371547652b82feL
        0x3c271547652b82feL    # 6.256692390263511E-19
        0x3c171547652b82feL    # 3.1283461951317555E-19
        0x3c071547652b82feL    # 1.5641730975658778E-19
        0x3bf71547652b82feL    # 7.820865487829389E-20
        0x3be71547652b82feL
        0x3bd71547652b82feL    # 1.9552163719573472E-20
        0x3bc71547652b82feL    # 9.776081859786736E-21
        0x3bb71547652b82feL    # 4.888040929893368E-21
        0x3ba71547652b82feL    # 2.444020464946684E-21
        0x3b971547652b82feL    # 1.222010232473342E-21
        0x3b871547652b82feL    # 6.11005116236671E-22
        0x3b771547652b82feL    # 3.055025581183355E-22
        0x3b671547652b82feL    # 1.5275127905916775E-22
        0x3b571547652b82feL    # 7.637563952958387E-23
        0x3b471547652b82feL    # 3.818781976479194E-23
        0x3b371547652b82feL    # 1.909390988239597E-23
        0x3b271547652b82feL    # 9.546954941197984E-24
        0x3b171547652b82feL    # 4.773477470598992E-24
        0x3b071547652b82feL    # 2.386738735299496E-24
        0x3af71547652b82feL    # 1.193369367649748E-24
        0x3ae71547652b82feL    # 5.96684683824874E-25
        0x3ad71547652b82feL    # 2.98342341912437E-25
        0x3ac71547652b82feL    # 1.491711709562185E-25
        0x3ab71547652b82feL    # 7.458558547810925E-26
        0x3aa71547652b82feL
        0x3a971547652b82feL    # 1.8646396369527313E-26
        0x3a871547652b82feL    # 9.323198184763657E-27
        0x3a771547652b82feL    # 4.661599092381828E-27
        0x3a671547652b82feL    # 2.330799546190914E-27
        0x3a571547652b82feL    # 1.165399773095457E-27
        0x3a471547652b82feL    # 5.826998865477285E-28
        0x3a371547652b82feL    # 2.9134994327386427E-28
        0x3a271547652b82feL    # 1.4567497163693213E-28
        0x3a171547652b82feL    # 7.283748581846607E-29
        0x3a071547652b82feL
        0x39f71547652b82feL    # 1.8209371454616517E-29
        0x39e71547652b82feL    # 9.104685727308258E-30
        0x39d71547652b82feL    # 4.552342863654129E-30
        0x39c71547652b82feL    # 2.2761714318270646E-30
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 1418
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1421
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floatLog(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(F)V

    .line 1422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "test2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1423
    return-void
.end method

.method public static maxPower(I)I
    .locals 3
    .param p0, "a"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "h":I
    if-eqz p0, :cond_0

    .line 467
    const/4 v1, 0x1

    .line 468
    .local v1, "p":I
    :goto_0
    and-int v2, p0, v1

    if-nez v2, :cond_0

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 471
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "p":I
    :cond_0
    return v0
.end method

.method public static mod(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "m"    # J

    .prologue
    .line 680
    rem-long v0, p0, p2

    .line 681
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 683
    add-long/2addr v0, p2

    .line 685
    :cond_0
    return-wide v0
.end method

.method public static modInverse(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "mod"    # I

    .prologue
    .line 697
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static modInverse(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "mod"    # J

    .prologue
    .line 710
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static modPow(III)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "e"    # I
    .param p2, "n"    # I

    .prologue
    .line 601
    if-lez p2, :cond_0

    mul-int v1, p2, p2

    const v2, 0x7fffffff

    if-gt v1, v2, :cond_0

    if-gez p1, :cond_2

    .line 603
    :cond_0
    const/4 v0, 0x0

    .line 616
    :cond_1
    return v0

    .line 605
    :cond_2
    const/4 v0, 0x1

    .line 606
    .local v0, "result":I
    rem-int v1, p0, p2

    add-int/2addr v1, p2

    rem-int p0, v1, p2

    .line 607
    :goto_0
    if-lez p1, :cond_1

    .line 609
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 611
    mul-int v1, v0, p0

    rem-int v0, v1, p2

    .line 613
    :cond_3
    mul-int v1, p0, p0

    rem-int p0, v1, p2

    .line 614
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static nextPrime(J)Ljava/math/BigInteger;
    .locals 14
    .param p0, "n"    # J

    .prologue
    const/4 v13, 0x1

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x2

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "found":Z
    const-wide/16 v5, 0x0

    .line 979
    .local v5, "result":J
    cmp-long v7, p0, v9

    if-gtz v7, :cond_0

    .line 981
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 1007
    :goto_0
    return-object v7

    .line 983
    :cond_0
    cmp-long v7, p0, v11

    if-nez v7, :cond_1

    .line 985
    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_0

    .line 988
    :cond_1
    add-long v7, p0, v9

    and-long/2addr v9, p0

    add-long v1, v7, v9

    .local v1, "i":J
    :goto_1
    shl-long v7, p0, v13

    cmp-long v7, v1, v7

    if-gtz v7, :cond_5

    if-nez v0, :cond_5

    .line 990
    const-wide/16 v3, 0x3

    .local v3, "j":J
    :goto_2
    shr-long v7, v1, v13

    cmp-long v7, v3, v7

    if-gtz v7, :cond_3

    if-nez v0, :cond_3

    .line 992
    rem-long v7, v1, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 994
    const/4 v0, 0x1

    .line 990
    :cond_2
    add-long/2addr v3, v11

    goto :goto_2

    .line 997
    :cond_3
    if-eqz v0, :cond_4

    .line 999
    const/4 v0, 0x0

    .line 988
    :goto_3
    add-long/2addr v1, v11

    goto :goto_1

    .line 1003
    :cond_4
    move-wide v5, v1

    .line 1004
    const/4 v0, 0x1

    goto :goto_3

    .line 1007
    .end local v3    # "j":J
    :cond_5
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 964
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 7
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "certainty"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 909
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 911
    :cond_0
    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 948
    :cond_1
    return-object v2

    .line 914
    :cond_2
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 917
    .local v2, "result":Ljava/math/BigInteger;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 919
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 925
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_5

    .line 927
    const-wide v3, 0x8a5b6470af95L

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 929
    .local v0, "r":J
    const-wide/16 v3, 0x3

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x5

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x7

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0xb

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0xd

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x11

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x13

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x17

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x1d

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x1f

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x25

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x29

    rem-long v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 934
    :cond_4
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 935
    goto :goto_0

    .line 940
    .end local v0    # "r":J
    :cond_5
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 946
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 951
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static nextSmallerPrime(I)I
    .locals 5
    .param p0, "n"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 872
    if-gt p0, v0, :cond_0

    .line 895
    :goto_0
    return v1

    .line 877
    :cond_0
    if-ne p0, v4, :cond_1

    move v1, v0

    .line 879
    goto :goto_0

    .line 882
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    .line 884
    add-int/lit8 p0, p0, -0x1

    .line 891
    :goto_1
    if-le p0, v4, :cond_3

    move v0, v1

    :goto_2
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 893
    add-int/lit8 p0, p0, -0x2

    goto :goto_1

    .line 888
    :cond_2
    add-int/lit8 p0, p0, -0x2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 891
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v1, p0

    .line 895
    goto :goto_0
.end method

.method public static octetsToInteger([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1413
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->octetsToInteger([BII)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static octetsToInteger([BII)Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 1404
    add-int/lit8 v1, p2, 0x1

    new-array v0, v1, [B

    .line 1406
    .local v0, "val":[B
    aput-byte v2, v0, v2

    .line 1407
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1408
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static order(II)I
    .locals 5
    .param p0, "g"    # I
    .param p1, "p"    # I

    .prologue
    .line 508
    rem-int v0, p0, p1

    .line 509
    .local v0, "b":I
    const/4 v1, 0x1

    .line 512
    .local v1, "j":I
    if-nez v0, :cond_0

    .line 514
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an element of Z/("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z)^*; it is not meaningful to compute its order."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 521
    mul-int/2addr v0, p0

    .line 522
    rem-int/2addr v0, p1

    .line 523
    if-gez v0, :cond_1

    .line 525
    add-int/2addr v0, p1

    .line 527
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_2
    return v1
.end method

.method public static passesSmallPrimeTest(Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "candidate"    # Ljava/math/BigInteger;

    .prologue
    .line 830
    const/16 v2, 0xef

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 852
    .local v1, "smallPrime":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 854
    aget v2, v1, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    const/4 v2, 0x0

    .line 860
    :goto_1
    return v2

    .line 852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 830
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
        0x407
        0x409
        0x40f
        0x419
        0x41b
        0x425
        0x427
        0x42d
        0x43f
        0x443
        0x445
        0x449
        0x44f
        0x455
        0x45d
        0x463
        0x469
        0x47f
        0x481
        0x48b
        0x493
        0x49d
        0x4a3
        0x4a9
        0x4b1
        0x4bd
        0x4c1
        0x4c7
        0x4cd
        0x4cf
        0x4d5
        0x4e1
        0x4eb
        0x4fd
        0x4ff
        0x503
        0x509
        0x50b
        0x511
        0x515
        0x517
        0x51b
        0x527
        0x529
        0x52f
        0x551
        0x557
        0x55d
        0x565
        0x577
        0x581
        0x58f
        0x593    # 2.0E-42f
        0x595
        0x599
        0x59f
        0x5a7
        0x5ab
        0x5ad
        0x5b3
        0x5bf
        0x5c9
        0x5cb
        0x5cf
        0x5d1
        0x5d5
        0x5db
    .end array-data
.end method

.method public static pow(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "e"    # I

    .prologue
    .line 556
    const/4 v0, 0x1

    .line 557
    .local v0, "result":I
    :goto_0
    if-lez p1, :cond_1

    .line 559
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 561
    mul-int/2addr v0, p0

    .line 563
    :cond_0
    mul-int/2addr p0, p0

    .line 564
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return v0
.end method

.method public static pow(JI)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "e"    # I

    .prologue
    .line 578
    const-wide/16 v0, 0x1

    .line 579
    .local v0, "result":J
    :goto_0
    if-lez p2, :cond_1

    .line 581
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 583
    mul-long/2addr v0, p0

    .line 585
    :cond_0
    mul-long/2addr p0, p0

    .line 586
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 588
    :cond_1
    return-wide v0
.end method

.method public static randomize(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "upperBound"    # Ljava/math/BigInteger;

    .prologue
    .line 1053
    sget-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 1057
    :cond_0
    sget-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "upperBound"    # Ljava/math/BigInteger;
    .param p1, "prng"    # Ljava/security/SecureRandom;

    .prologue
    .line 1063
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1064
    .local v0, "blen":I
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1066
    .local v2, "randomNum":Ljava/math/BigInteger;
    if-nez p1, :cond_0

    .line 1068
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-eqz v3, :cond_1

    sget-object p1, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 1071
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x14

    if-ge v1, v3, :cond_3

    .line 1073
    new-instance v2, Ljava/math/BigInteger;

    .end local v2    # "randomNum":Ljava/math/BigInteger;
    invoke-direct {v2, v0, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 1074
    .restart local v2    # "randomNum":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_2

    move-object v3, v2

    .line 1079
    :goto_2
    return-object v3

    .line 1068
    .end local v1    # "i":I
    :cond_1
    new-instance p1, Ljava/security/SecureRandom;

    .end local p1    # "prng":Ljava/security/SecureRandom;
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0

    .line 1071
    .restart local v1    # "i":I
    .restart local p1    # "prng":Ljava/security/SecureRandom;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    :cond_3
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2
.end method

.method public static reduceInto(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "begin"    # Ljava/math/BigInteger;
    .param p2, "end"    # Ljava/math/BigInteger;

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static ressol(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 17
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "p"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v12, 0x0

    .line 155
    .local v12, "v":Ljava/math/BigInteger;
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-gez v14, :cond_0

    .line 157
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 160
    :cond_0
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    sget-object v7, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 253
    :cond_1
    :goto_0
    return-object v7

    .line 165
    :cond_2
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v7, p0

    .line 167
    goto :goto_0

    .line 171
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 173
    invoke-static/range {p0 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 175
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 176
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_0

    .line 180
    :cond_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No quadratic residue: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 183
    :cond_5
    const-wide/16 v10, 0x0

    .line 188
    .local v10, "t":J
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 189
    .local v5, "k":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    .line 190
    .local v8, "s":J
    :goto_1
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-nez v14, :cond_6

    .line 192
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    .line 193
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_1

    .line 196
    :cond_6
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 197
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 202
    .local v7, "r":Ljava/math/BigInteger;
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 203
    .local v6, "n":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 206
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 212
    sget-object v13, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 213
    .local v13, "z":Ljava/math/BigInteger;
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 216
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    goto :goto_2

    .line 219
    :cond_7
    move-object v12, v5

    .line 220
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 221
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 222
    move-object/from16 v0, p1

    invoke-virtual {v13, v12, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 225
    .local v2, "c":Ljava/math/BigInteger;
    :goto_3
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 227
    move-object v5, v6

    .line 228
    move-wide v10, v8

    .line 229
    const-wide/16 v8, 0x0

    .line 231
    :goto_4
    sget-object v14, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 233
    invoke-virtual {v5, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 234
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    goto :goto_4

    .line 237
    :cond_8
    sub-long/2addr v10, v8

    .line 238
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_9

    .line 240
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No quadratic residue: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 243
    :cond_9
    sget-object v12, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 244
    const-wide/16 v3, 0x0

    .local v3, "i":J
    :goto_5
    const-wide/16 v14, 0x1

    sub-long v14, v10, v14

    cmp-long v14, v3, v14

    if-gez v14, :cond_a

    .line 246
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 244
    const-wide/16 v14, 0x1

    add-long/2addr v3, v14

    goto :goto_5

    .line 248
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v2, v12, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 249
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 250
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 251
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3
.end method

.method public static squareRoot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "a"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 1093
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    .line 1095
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot extract root of negative number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1099
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 1100
    .local v1, "bl":I
    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 1101
    .local v3, "result":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 1104
    .local v2, "remainder":Ljava/math/BigInteger;
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 1106
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1107
    add-int/lit8 v1, v1, -0x1

    .line 1110
    :cond_1
    :goto_0
    if-lez v1, :cond_4

    .line 1112
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1113
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    add-int/2addr v4, v6

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1116
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1117
    .local v0, "b":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1118
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 1120
    sget-object v4, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1121
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .end local v0    # "b":Ljava/math/BigInteger;
    :cond_2
    move v4, v5

    .line 1113
    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    .line 1125
    :cond_4
    return-object v3
.end method
