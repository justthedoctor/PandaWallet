.class public Lorg/spongycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private final oneByte:[B

.field private streamCipher:Lorg/spongycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 40
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/crypto/StreamCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/StreamCipher;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 52
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 61
    iput-object p2, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 62
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "outputSize"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    .line 170
    .local v0, "bufLen":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 172
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    .line 174
    :cond_1
    return-void

    .line 162
    .end local v0    # "bufLen":I
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, p1}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    .restart local v0    # "bufLen":I
    goto :goto_0

    .line 168
    .end local v0    # "bufLen":I
    :cond_3
    move v0, p1

    .restart local v0    # "bufLen":I
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/io/CipherOutputStream;->ensureCapacity(I)V

    .line 217
    const/4 v1, 0x0

    .line 220
    .local v1, "error":Ljava/io/IOException;
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v2

    .line 224
    .local v2, "outLen":I
    if-eqz v2, :cond_0

    .line 226
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .end local v2    # "outLen":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/io/CipherOutputStream;->flush()V

    .line 251
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 261
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 263
    throw v1

    .line 229
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v2

    .line 233
    .restart local v2    # "outLen":I
    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 239
    .end local v2    # "outLen":I
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v1, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    .end local v1    # "error":Ljava/io/IOException;
    const-string v3, "Error finalising cipher data"

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .restart local v1    # "error":Ljava/io/IOException;
    goto :goto_0

    .line 243
    .end local v0    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    .end local v1    # "error":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "error":Ljava/io/IOException;
    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 258
    move-object v1, v0

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 194
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    int-to-byte v2, p1

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/StreamCipher;->returnByte(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/io/CipherOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 104
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/io/CipherOutputStream;->ensureCapacity(I)V

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v6

    .line 127
    .local v6, "outLen":I
    if-eqz v6, :cond_0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    .end local v6    # "outLen":I
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v6

    .line 136
    .restart local v6    # "outLen":I
    if-eqz v6, :cond_0

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 143
    .end local v6    # "outLen":I
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/spongycastle/crypto/StreamCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v0, v1, v5, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
