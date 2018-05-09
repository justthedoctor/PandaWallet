.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source "McElieceParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "keysize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ge p1, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    .line 62
    iput v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 63
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-ge v0, p1, :cond_1

    .line 65
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 66
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 69
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 70
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-ge p1, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    .line 93
    shl-int v0, v1, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 94
    if-gez p2, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-le p2, v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 103
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 104
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    .line 120
    if-ge p1, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    shl-int v0, v1, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 129
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 130
    if-gez p2, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-le p2, v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne v0, p1, :cond_4

    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 148
    return-void

    .line 145
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    return v0
.end method
