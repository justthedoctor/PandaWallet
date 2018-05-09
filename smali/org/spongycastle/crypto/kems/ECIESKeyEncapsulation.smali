.class public Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;
.super Ljava/lang/Object;
.source "ECIESKeyEncapsulation.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncapsulation;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 45
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 46
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 47
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 48
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 0
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .param p3, "cofactorMode"    # Z
    .param p4, "oldCofactorMode"    # Z
    .param p5, "singleHashMode"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 68
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 72
    iput-boolean p3, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 73
    iput-boolean p4, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 74
    iput-boolean p5, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 75
    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 20
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 189
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Private key required for encryption"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 193
    .local v9, "ecPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 194
    .local v8, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 195
    .local v7, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v15

    .line 196
    .local v15, "n":Ljava/math/BigInteger;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    .line 199
    .local v12, "h":Ljava/math/BigInteger;
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 200
    .local v4, "C":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-virtual {v7, v4}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 206
    .local v11, "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    move-object v10, v11

    .line 207
    .local v10, "gHat":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 209
    :cond_1
    invoke-virtual {v10, v12}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 212
    :cond_2
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v16

    .line 213
    .local v16, "xHat":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 215
    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 218
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 221
    .local v13, "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v6

    .line 225
    .local v6, "PEH":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 227
    array-length v0, v4

    move/from16 v17, v0

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 228
    .local v14, "kdfInput":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    move-object/from16 v17, v0

    new-instance v18, Lorg/spongycastle/crypto/params/KDFParameters;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface/range {v17 .. v18}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 238
    move/from16 v0, p4

    new-array v5, v0, [B

    .line 239
    .local v5, "K":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 241
    new-instance v17, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v17

    .line 233
    .end local v5    # "K":[B
    .end local v14    # "kdfInput":[B
    :cond_4
    move-object v14, v6

    .restart local v14    # "kdfInput":[B
    goto :goto_0
.end method

.method public encrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 21
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 108
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Public key required for encryption"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 112
    .local v9, "ecPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 113
    .local v8, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 114
    .local v7, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v15

    .line 115
    .local v15, "n":Ljava/math/BigInteger;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    .line 118
    .local v12, "h":Ljava/math/BigInteger;
    sget-object v18, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v16

    .line 121
    .local v16, "r":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 123
    .local v17, "rPrime":Ljava/math/BigInteger;
    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/16 v18, 0x0

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    aput-object v19, v11, v18

    const/16 v18, 0x1

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    aput-object v19, v11, v18

    .line 129
    .local v11, "ghTilde":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7, v11}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 131
    const/16 v18, 0x0

    aget-object v10, v11, v18

    .local v10, "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    const/16 v18, 0x1

    aget-object v13, v11, v18

    .line 134
    .local v13, "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v4

    .line 135
    .local v4, "C":[B
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v6

    .line 142
    .local v6, "PEH":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 144
    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v14, v0, [B

    .line 145
    .local v14, "kdfInput":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    move-object/from16 v18, v0

    new-instance v19, Lorg/spongycastle/crypto/params/KDFParameters;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface/range {v18 .. v19}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 156
    move/from16 v0, p3

    new-array v5, v0, [B

    .line 157
    .local v5, "K":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 160
    new-instance v18, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v18

    .end local v4    # "C":[B
    .end local v5    # "K":[B
    .end local v6    # "PEH":[B
    .end local v10    # "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "ghTilde":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v13    # "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    .end local v14    # "kdfInput":[B
    .end local v17    # "rPrime":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v17, v16

    .line 121
    goto/16 :goto_0

    .line 150
    .restart local v4    # "C":[B
    .restart local v6    # "PEH":[B
    .restart local v10    # "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v11    # "ghTilde":[Lorg/spongycastle/math/ec/ECPoint;
    .restart local v13    # "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v17    # "rPrime":Ljava/math/BigInteger;
    :cond_2
    move-object v14, v6

    .restart local v14    # "kdfInput":[B
    goto :goto_1
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EC key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 93
    return-void
.end method
