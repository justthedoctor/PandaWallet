.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private context:Lorg/spongycastle/crypto/tls/TlsContext;

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private readSeqNo:J

.field private readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:J

.field private writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x4000

    sput v0, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocol;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "output"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 21
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 22
    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    .line 23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 25
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 26
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 28
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    .line 37
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    .line 38
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 40
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 43
    sget v0, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 44
    return-void
.end method

.method private static checkLength(IIS)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "limit"    # I
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    if-le p0, p1, :cond_0

    .line 358
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method private static checkType(SS)V
    .locals 1
    .param p0, "type"    # S
    .param p1, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    packed-switch p0, :pswitch_data_0

    .line 349
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 351
    :pswitch_0
    return-void

    .line 340
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 333
    .local v0, "contents":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 334
    return-object v0
.end method


# virtual methods
.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 12
    .param p1, "type"    # S
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x16

    const/4 v5, 0x0

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {p3, v0, v11}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 183
    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v4

    .line 184
    .local v4, "buf":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    iput-wide v9, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    array-length v6, v4

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v8

    .line 186
    .local v8, "decoded":[B
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    invoke-static {v0, v1, v11}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v7

    .line 193
    .local v7, "cOut":Ljava/io/OutputStream;
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq v7, v0, :cond_0

    .line 195
    array-length v0, v8

    invoke-virtual {v7, v8, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 196
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 197
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v8

    .line 205
    :cond_0
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 211
    array-length v0, v8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    .line 213
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 216
    :cond_1
    return-object v8
.end method

.method finaliseHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eq v0, v1, :cond_1

    .line 128
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 130
    :cond_1
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 131
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 132
    return-void
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 328
    return-void
.end method

.method getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method getPlaintextLimit()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 49
    new-instance v0, Lorg/spongycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 51
    return-void
.end method

.method notifyHelloComplete()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 286
    return-void
.end method

.method prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 296
    .local v0, "result":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 297
    return-object v0
.end method

.method public readRecord()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 138
    .local v2, "recordHeader":[B
    if-nez v2, :cond_0

    .line 175
    :goto_0
    return v5

    .line 143
    :cond_0
    invoke-static {v2, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    .line 149
    .local v3, "type":S
    const/16 v7, 0xa

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 151
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-nez v7, :cond_1

    .line 153
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v4

    .line 154
    .local v4, "version":I
    and-int/lit16 v7, v4, -0x100

    const/16 v8, 0x300

    if-eq v7, v8, :cond_2

    .line 156
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 161
    .end local v4    # "version":I
    :cond_1
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    .line 162
    .local v4, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v7, :cond_3

    .line 164
    iput-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 172
    .end local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_2
    const/4 v7, 0x3

    invoke-static {v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 173
    .local v0, "length":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v7, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v1

    .line 174
    .local v1, "plaintext":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v8, v1

    invoke-virtual {v7, v3, v1, v5, v8}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    move v5, v6

    .line 175
    goto :goto_0

    .line 166
    .end local v0    # "length":I
    .end local v1    # "plaintext":[B
    .restart local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4, v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method receivedReadCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    .line 120
    return-void
.end method

.method protected safeClose()V
    .locals 1

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_1

    .line 311
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method sentWriteCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    .line 108
    return-void
.end method

.method setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0
    .param p1, "tlsCompression"    # Lorg/spongycastle/crypto/tls/TlsCompression;
    .param p2, "tlsCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 95
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 96
    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 1
    .param p1, "plaintextLimit"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    .line 61
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    .line 62
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    .line 63
    return-void
.end method

.method setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "readVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 73
    return-void
.end method

.method setRestrictReadVersion(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 90
    return-void
.end method

.method setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "writeVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 78
    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 303
    return-void
.end method

.method protected writeRecord(S[BII)V
    .locals 10
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "plaintextOffset"    # I
    .param p4, "plaintextLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 231
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v1, 0x50

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 237
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 239
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 242
    :cond_0
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 244
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v7

    .line 250
    .local v7, "cOut":Ljava/io/OutputStream;
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v7, v0, :cond_2

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .line 272
    .local v8, "ciphertext":[B
    :goto_0
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 274
    array-length v0, v8

    add-int/lit8 v0, v0, 0x5

    new-array v9, v0, [B

    .line 275
    .local v9, "record":[B
    const/4 v0, 0x0

    invoke-static {p1, v9, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 277
    array-length v0, v8

    const/4 v1, 0x3

    invoke-static {v0, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x5

    array-length v2, v8

    invoke-static {v8, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 281
    return-void

    .line 256
    .end local v8    # "ciphertext":[B
    .end local v9    # "record":[B
    :cond_2
    invoke-virtual {v7, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 258
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v4

    .line 264
    .local v4, "compressed":[B
    array-length v0, v4

    add-int/lit16 v1, p4, 0x400

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const/4 v5, 0x0

    array-length v6, v4

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .restart local v8    # "ciphertext":[B
    goto :goto_0
.end method
