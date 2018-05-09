.class public Lorg/spongycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field V:[B

.field agree:Lorg/spongycastle/crypto/BasicAgreement;

.field cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/spongycastle/crypto/KeyParser;

.field mac:Lorg/spongycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/spongycastle/crypto/params/IESParameters;

.field privParam:Lorg/spongycastle/crypto/CipherParameters;

.field pubParam:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 61
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 62
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 63
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p4, "cipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 84
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 85
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 86
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 87
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 88
    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 17
    .param p1, "in_enc"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v5, 0x0

    .local v5, "M":[B
    const/4 v7, 0x0

    .local v7, "K":[B
    const/4 v8, 0x0

    .local v8, "K1":[B
    const/4 v9, 0x0

    .line 250
    .local v9, "K2":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v8, v1, [B

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v9, v1, [B

    .line 255
    array-length v1, v8

    array-length v2, v9

    add-int/2addr v1, v2

    new-array v7, v1, [B

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v7

    invoke-interface {v1, v7, v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v7, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    array-length v1, v9

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    :goto_0
    array-length v1, v8

    new-array v5, v1, [B

    .line 272
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v1, v8

    if-eq v15, v1, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    add-int v1, v1, p2

    add-int/2addr v1, v15

    aget-byte v1, p1, v1

    aget-byte v2, v8, v15

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v15

    .line 272
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 266
    .end local v15    # "i":I
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v1, v8

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v7, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 277
    .restart local v15    # "i":I
    :cond_1
    array-length v0, v8

    move/from16 v16, v0

    .line 299
    .end local v15    # "i":I
    .local v16, "len":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v11

    .line 300
    .local v11, "P2":[B
    const/4 v1, 0x4

    new-array v10, v1, [B

    .line 301
    .local v10, "L2":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_2

    if-eqz v11, :cond_2

    .line 303
    array-length v1, v11

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 308
    :cond_2
    add-int v14, p2, p3

    .line 309
    .local v14, "end":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    sub-int v1, v14, v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 311
    .local v12, "T1":[B
    array-length v1, v12

    new-array v13, v1, [B

    .line 312
    .local v13, "T2":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    add-int v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    sub-int v3, p3, v3

    array-length v4, v13

    sub-int/2addr v3, v4

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 315
    if-eqz v11, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v11

    invoke-interface {v1, v11, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 319
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v10

    invoke-interface {v1, v10, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v13, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 325
    invoke-static {v12, v13}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    new-instance v1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v2, "Invalid MAC."

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v10    # "L2":[B
    .end local v11    # "P2":[B
    .end local v12    # "T1":[B
    .end local v13    # "T2":[B
    .end local v14    # "end":I
    .end local v16    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v8, v1, [B

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v9, v1, [B

    .line 284
    array-length v1, v8

    array-length v2, v9

    add-int/2addr v1, v2

    new-array v7, v1, [B

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v7

    invoke-interface {v1, v7, v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 287
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v1, v8

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v7, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v2, 0x0

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v5, v1, [B

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    add-int v3, p2, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v4

    sub-int v4, v2, v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v16

    .line 294
    .restart local v16    # "len":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move/from16 v0, v16

    invoke-virtual {v1, v5, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int v16, v16, v1

    goto/16 :goto_2

    .line 332
    .restart local v10    # "L2":[B
    .restart local v11    # "P2":[B
    .restart local v12    # "T1":[B
    .restart local v13    # "T2":[B
    .restart local v14    # "end":I
    :cond_6
    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-static {v5, v1, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method private encryptBlock([BII)[B
    .locals 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v5, 0x0

    .local v5, "C":[B
    const/4 v7, 0x0

    .local v7, "K":[B
    const/4 v8, 0x0

    .local v8, "K1":[B
    const/4 v9, 0x0

    .line 162
    .local v9, "K2":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_5

    .line 165
    move/from16 v0, p3

    new-array v8, v0, [B

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v9, v1, [B

    .line 167
    array-length v1, v8

    array-length v2, v9

    add-int/2addr v1, v2

    new-array v7, v1, [B

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v7

    invoke-interface {v1, v7, v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v7, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    array-length v1, v9

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :goto_0
    move/from16 v0, p3

    new-array v5, v0, [B

    .line 184
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, p3

    if-eq v14, v0, :cond_1

    .line 186
    add-int v1, p2, v14

    aget-byte v1, p1, v1

    aget-byte v2, v8, v14

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v14

    .line 184
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 178
    .end local v14    # "i":I
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const/4 v1, 0x0

    array-length v2, v9

    move/from16 v0, p3

    invoke-static {v7, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 188
    .restart local v14    # "i":I
    :cond_1
    move/from16 v15, p3

    .line 209
    .end local v14    # "i":I
    .local v15, "len":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v12

    .line 210
    .local v12, "P2":[B
    const/4 v1, 0x4

    new-array v10, v1, [B

    .line 211
    .local v10, "L2":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_2

    if-eqz v12, :cond_2

    .line 213
    array-length v1, v12

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 218
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v13, v1, [B

    .line 220
    .local v13, "T":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v5

    invoke-interface {v1, v5, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 222
    if-eqz v12, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v12

    invoke-interface {v1, v12, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v10

    invoke-interface {v1, v10, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v13, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    add-int/2addr v1, v15

    array-length v2, v13

    add-int/2addr v1, v2

    new-array v11, v1, [B

    .line 235
    .local v11, "Output":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    invoke-static {v5, v1, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    add-int/2addr v2, v15

    array-length v3, v13

    invoke-static {v13, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object v11

    .line 193
    .end local v10    # "L2":[B
    .end local v11    # "Output":[B
    .end local v12    # "P2":[B
    .end local v13    # "T":[B
    .end local v15    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v8, v1, [B

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v9, v1, [B

    .line 195
    array-length v1, v8

    array-length v2, v9

    add-int/2addr v1, v2

    new-array v7, v1, [B

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v7

    invoke-interface {v1, v7, v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v7, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    array-length v1, v8

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v7, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v5, v1, [B

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v15

    .line 204
    .restart local v15    # "len":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v5, v15}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v15, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V
    .locals 1
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p3, "publicKeyParser"    # Lorg/spongycastle/crypto/KeyParser;

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 138
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 139
    check-cast p2, Lorg/spongycastle/crypto/params/IESParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    .line 140
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    .line 141
    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p3, "ephemeralKeyPairGenerator"    # Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 123
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 124
    check-cast p2, Lorg/spongycastle/crypto/params/IESParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    .line 125
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 126
    return-void
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "privParam"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p3, "pubParam"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p4, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 106
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 108
    check-cast p4, Lorg/spongycastle/crypto/params/IESParameters;

    .end local p4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    .line 109
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    .line 110
    return-void
.end method

.method public processBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 342
    iget-boolean v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v8, :cond_1

    .line 344
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v8, :cond_0

    .line 346
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/spongycastle/crypto/EphemeralKeyPair;

    move-result-object v5

    .line 348
    .local v5, "ephKeyPair":Lorg/spongycastle/crypto/EphemeralKeyPair;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 349
    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    .line 373
    .end local v5    # "ephKeyPair":Lorg/spongycastle/crypto/EphemeralKeyPair;
    :cond_0
    :goto_0
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 374
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v7

    .line 375
    .local v7, "z":Ljava/math/BigInteger;
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v8}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v8

    invoke-static {v8, v7}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    .line 379
    .local v1, "Z":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    if-eqz v8, :cond_2

    .line 381
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    array-length v9, v1

    add-int/2addr v8, v9

    new-array v0, v8, [B

    .line 382
    .local v0, "VZ":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v9, v9

    invoke-static {v8, v10, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    array-length v9, v1

    invoke-static {v1, v10, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    :goto_1
    new-instance v6, Lorg/spongycastle/crypto/params/KDFParameters;

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 392
    .local v6, "kdfParam":Lorg/spongycastle/crypto/params/KDFParameters;
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v8, v6}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 394
    iget-boolean v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v8, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->encryptBlock([BII)[B

    move-result-object v8

    :goto_2
    return-object v8

    .line 354
    .end local v0    # "VZ":[B
    .end local v1    # "Z":[B
    .end local v6    # "kdfParam":Lorg/spongycastle/crypto/params/KDFParameters;
    .end local v7    # "z":Ljava/math/BigInteger;
    :cond_1
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    if-eqz v8, :cond_0

    .line 356
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 360
    .local v2, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    invoke-interface {v8, v2}, Lorg/spongycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    sub-int v4, p3, v8

    .line 368
    .local v4, "encLength":I
    add-int v8, p2, v4

    invoke-static {p1, p2, v8}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    .line 362
    .end local v4    # "encLength":I
    :catch_0
    move-exception v3

    .line 364
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to recover ephemeral public key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 387
    .end local v2    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "Z":[B
    .restart local v7    # "z":Ljava/math/BigInteger;
    :cond_2
    move-object v0, v1

    .restart local v0    # "VZ":[B
    goto :goto_1

    .line 394
    .restart local v6    # "kdfParam":Lorg/spongycastle/crypto/params/KDFParameters;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->decryptBlock([BII)[B

    move-result-object v8

    goto :goto_2
.end method
