.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
.super Ljava/lang/Object;
.source "NTRUSigningPrivateKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Basis"
.end annotation


# instance fields
.field public f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

.field public fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

.field public h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;Z)V
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .param p3, "include_h"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 225
    .local v1, "N":I
    iget v9, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 226
    .local v9, "q":I
    iget v2, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    .line 227
    .local v2, "d1":I
    iget v3, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    .line 228
    .local v3, "d2":I
    iget v5, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    .line 229
    .local v5, "d3":I
    iget-boolean v10, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    .line 230
    .local v10, "sparse":Z
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 232
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-ne v0, v11, :cond_0

    .line 234
    add-int/lit8 v4, v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 242
    :goto_0
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    if-nez v0, :cond_4

    .line 244
    invoke-static {p1, v1, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 245
    .local v7, "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 247
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v0, v8

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v4, v11

    aput v4, v0, v8

    .line 245
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 238
    .end local v7    # "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v8    # "i":I
    :cond_0
    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    .line 239
    .local v6, "fInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v10, :cond_1

    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v0, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_2
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_2

    .line 249
    .end local v6    # "fInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .restart local v7    # "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .restart local v8    # "i":I
    :cond_2
    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 260
    .end local v7    # "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v8    # "i":I
    :goto_3
    if-eqz p3, :cond_3

    .line 262
    invoke-static {p1, v1, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 264
    :cond_3
    return-void

    .line 251
    :cond_4
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-ne v0, v11, :cond_5

    .line 253
    add-int/lit8 v4, v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    goto :goto_3

    .line 257
    :cond_5
    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    goto :goto_3
.end method

.method protected constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 0
    .param p1, "f"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .param p2, "fPrime"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .param p3, "h"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p4, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 209
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 210
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 211
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 212
    return-void
.end method

.method private getEncoded(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;)[B
    .locals 1
    .param p1, "p"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .prologue
    .line 300
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    .end local p1    # "p":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->toBinary()[B

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .restart local p1    # "p":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Tight()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method encode(Ljava/io/OutputStream;Z)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "include_h"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 278
    .local v2, "q":I
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->getEncoded(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 279
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    if-nez v3, :cond_2

    .line 281
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-interface {v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 282
    .local v0, "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 284
    iget-object v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v3, v1

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 292
    .end local v0    # "fPrimeInt":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v1    # "i":I
    :goto_1
    if-eqz p2, :cond_1

    .line 294
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 296
    :cond_1
    return-void

    .line 290
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->getEncoded(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    if-ne p0, p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 331
    goto :goto_0

    .line 333
    :cond_2
    instance-of v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-nez v3, :cond_3

    move v1, v2

    .line 335
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 337
    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 338
    .local v0, "other":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_4

    .line 340
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v3, :cond_5

    move v1, v2

    .line 342
    goto :goto_0

    .line 345
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 347
    goto :goto_0

    .line 349
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_6

    .line 351
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v3, :cond_7

    move v1, v2

    .line 353
    goto :goto_0

    .line 356
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 358
    goto :goto_0

    .line 360
    :cond_7
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v3, :cond_8

    .line 362
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v3, :cond_9

    move v1, v2

    .line 364
    goto :goto_0

    .line 367
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 369
    goto :goto_0

    .line 371
    :cond_9
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v3, :cond_a

    .line 373
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-eqz v3, :cond_0

    move v1, v2

    .line 375
    goto :goto_0

    .line 378
    :cond_a
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 380
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 313
    const/16 v0, 0x1f

    .line 314
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 315
    .local v1, "result":I
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 316
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 317
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 318
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 319
    return v1

    .line 315
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 317
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 318
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashCode()I

    move-result v3

    goto :goto_3
.end method
