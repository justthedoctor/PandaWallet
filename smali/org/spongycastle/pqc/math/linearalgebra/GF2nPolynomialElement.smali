.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
.source "GF2nPolynomialElement.java"


# static fields
.field private static final bitMask:[I


# instance fields
.field private polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    return-void

    :array_0
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
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 103
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 104
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 105
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V
    .locals 2
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
    .param p2, "rand"    # Ljava/util/Random;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 45
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 46
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 47
    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->randomize(Ljava/util/Random;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 2
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
    .param p2, "bs"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 59
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 60
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;[B)V
    .locals 2
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
    .param p2, "os"    # [B

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 76
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 77
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;[I)V
    .locals 2
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
    .param p2, "is"    # [I

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 90
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 91
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 93
    return-void
.end method

.method public static ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 5
    .param p0, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    .prologue
    const/4 v4, 0x1

    .line 155
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 157
    .local v0, "polynomial":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public static ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 2
    .param p0, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    .prologue
    .line 143
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 144
    .local v0, "polynomial":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method private getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private halfTrace()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 832
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 834
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 837
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 839
    .local v0, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_1

    .line 841
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 842
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 843
    invoke-virtual {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_1
    return-object v0
.end method

.method private randomize(Ljava/util/Random;)V
    .locals 2
    .param p1, "rand"    # Ljava/util/Random;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    .line 178
    return-void
.end method

.method private reducePentanomialBitwise([I)V
    .locals 6
    .param p1, "pc"    # [I

    .prologue
    .line 952
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v5, 0x2

    aget v5, p1, v5

    sub-int v1, v4, v5

    .line 953
    .local v1, "k":I
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v5, 0x1

    aget v5, p1, v5

    sub-int v2, v4, v5

    .line 954
    .local v2, "l":I
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v5, 0x0

    aget v5, p1, v5

    sub-int v3, v4, v5

    .line 955
    .local v3, "m":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v0, v4, :cond_1

    .line 957
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 960
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 961
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 962
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 963
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 955
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 967
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 968
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 969
    return-void
.end method

.method private reduceThis()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 857
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-le v3, v4, :cond_7

    .line 859
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getTc()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 873
    .local v2, "tc":I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v3, v2

    if-le v3, v5, :cond_0

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_2

    .line 877
    :cond_0
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceTrinomialBitwise(I)V

    .line 919
    .end local v2    # "tc":I
    :cond_1
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 869
    .local v0, "NATExc":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    .end local v0    # "NATExc":Ljava/lang/RuntimeException;
    .restart local v2    # "tc":I
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v3, v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceTrinomial(II)V

    goto :goto_0

    .line 883
    .end local v2    # "tc":I
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 890
    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getPc()[I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 898
    .local v1, "pc":[I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v4, 0x2

    aget v4, v1, v4

    sub-int/2addr v3, v4

    if-le v3, v5, :cond_4

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_5

    .line 902
    :cond_4
    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reducePentanomialBitwise([I)V

    goto :goto_0

    .line 892
    .end local v1    # "pc":[I
    :catch_1
    move-exception v0

    .line 894
    .restart local v0    # "NATExc":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 905
    .end local v0    # "NATExc":Ljava/lang/RuntimeException;
    .restart local v1    # "pc":[I
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v3, v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reducePentanomial(I[I)V

    goto :goto_0

    .line 910
    .end local v1    # "pc":[I
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 911
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    goto :goto_0

    .line 915
    :cond_7
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v3, v4, :cond_1

    .line 917
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    goto :goto_0
.end method

.method private reduceTrinomialBitwise(I)V
    .locals 4
    .param p1, "tc"    # I

    .prologue
    .line 928
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v1, v2, p1

    .line 929
    .local v1, "k":I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v0, v2, :cond_1

    .line 931
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 935
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 936
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 929
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 940
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 941
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 942
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 286
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 287
    return-object v0
.end method

.method public addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 299
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .end local p1    # "addend":Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 308
    return-void
.end method

.method assignOne()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    .line 166
    return-void
.end method

.method assignZero()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    .line 133
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 217
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .line 219
    .local v0, "otherElem":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    if-eq v2, v3, :cond_2

    .line 221
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 318
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->increaseThis()V

    .line 319
    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    .line 328
    return-void
.end method

.method public invert()Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->invertMAIA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public invertEEA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 399
    new-instance v6, Ljava/lang/ArithmeticException;

    invoke-direct {v6}, Ljava/lang/ArithmeticException;-><init>()V

    throw v6

    .line 401
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v6, v6, 0x20

    const-string v7, "ONE"

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 402
    .local v0, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 403
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v6, v6, 0x20

    invoke-direct {v1, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 404
    .local v1, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 405
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 406
    .local v4, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    .line 409
    .local v5, "v":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 410
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v6

    if-nez v6, :cond_2

    .line 412
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 413
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 414
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v6

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v7

    sub-int v3, v6, v7

    .line 415
    .local v3, "j":I
    if-gez v3, :cond_1

    .line 417
    move-object v2, v4

    .line 418
    .local v2, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    move-object v4, v5

    .line 419
    move-object v5, v2

    .line 420
    move-object v2, v0

    .line 421
    move-object v0, v1

    .line 422
    move-object v1, v2

    .line 423
    neg-int v3, v3

    .line 424
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 426
    .end local v2    # "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_1
    invoke-virtual {v4, v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 427
    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    goto :goto_0

    .line 429
    .end local v3    # "j":I
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 430
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v7, v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v7
.end method

.method public invertMAIA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 502
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    new-instance v5, Ljava/lang/ArithmeticException;

    invoke-direct {v5}, Ljava/lang/ArithmeticException;-><init>()V

    throw v5

    .line 506
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const-string v6, "ONE"

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 507
    .local v0, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 508
    .local v1, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 509
    .local v3, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 513
    .local v4, "v":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :goto_0
    invoke-virtual {v3, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 515
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    .line 516
    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 518
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 523
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 528
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v6, v5, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v6

    .line 531
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 532
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 533
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 535
    move-object v2, v3

    .line 536
    .local v2, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    move-object v3, v4

    .line 537
    move-object v4, v2

    .line 538
    move-object v2, v0

    .line 539
    move-object v0, v1

    .line 540
    move-object v1, v2

    .line 542
    .end local v2    # "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_4
    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 543
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0
.end method

.method public invertSquare()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 449
    new-instance v6, Ljava/lang/ArithmeticException;

    invoke-direct {v6}, Ljava/lang/ArithmeticException;-><init>()V

    throw v6

    .line 452
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 454
    .local v0, "b":I
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v4, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 455
    .local v4, "n":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    iget-object v6, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x20

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 456
    iget-object v6, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 458
    const/4 v3, 0x1

    .line 461
    .local v3, "k":I
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 464
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v5, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 466
    .local v5, "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-gt v2, v3, :cond_1

    .line 469
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 474
    shl-int/lit8 v3, v3, 0x1

    .line 476
    sget-object v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    aget v6, v6, v1

    and-int/2addr v6, v0

    if-eqz v6, :cond_2

    .line 479
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 480
    invoke-virtual {v4, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 482
    add-int/lit8 v3, v3, 0x1

    .line 461
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 487
    .end local v2    # "j":I
    .end local v5    # "u":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 488
    return-object v4
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "factor"    # Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 341
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 342
    return-object v0
.end method

.method public multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .param p1, "factor"    # Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 354
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 358
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 362
    :cond_1
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 370
    .end local p1    # "factor":Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    :goto_0
    return-void

    .line 367
    .restart local p1    # "factor":Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .end local p1    # "factor":Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 369
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    goto :goto_0
.end method

.method public power(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 6
    .param p1, "k"    # I

    .prologue
    const/4 v5, 0x1

    .line 688
    if-ne p1, v5, :cond_1

    .line 690
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 713
    :cond_0
    return-object v1

    .line 693
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    .line 695
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    if-eqz p1, :cond_0

    .line 700
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 701
    .local v2, "x":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 702
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v3, :cond_0

    .line 706
    shl-int v3, v5, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 708
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 710
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public solveQuadraticEquation()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    .line 796
    :cond_0
    :goto_0
    return-object v3

    .line 762
    :cond_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 764
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->halfTrace()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    goto :goto_0

    .line 772
    :cond_2
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-direct {v1, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 775
    .local v1, "p":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    .line 776
    .local v3, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .line 778
    .local v2, "w":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v4, :cond_3

    .line 782
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 783
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 784
    invoke-virtual {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 785
    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    .line 790
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 792
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method public square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squarePreCalc()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public squareBitwise()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .prologue
    .line 625
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 626
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisBitwise()V

    .line 627
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 628
    return-object v0
.end method

.method public squareMatrix()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 582
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisMatrix()V

    .line 583
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 584
    return-object v0
.end method

.method public squarePreCalc()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 659
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 660
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 661
    return-object v0
.end method

.method public squareRoot()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 725
    .local v0, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareRootThis()V

    .line 726
    return-object v0
.end method

.method public squareRootThis()V
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 736
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_0
    return-void
.end method

.method public squareThis()V
    .locals 0

    .prologue
    .line 565
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 566
    return-void
.end method

.method public squareThisBitwise()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisBitwise()V

    .line 643
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 644
    return-void
.end method

.method public squareThisMatrix()V
    .locals 5

    .prologue
    .line 599
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 600
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v2, :cond_1

    .line 602
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    iget-object v2, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 611
    return-void
.end method

.method public squareThisPreCalc()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    .line 676
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 677
    return-void
.end method

.method testBit(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public testRightmostBit()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "radix"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()I
    .locals 3

    .prologue
    .line 806
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 809
    .local v1, "t":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v2, :cond_0

    .line 811
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 812
    invoke-virtual {v1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    const/4 v2, 0x1

    .line 819
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
