.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;
.super Ljava/lang/Object;
.source "NTRUSigner.java"


# instance fields
.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

.field private signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

.field private verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 0
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .line 28
    return-void
.end method

.method private sign(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 14
    .param p1, "i"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "kp"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .prologue
    .line 129
    iget-object v13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v0, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    .line 130
    .local v0, "N":I
    iget-object v13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v8, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    .line 131
    .local v8, "q":I
    iget-object v13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v7, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->B:I

    .line 133
    .local v7, "perturbationBases":I
    move-object/from16 v5, p2

    .line 134
    .local v5, "kPriv":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v6

    .line 136
    .local v6, "kPub":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 137
    .local v9, "s":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move v4, v7

    .line 138
    .local v4, "iLoop":I
    :goto_0
    const/4 v13, 0x1

    if-lt v4, v13, :cond_1

    .line 140
    invoke-virtual {v5, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v1, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 141
    .local v1, "f":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    invoke-virtual {v5, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v2, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 143
    .local v2, "fPrime":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    invoke-interface {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 144
    .local v12, "y":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 145
    invoke-interface {v2, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 147
    invoke-interface {v2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 148
    .local v11, "x":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v11, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 149
    invoke-interface {v1, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 151
    move-object v10, v12

    .line 152
    .local v10, "si":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v10, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 153
    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 155
    invoke-virtual {v5, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 156
    .local v3, "hi":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v13, 0x1

    if-le v4, v13, :cond_0

    .line 158
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 164
    :goto_1
    invoke-virtual {v10, v3, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 166
    add-int/lit8 v4, v4, -0x1

    .line 167
    goto :goto_0

    .line 162
    :cond_0
    iget-object v13, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_1

    .line 169
    .end local v1    # "f":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .end local v2    # "fPrime":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .end local v3    # "hi":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v10    # "si":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v11    # "x":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v12    # "y":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v1, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 170
    .restart local v1    # "f":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v2, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 172
    .restart local v2    # "fPrime":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    invoke-interface {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 173
    .restart local v12    # "y":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 174
    invoke-interface {v2, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 176
    invoke-interface {v2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 177
    .restart local v11    # "x":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v11, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 178
    invoke-interface {v1, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 180
    invoke-virtual {v12, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 181
    invoke-virtual {v9, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 182
    invoke-virtual {v9, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 183
    return-object v9
.end method

.method private signHash([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B
    .locals 9
    .param p1, "msgHash"    # [B
    .param p2, "kp"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 107
    .local v2, "r":I
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v1

    .line 110
    .local v1, "kPub":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 111
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    if-le v2, v6, :cond_1

    .line 113
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signing failed: too many retries (max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v8, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 116
    .local v0, "i":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->sign(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    .line 118
    .local v4, "s":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v6, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0, v4, v6}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v6, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v4, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    .line 121
    .local v3, "rawSig":[B
    array-length v6, v3

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 122
    .local v5, "sbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    return-object v6
.end method

.method private verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z
    .locals 12
    .param p1, "i"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "s"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p3, "h"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 219
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v6, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    .line 220
    .local v6, "q":I
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-wide v4, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    .line 221
    .local v4, "normBoundSq":D
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-wide v0, v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->betaSq:D

    .line 223
    .local v0, "betaSq":D
    invoke-virtual {p3, p2, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 224
    .local v7, "t":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v7, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 225
    invoke-virtual {p2, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-long v2, v8

    .line 226
    .local v2, "centeredNormSq":J
    long-to-double v8, v2

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private verifyHash([B[BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)Z
    .locals 6
    .param p1, "msgHash"    # [B
    .param p2, "sig"    # [B
    .param p3, "pub"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .prologue
    .line 209
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 210
    .local v3, "sbuf":Ljava/nio/ByteBuffer;
    array-length v4, p2

    add-int/lit8 v4, v4, -0x4

    new-array v1, v4, [B

    .line 211
    .local v1, "rawSig":[B
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {v1, v4, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 213
    .local v2, "s":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 214
    .local v0, "r":I
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    iget-object v5, p3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v4, v2, v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v4

    return v4
.end method


# virtual methods
.method protected createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 13
    .param p1, "msgHash"    # [B
    .param p2, "r"    # I

    .prologue
    .line 231
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    .line 232
    .local v1, "N":I
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v9, v11, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    .line 234
    .local v9, "q":I
    invoke-static {v9}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v11

    rsub-int/lit8 v2, v11, 0x1f

    .line 235
    .local v2, "c":I
    add-int/lit8 v11, v2, 0x7

    div-int/lit8 v0, v11, 0x8

    .line 236
    .local v0, "B":I
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v5, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 238
    .local v5, "i":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    array-length v11, p1

    add-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 239
    .local v3, "cbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    new-instance v8, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object v12, v12, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v8, v11, v12}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;-><init>([BLorg/spongycastle/crypto/Digest;)V

    .line 243
    .local v8, "prng":Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_0
    if-ge v10, v1, :cond_0

    .line 245
    invoke-virtual {v8, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;->nextBytes(I)[B

    move-result-object v6

    .line 246
    .local v6, "o":[B
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    aget-byte v4, v6, v11

    .line 247
    .local v4, "hi":I
    mul-int/lit8 v11, v0, 0x8

    sub-int/2addr v11, v2

    shr-int/2addr v4, v11

    .line 248
    mul-int/lit8 v11, v0, 0x8

    sub-int/2addr v11, v2

    shl-int/2addr v4, v11

    .line 249
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    .line 251
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 252
    .local v7, "obuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 255
    iget-object v11, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    aput v12, v11, v10

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 257
    .end local v4    # "hi":I
    .end local v6    # "o":[B
    .end local v7    # "obuf":Ljava/nio/ByteBuffer;
    :cond_0
    return-object v5
.end method

.method public generateSignature()[B
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call initSign first!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 97
    .local v0, "msgHash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 98
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signHash([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B

    move-result-object v1

    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forSigning"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 40
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .line 46
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 47
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 48
    return-void

    .line 44
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    goto :goto_0
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign or initVerify first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 63
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "m"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign or initVerify first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 80
    return-void
.end method

.method public verifySignature([B)Z
    .locals 3
    .param p1, "sig"    # [B

    .prologue
    .line 195
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    if-nez v1, :cond_1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call initVerify first!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 202
    .local v0, "msgHash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 204
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verifyHash([B[BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)Z

    move-result v1

    return v1
.end method
