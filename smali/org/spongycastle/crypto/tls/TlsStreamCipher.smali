.class public Lorg/spongycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;
.source "TlsStreamCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# static fields
.field private static encryptThenMAC:Z


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptThenMAC:Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 19
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p4, "clientWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "serverWriteDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p6, "cipherKeySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v16

    .line 30
    .local v16, "isServer":Z
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 32
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 33
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 35
    mul-int/lit8 v3, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int v17, v3, v4

    .line 38
    .local v17, "key_block_size":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v5

    .line 40
    .local v5, "key_block":[B
    const/4 v6, 0x0

    .line 43
    .local v6, "offset":I
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 45
    .local v2, "clientWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    add-int/2addr v6, v3

    .line 46
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move-object v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    .line 48
    .local v7, "serverWriteMac":Lorg/spongycastle/crypto/tls/TlsMac;
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    add-int/2addr v6, v3

    .line 51
    new-instance v13, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v13, v5, v6, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 52
    .local v13, "clientWriteKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v6, v6, p6

    .line 53
    new-instance v18, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, v18

    move/from16 v1, p6

    invoke-direct {v0, v5, v6, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 54
    .local v18, "serverWriteKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v6, v6, p6

    .line 56
    move/from16 v0, v17

    if-eq v6, v0, :cond_0

    .line 58
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 62
    :cond_0
    if-eqz v16, :cond_1

    .line 64
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 65
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 67
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 68
    move-object/from16 v15, v18

    .line 69
    .local v15, "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object v14, v13

    .line 81
    .local v14, "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v15}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v14}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 83
    return-void

    .line 73
    .end local v14    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    .end local v15    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 74
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 75
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 76
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 77
    move-object v15, v13

    .line 78
    .restart local v15    # "encryptParams":Lorg/spongycastle/crypto/CipherParameters;
    move-object/from16 v14, v18

    .restart local v14    # "decryptParams":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0
.end method

.method private checkMAC(JS[BII[BII)V
    .locals 9
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "recBuf"    # [B
    .param p5, "recStart"    # I
    .param p6, "recEnd"    # I
    .param p7, "calcBuf"    # [B
    .param p8, "calcOff"    # I
    .param p9, "calcLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p4, p5, p6}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 156
    .local v8, "receivedMac":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v7

    .line 158
    .local v7, "computedMac":[B
    invoke-static {v8, v7}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 23
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
    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v22

    .line 128
    .local v22, "macSize":I
    move/from16 v0, p6

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 130
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 133
    :cond_0
    sub-int v11, p6, v22

    .line 135
    .local v11, "plaintextLength":I
    sget-boolean v2, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptThenMAC:Z

    if-eqz v2, :cond_1

    .line 137
    add-int v8, p5, p6

    .line 138
    .local v8, "ciphertextEnd":I
    sub-int v7, v8, v22

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    .line 139
    new-array v6, v11, [B

    .line 140
    .local v6, "deciphered":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v7, 0x0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v11

    invoke-interface/range {v2 .. v7}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 148
    .end local v6    # "deciphered":[B
    .end local v8    # "ciphertextEnd":I
    :goto_0
    return-object v6

    .line 145
    :cond_1
    move/from16 v0, p6

    new-array v6, v0, [B

    .line 146
    .restart local v6    # "deciphered":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v7, 0x0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-interface/range {v2 .. v7}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 147
    const/16 v20, 0x0

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move/from16 v15, p3

    move-object/from16 v16, v6

    move/from16 v17, v11

    move/from16 v18, p6

    move-object/from16 v19, v6

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    .line 148
    const/4 v2, 0x0

    invoke-static {v6, v2, v11}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    goto :goto_0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 13
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "plaintext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    add-int v1, v1, p6

    new-array v5, v1, [B

    .line 101
    .local v5, "outBuf":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 103
    sget-boolean v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptThenMAC:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    const/4 v6, 0x0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    .line 106
    .local v2, "mac":[B
    const/4 v1, 0x0

    array-length v3, v2

    move/from16 v0, p6

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :goto_0
    return-object v5

    .line 110
    .end local v2    # "mac":[B
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    .line 111
    .restart local v2    # "mac":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    array-length v4, v2

    move/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    goto :goto_0
.end method

.method public getPlaintextLimit(I)I
    .locals 1
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
