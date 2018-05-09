.class public Lorg/spongycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# static fields
.field private static final INPUT_BUF_SIZE:I = 0x800


# instance fields
.field private aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field private final buf:[B

.field private bufOff:I

.field private bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private finalized:Z

.field private final inBuf:[B

.field private maxBuf:I

.field private streamCipher:Lorg/spongycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;

    .prologue
    const/16 v1, 0x800

    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 49
    invoke-virtual {p2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 50
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/StreamCipher;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/StreamCipher;

    .prologue
    const/16 v1, 0x800

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 62
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .prologue
    const/16 v1, 0x800

    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 74
    invoke-interface {p2, v1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    .line 75
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 76
    return-void
.end method

.method private finaliseCipher()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->finalized:Z

    .line 139
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v1, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    .end local v0    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_1
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finalising cipher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextChunk()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->finalized:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 130
    :goto_0
    return v0

    .line 92
    :cond_0
    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 93
    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    .line 96
    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_5

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 99
    .local v3, "read":I
    if-ne v3, v7, :cond_2

    .line 101
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    .line 102
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_1

    move v0, v7

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0

    .line 111
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 122
    iput v3, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 130
    .end local v3    # "read":I
    :cond_5
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-boolean v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    .line 285
    return-void

    .line 277
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_1

    .line 281
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    :cond_1
    throw v0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 289
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 179
    const/4 v0, -0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v1, v2, :cond_0

    .line 229
    invoke-direct {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v1

    if-gez v1, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 236
    .local v0, "toSupply":I
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    goto :goto_0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 245
    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    .line 252
    :goto_0
    return-wide v1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherInputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 251
    .local v0, "skip":I
    iget v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 252
    int-to-long v1, v0

    goto :goto_0
.end method
