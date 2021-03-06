.class public Lorg/spongycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source "TlsBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# static fields
.field private static encryptThenMAC:Z


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected randomData:[B

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected useExplicitIV:Z

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 21
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p4, "clientWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "serverWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p6, "cipherKeySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 46
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    .line 47
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 49
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    .line 51
    mul-int/lit8 v4, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    add-int v18, v4, v5

    .line 55
    .local v18, "key_block_size":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v4, :cond_0

    .line 57
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int v18, v18, v4

    .line 60
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v6

    .line 62
    .local v6, "key_block":[B
    const/4 v7, 0x0

    .line 64
    .local v7, "offset":I
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 66
    .local v3, "clientWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/2addr v7, v4

    .line 67
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 69
    .local v8, "serverWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/2addr v7, v4

    .line 71
    new-instance v15, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v15, v6, v7, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 72
    .local v15, "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v7, v7, p6

    .line 73
    new-instance v20, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-direct {v0, v6, v7, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 74
    .local v20, "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v7, v7, p6

    .line 77
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v4, :cond_1

    .line 79
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    new-array v14, v4, [B

    .line 80
    .local v14, "client_write_IV":[B
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 90
    .local v19, "server_write_IV":[B
    :goto_0
    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    .line 92
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 84
    .end local v14    # "client_write_IV":[B
    .end local v19    # "server_write_IV":[B
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v6, v7, v4}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 85
    .restart local v14    # "client_write_IV":[B
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v7, v4

    .line 86
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v6, v7, v4}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    .line 87
    .restart local v19    # "server_write_IV":[B
    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v7, v4

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 99
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 101
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 102
    new-instance v17, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 103
    .local v17, "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 115
    .local v16, "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v4, v5, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 117
    return-void

    .line 107
    .end local v16    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .end local v17    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 108
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 109
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 110
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 111
    new-instance v17, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v14}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 112
    .restart local v17    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v16    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_1
.end method


# virtual methods
.method protected checkPaddingConstantTime([BIIII)I
    .locals 13
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "blockSize"    # I
    .param p5, "macSize"    # I

    .prologue
    .line 319
    add-int v4, p2, p3

    .line 320
    .local v4, "end":I
    add-int/lit8 v11, v4, -0x1

    aget-byte v5, p1, v11

    .line 321
    .local v5, "lastByte":B
    and-int/lit16 v9, v5, 0xff

    .line 322
    .local v9, "padlen":I
    add-int/lit8 v10, v9, 0x1

    .line 324
    .local v10, "totalPad":I
    const/4 v1, 0x0

    .line 325
    .local v1, "dummyIndex":I
    const/4 v6, 0x0

    .line 327
    .local v6, "padDiff":B
    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v11}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v11

    if-eqz v11, :cond_0

    move/from16 v0, p4

    if-gt v10, v0, :cond_1

    :cond_0
    add-int v11, p5, v10

    move/from16 v0, p3

    if-le v11, v0, :cond_3

    .line 329
    :cond_1
    const/4 v10, 0x0

    .line 350
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    .local v3, "dummyPad":[B
    move v2, v1

    .line 351
    .end local v1    # "dummyIndex":I
    .local v2, "dummyIndex":I
    :goto_1
    const/16 v11, 0x100

    if-ge v2, v11, :cond_4

    .line 353
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dummyIndex":I
    .restart local v1    # "dummyIndex":I
    aget-byte v11, v3, v2

    xor-int/2addr v11, v5

    or-int/2addr v11, v6

    int-to-byte v6, v11

    move v2, v1

    .end local v1    # "dummyIndex":I
    .restart local v2    # "dummyIndex":I
    goto :goto_1

    .line 333
    .end local v2    # "dummyIndex":I
    .end local v3    # "dummyPad":[B
    .restart local v1    # "dummyIndex":I
    :cond_3
    sub-int v7, v4, v10

    .line 336
    .local v7, "padPos":I
    :goto_2
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "padPos":I
    .local v8, "padPos":I
    aget-byte v11, p1, v7

    xor-int/2addr v11, v5

    or-int/2addr v11, v6

    int-to-byte v6, v11

    .line 338
    if-lt v8, v4, :cond_5

    .line 340
    move v1, v10

    .line 342
    if-eqz v6, :cond_2

    .line 344
    const/4 v10, 0x0

    goto :goto_0

    .line 356
    .end local v1    # "dummyIndex":I
    .end local v8    # "padPos":I
    .restart local v2    # "dummyIndex":I
    .restart local v3    # "dummyPad":[B
    :cond_4
    const/4 v11, 0x0

    aget-byte v12, v3, v11

    xor-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    .line 359
    return v10

    .end local v2    # "dummyIndex":I
    .end local v3    # "dummyPad":[B
    .restart local v1    # "dummyIndex":I
    .restart local v8    # "padPos":I
    :cond_5
    move v7, v8

    .end local v8    # "padPos":I
    .restart local v7    # "padPos":I
    goto :goto_2
.end method

.method protected chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .locals 3
    .param p1, "r"    # Ljava/security/SecureRandom;
    .param p2, "max"    # I

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 367
    .local v1, "x":I
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result v0

    .line 368
    .local v0, "n":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 28
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "ciphertext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v17

    .line 232
    .local v17, "blockSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v24

    .line 234
    .local v24, "macSize":I
    move/from16 v25, v17

    .line 235
    .local v25, "minLen":I
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v3, :cond_1

    .line 237
    add-int v25, v25, v24

    .line 244
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v3, :cond_0

    .line 246
    add-int v25, v25, v17

    .line 249
    :cond_0
    move/from16 v0, p6

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 251
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 241
    :cond_1
    add-int/lit8 v3, v24, 0x1

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    goto :goto_0

    .line 254
    :cond_2
    move/from16 v6, p6

    .line 255
    .local v6, "blocks_length":I
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v3, :cond_c

    .line 257
    sub-int v6, v6, v24

    move/from16 v18, v6

    .line 260
    .end local v6    # "blocks_length":I
    .local v18, "blocks_length":I
    :goto_1
    rem-int v3, v18, v17

    if-eqz v3, :cond_3

    .line 262
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 265
    :cond_3
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v3, :cond_5

    .line 267
    add-int v21, p5, p6

    .line 268
    .local v21, "end":I
    sub-int v3, v21, v24

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-static {v0, v3, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v26

    .line 269
    .local v26, "receivedMac":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    sub-int v9, p6, v24

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v19

    .line 271
    .local v19, "calculatedMac":[B
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v16, 0x1

    .line 273
    .local v16, "badMac":Z
    :goto_2
    if-eqz v16, :cond_5

    .line 275
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 271
    .end local v16    # "badMac":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 279
    .end local v19    # "calculatedMac":[B
    .end local v21    # "end":I
    .end local v26    # "receivedMac":[B
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v3, :cond_b

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v5, v7, v0, v1, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    invoke-interface {v3, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 283
    add-int p5, p5, v17

    .line 284
    sub-int v6, v18, v17

    .line 287
    .end local v18    # "blocks_length":I
    .restart local v6    # "blocks_length":I
    :goto_3
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v6, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    add-int v4, p5, v22

    add-int v5, p5, v22

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v4, v1, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 287
    add-int v22, v22, v17

    goto :goto_4

    .line 293
    :cond_6
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v3, :cond_8

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, v17

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->checkPaddingConstantTime([BIIII)I

    move-result v27

    .line 295
    .local v27, "totalPad":I
    sub-int v20, v6, v27

    .line 297
    .local v20, "dec_output_length":I
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v3, :cond_a

    .line 299
    sub-int v20, v20, v24

    .line 300
    move/from16 v13, v20

    .line 301
    .local v13, "macInputLen":I
    add-int v23, p5, v13

    .line 302
    .local v23, "macOff":I
    add-int v3, v23, v24

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v26

    .line 303
    .restart local v26    # "receivedMac":[B
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    sub-int v14, v6, v24

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v7 .. v15}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMacConstantTime(JS[BIII[B)[B

    move-result-object v19

    .line 306
    .restart local v19    # "calculatedMac":[B
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v16, 0x1

    .line 308
    .restart local v16    # "badMac":Z
    :goto_6
    if-nez v16, :cond_7

    if-nez v27, :cond_a

    .line 310
    :cond_7
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .end local v13    # "macInputLen":I
    .end local v16    # "badMac":Z
    .end local v19    # "calculatedMac":[B
    .end local v20    # "dec_output_length":I
    .end local v23    # "macOff":I
    .end local v26    # "receivedMac":[B
    .end local v27    # "totalPad":I
    :cond_8
    move/from16 v8, v24

    .line 293
    goto :goto_5

    .line 306
    .restart local v13    # "macInputLen":I
    .restart local v19    # "calculatedMac":[B
    .restart local v20    # "dec_output_length":I
    .restart local v23    # "macOff":I
    .restart local v26    # "receivedMac":[B
    .restart local v27    # "totalPad":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    .line 314
    .end local v13    # "macInputLen":I
    .end local v19    # "calculatedMac":[B
    .end local v23    # "macOff":I
    .end local v26    # "receivedMac":[B
    :cond_a
    add-int v3, p5, v20

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v3}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .end local v6    # "blocks_length":I
    .end local v20    # "dec_output_length":I
    .end local v22    # "i":I
    .end local v27    # "totalPad":I
    .restart local v18    # "blocks_length":I
    :cond_b
    move/from16 v6, v18

    .end local v18    # "blocks_length":I
    .restart local v6    # "blocks_length":I
    goto :goto_3

    :cond_c
    move/from16 v18, v6

    .end local v6    # "blocks_length":I
    .restart local v18    # "blocks_length":I
    goto/16 :goto_1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 25
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "plaintext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v12

    .line 153
    .local v12, "blockSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v18

    .line 155
    .local v18, "macSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v24

    .line 157
    .local v24, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move/from16 v14, p6

    .line 158
    .local v14, "enc_input_length":I
    sget-boolean v4, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v4, :cond_0

    .line 160
    add-int v14, v14, v18

    .line 163
    :cond_0
    add-int/lit8 v4, v12, -0x1

    rem-int v5, v14, v12

    sub-int v22, v4, v5

    .line 166
    .local v22, "padding_length":I
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    move/from16 v0, v22

    rsub-int v4, v0, 0xff

    div-int v19, v4, v12

    .line 170
    .local v19, "maxExtraPadBlocks":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v11

    .line 171
    .local v11, "actualExtraPadBlocks":I
    mul-int v4, v11, v12

    add-int v22, v22, v4

    .line 174
    .end local v11    # "actualExtraPadBlocks":I
    .end local v19    # "maxExtraPadBlocks":I
    :cond_1
    add-int v4, p6, v18

    add-int v4, v4, v22

    add-int/lit8 v23, v4, 0x1

    .line 175
    .local v23, "totalSize":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v4, :cond_2

    .line 177
    add-int v23, v23, v12

    .line 180
    :cond_2
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 181
    .local v20, "outBuf":[B
    const/4 v10, 0x0

    .line 183
    .local v10, "outOff":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v4, :cond_3

    .line 185
    new-array v15, v12, [B

    .line 186
    .local v15, "explicitIV":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v5, 0x1

    new-instance v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v15}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v4, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 190
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v15, v4, v0, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/2addr v10, v12

    .line 194
    .end local v15    # "explicitIV":[B
    :cond_3
    move v13, v10

    .line 196
    .local v13, "blocks_start":I
    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int v21, v10, p6

    .line 199
    .end local v10    # "outOff":I
    .local v21, "outOff":I
    sget-boolean v4, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v4, :cond_7

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v17

    .line 202
    .local v17, "mac":[B
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object/from16 v0, v17

    array-length v4, v0

    add-int v10, v21, v4

    .line 206
    .end local v17    # "mac":[B
    .end local v21    # "outOff":I
    .restart local v10    # "outOff":I
    :goto_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    .line 208
    add-int/lit8 v21, v10, 0x1

    .end local v10    # "outOff":I
    .restart local v21    # "outOff":I
    move/from16 v0, v22

    int-to-byte v4, v0

    aput-byte v4, v20, v10

    .line 206
    add-int/lit8 v16, v16, 0x1

    move/from16 v10, v21

    .end local v21    # "outOff":I
    .restart local v10    # "outOff":I
    goto :goto_1

    .line 211
    :cond_4
    move/from16 v16, v13

    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-interface {v4, v0, v1, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 211
    add-int v16, v16, v12

    goto :goto_2

    .line 216
    :cond_5
    sget-boolean v4, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v4, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    const/4 v9, 0x0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v10}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v17

    .line 219
    .restart local v17    # "mac":[B
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/2addr v10, v4

    .line 225
    .end local v17    # "mac":[B
    :cond_6
    return-object v20

    .end local v10    # "outOff":I
    .end local v16    # "i":I
    .restart local v21    # "outOff":I
    :cond_7
    move/from16 v10, v21

    .end local v21    # "outOff":I
    .restart local v10    # "outOff":I
    goto :goto_0
.end method

.method public getPlaintextLimit(I)I
    .locals 4
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 121
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 122
    .local v0, "blockSize":I
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    .line 124
    .local v1, "macSize":I
    move v2, p1

    .line 127
    .local v2, "plaintextLimit":I
    iget-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v3, :cond_0

    .line 129
    sub-int/2addr v2, v0

    .line 133
    :cond_0
    sget-boolean v3, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v3, :cond_1

    .line 135
    sub-int/2addr v2, v1

    .line 136
    rem-int v3, v2, v0

    sub-int/2addr v2, v3

    .line 145
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 147
    return v2

    .line 140
    :cond_1
    rem-int v3, v2, v0

    sub-int/2addr v2, v3

    .line 141
    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method public getReadMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method public getWriteMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method protected lowestBitSet(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 373
    if-nez p1, :cond_1

    .line 375
    const/16 v0, 0x20

    .line 384
    :cond_0
    return v0

    .line 378
    :cond_1
    const/4 v0, 0x0

    .line 379
    .local v0, "n":I
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 382
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
