.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source "GF2nPolynomialField.java"


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

.field private tc:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "deg"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 46
    if-ge p1, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 51
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 55
    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 7
    .param p1, "deg"    # I
    .param p2, "polynomial"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 97
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    .line 27
    iput-boolean v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 98
    if-ge p1, v4, :cond_0

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "degree must be at least 3"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-eq v2, v3, :cond_1

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 106
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 110
    :cond_2
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 112
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 113
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 114
    const/4 v1, 0x2

    .line 115
    .local v1, "k":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 117
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    if-ne v1, v4, :cond_3

    .line 122
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    .line 124
    :cond_3
    if-gt v1, v6, :cond_4

    .line 126
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    add-int/lit8 v3, v1, -0x3

    aput v0, v2, v3

    .line 115
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_5
    if-ne v1, v4, :cond_6

    .line 132
    iput-boolean v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 134
    :cond_6
    if-ne v1, v6, :cond_7

    .line 136
    iput-boolean v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 138
    :cond_7
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 139
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 140
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "deg"    # I
    .param p2, "file"    # Z

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 68
    if-ge p1, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 73
    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    .line 81
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 82
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 84
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial2()V

    goto :goto_0
.end method

.method private computeSquaringMatrix()V
    .locals 7

    .prologue
    .line 376
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 378
    .local v0, "d":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v3, v3, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 381
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const-string v6, "ZERO"

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    aput-object v4, v3, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 386
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v4, 0x1

    const-string v5, "ONE"

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v0, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_1
    const/4 v1, 0x1

    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 391
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_3
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v2, v3, :cond_3

    .line 393
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shl-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 391
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 389
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 399
    .end local v2    # "j":I
    :cond_4
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    :goto_4
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v1, v3, :cond_5

    .line 401
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v4, v1, 0x1

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 404
    :cond_5
    return-void
.end method

.method private testPentanomials()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "done":Z
    const/4 v5, 0x0

    .line 487
    .local v5, "l":I
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 488
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 489
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 490
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x3

    if-gt v2, v6, :cond_7

    if-nez v0, :cond_7

    .line 492
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 493
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x2

    if-gt v3, v6, :cond_6

    if-nez v0, :cond_6

    .line 495
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 496
    add-int/lit8 v4, v3, 0x1

    .local v4, "k":I
    :goto_2
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_5

    if-nez v0, :cond_5

    .line 498
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 499
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    move v9, v7

    :goto_3
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    :goto_4
    or-int/2addr v9, v6

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    :goto_5
    or-int/2addr v9, v6

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_3

    move v6, v7

    :goto_6
    or-int/2addr v6, v9

    if-eqz v6, :cond_4

    .line 502
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 503
    add-int/lit8 v5, v5, 0x1

    .line 504
    if-eqz v0, :cond_4

    .line 506
    iput-boolean v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 507
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v2, v6, v8

    .line 508
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v3, v6, v7

    .line 509
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v7, 0x2

    aput v4, v6, v7

    move v1, v0

    .line 520
    .end local v0    # "done":Z
    .end local v3    # "j":I
    .end local v4    # "k":I
    .local v1, "done":Z
    :goto_7
    return v1

    .end local v1    # "done":Z
    .restart local v0    # "done":Z
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    :cond_0
    move v9, v8

    .line 499
    goto :goto_3

    :cond_1
    move v6, v8

    goto :goto_4

    :cond_2
    move v6, v8

    goto :goto_5

    :cond_3
    move v6, v8

    goto :goto_6

    .line 513
    :cond_4
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 515
    :cond_5
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 517
    .end local v4    # "k":I
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_7
    move v1, v0

    .line 520
    .end local v0    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_7
.end method

.method private testRandom()Z
    .locals 5

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, "done":Z
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 536
    const/4 v2, 0x0

    .line 537
    .local v2, "l":I
    :cond_0
    if-nez v0, :cond_1

    .line 539
    add-int/lit8 v2, v2, 0x1

    .line 540
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    .line 541
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 542
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 543
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    const/4 v0, 0x1

    move v1, v0

    .line 550
    .end local v0    # "done":Z
    .local v1, "done":I
    :goto_0
    return v1

    .end local v1    # "done":I
    .restart local v0    # "done":Z
    :cond_1
    move v1, v0

    .restart local v1    # "done":I
    goto :goto_0
.end method

.method private testTrinomials()Z
    .locals 6

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "done":Z
    const/4 v3, 0x0

    .line 452
    .local v3, "l":I
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 453
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 454
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 455
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 457
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 458
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 459
    add-int/lit8 v3, v3, 0x1

    .line 460
    if-eqz v0, :cond_0

    .line 462
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 463
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    move v1, v0

    .line 470
    .end local v0    # "done":Z
    .local v1, "done":Z
    :goto_1
    return v1

    .line 466
    .end local v1    # "done":Z
    .restart local v0    # "done":Z
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 467
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 470
    .end local v0    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_1
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 7
    .param p1, "B1"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .prologue
    .line 284
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iget v6, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v5, v6, :cond_0

    .line 286
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    :cond_0
    instance-of v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v5, :cond_1

    .line 294
    invoke-virtual {p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V

    .line 367
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v0, v5, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 301
    .local v0, "COBMatrix":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v5, :cond_2

    .line 303
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-direct {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v5, v0, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v4

    .line 312
    .local v4, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    instance-of v5, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v5, :cond_3

    .line 317
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v1, v5, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    .line 318
    .local v1, "gamma":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v5, -0x1

    move-object v5, p1

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v5

    aput-object v5, v1, v6

    .line 326
    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x2

    aput-object v4, v1, v5

    .line 327
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v2, v5, -0x3

    :goto_3
    if-ltz v2, :cond_4

    .line 329
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v5, v1, v2

    .line 327
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 322
    .end local v1    # "gamma":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    :cond_3
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v1, v5, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .line 323
    .restart local v1    # "gamma":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v5, -0x1

    move-object v5, p1

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v5

    aput-object v5, v1, v6

    goto :goto_2

    .line 331
    :cond_4
    instance-of v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v5, :cond_7

    .line 334
    const/4 v2, 0x0

    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v5, :cond_a

    .line 336
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_6

    .line 339
    aget-object v5, v1, v2

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 341
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 336
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 334
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 349
    .end local v3    # "j":I
    :cond_7
    const/4 v2, 0x0

    :goto_6
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v5, :cond_a

    .line 351
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_9

    .line 353
    aget-object v5, v1, v2

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 355
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 351
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 349
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 362
    .end local v3    # "j":I
    :cond_a
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    iget-object v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 366
    iget-object v5, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->invertMatrix([Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected computeFieldPolynomial()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    goto :goto_0
.end method

.method protected computeFieldPolynomial2()V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    goto :goto_0
.end method

.method public getPc()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 191
    iget-boolean v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 195
    :cond_0
    new-array v0, v3, [I

    .line 196
    .local v0, "result":[I
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    return-object v0
.end method

.method protected getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 11
    .param p1, "polynomial"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    const/4 v10, 0x1

    .line 227
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V

    .line 228
    .local v1, "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    .line 232
    .local v2, "gDegree":I
    :goto_0
    if-le v2, v10, :cond_3

    .line 237
    :cond_0
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-direct {v6, p0, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 238
    .local v6, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v8, 0x2

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    .line 240
    .local v7, "ut":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v7, v10, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    .line 241
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 243
    .local v0, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v8, v8, -0x1

    if-gt v5, v8, :cond_1

    .line 246
    invoke-virtual {v0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v3

    .line 253
    .local v3, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    .line 254
    .local v4, "hDegree":I
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    .line 256
    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_0

    .line 258
    shl-int/lit8 v8, v4, 0x1

    if-le v8, v2, :cond_2

    .line 260
    invoke-virtual {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v1

    .line 267
    :goto_2
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    goto :goto_0

    .line 265
    :cond_2
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .end local v1    # "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-direct {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .restart local v1    # "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    goto :goto_2

    .line 270
    .end local v0    # "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .end local v3    # "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .end local v4    # "hDegree":I
    .end local v5    # "i":I
    .end local v6    # "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .end local v7    # "ut":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v8

    return-object v8
.end method

.method public getSquaringVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 209
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public getTc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v0
.end method

.method public isPentanomial()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    return v0
.end method
