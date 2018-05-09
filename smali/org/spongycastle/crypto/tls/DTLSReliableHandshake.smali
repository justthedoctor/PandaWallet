.class Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
.super Ljava/lang/Object;
.source "DTLSReliableHandshake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;,
        Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    }
.end annotation


# static fields
.field private static final MAX_RECEIVE_AHEAD:I = 0xa


# instance fields
.field private currentInboundFlight:Ljava/util/Hashtable;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private message_seq:I

.field private next_receive_seq:I

.field private outboundFlight:Ljava/util/Vector;

.field private previousInboundFlight:Ljava/util/Hashtable;

.field private final recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

.field private sending:Z


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 2
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "transport"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    .line 24
    iput v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    iput v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    .line 28
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .line 29
    new-instance v0, Lorg/spongycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 31
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    .prologue
    .line 11
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    return v0
.end method

.method static synthetic access$200(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    .prologue
    .line 11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Hashtable;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;

    .prologue
    .line 11
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)V
    .locals 0
    .param p0, "x0"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    return-void
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Hashtable;

    .prologue
    .line 11
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    return-void
.end method

.method private static checkAll(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "inboundFlight"    # Ljava/util/Hashtable;

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 395
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 399
    const/4 v1, 0x0

    .line 402
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkInboundFlight()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 307
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 310
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 315
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private prepareInboundFlight()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    .line 321
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    .line 322
    return-void
.end method

.method private resendOutboundFlight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->resetWriteEpoch()V

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private static resetAll(Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "inboundFlight"    # Ljava/util/Hashtable;

    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 408
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->reset()V

    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method private updateHandshakeMessagesDigest(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    .locals 5
    .param p1, "message"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    .line 340
    .local v0, "body":[B
    const/16 v2, 0xc

    new-array v1, v2, [B

    .line 341
    .local v1, "buf":[B
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    invoke-static {v2, v1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 342
    array-length v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 343
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 344
    const/4 v2, 0x6

    invoke-static {v4, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 345
    array-length v2, v0

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 346
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 347
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 349
    .end local v0    # "body":[B
    .end local v1    # "buf":[B
    :cond_0
    return-object p1
.end method

.method private writeHandshakeFragment(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;II)V
    .locals 2
    .param p1, "message"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    .param p2, "fragment_offset"    # I
    .param p3, "fragment_length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;

    add-int/lit8 v1, p3, 0xc

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;-><init>(I)V

    .line 382
    .local v0, "fragment":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 383
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 384
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 385
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 386
    invoke-static {p3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 387
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->write([BII)V

    .line 389
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->sendToRecordLayer(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    .line 390
    return-void
.end method

.method private writeMessage(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)V
    .locals 7
    .param p1, "message"    # Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v4

    .line 356
    .local v4, "sendLimit":I
    add-int/lit8 v0, v4, -0xc

    .line 359
    .local v0, "fragmentLimit":I
    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    .line 362
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 365
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    array-length v3, v5

    .line 368
    .local v3, "length":I
    const/4 v2, 0x0

    .line 371
    .local v2, "fragment_offset":I
    :cond_1
    sub-int v5, v3, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 372
    .local v1, "fragment_length":I
    invoke-direct {p0, p1, v2, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->writeHandshakeFragment(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;II)V

    .line 373
    add-int/2addr v2, v1

    .line 375
    if-lt v2, v3, :cond_1

    .line 376
    return-void
.end method


# virtual methods
.method finish()V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "retransmit":Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-nez v1, :cond_1

    .line 228
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    .line 293
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->handshakeSuccessful(Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;)V

    .line 294
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;

    .end local v0    # "retransmit":Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;
    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;-><init>(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)V

    .restart local v0    # "retransmit":Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;
    goto :goto_0
.end method

.method getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method notifyHelloComplete()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 36
    return-void
.end method

.method prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 46
    .local v0, "result":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 47
    return-object v0
.end method

.method receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-eqz v5, :cond_0

    .line 87
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    .line 88
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->prepareInboundFlight()V

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-static {v14}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    .line 94
    .local v9, "next":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    if-eqz v9, :cond_1

    .line 96
    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v8

    .line 97
    .local v8, "body":[B
    if-eqz v8, :cond_1

    .line 99
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    .line 100
    new-instance v5, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->getType()S

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v8, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v5

    .line 201
    :goto_0
    return-object v5

    .line 105
    .end local v8    # "body":[B
    :cond_1
    const/4 v4, 0x0

    .line 108
    .local v4, "buf":[B
    const/16 v10, 0x3e8

    .line 112
    .local v10, "readTimeoutMillis":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v11

    .line 113
    .local v11, "receiveLimit":I
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v11, :cond_3

    .line 115
    :cond_2
    new-array v4, v11, [B

    .line 124
    :cond_3
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    const/4 v14, 0x0

    invoke-virtual {v5, v4, v14, v11, v10}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 125
    .local v12, "received":I
    if-gez v12, :cond_4

    .line 213
    .end local v12    # "received":I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    .line 219
    mul-int/lit8 v5, v10, 0x2

    const v14, 0xea60

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 220
    goto :goto_1

    .line 129
    .restart local v12    # "received":I
    :cond_4
    const/16 v5, 0xc

    if-lt v12, v5, :cond_3

    .line 133
    const/16 v5, 0x9

    :try_start_1
    invoke-static {v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v7

    .line 134
    .local v7, "fragment_length":I
    add-int/lit8 v5, v7, 0xc

    if-ne v12, v5, :cond_3

    .line 138
    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v13

    .line 139
    .local v13, "seq":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v5, v5, 0xa

    if-gt v13, v5, :cond_3

    .line 143
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    .line 144
    .local v2, "msg_type":S
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v3

    .line 145
    .local v3, "length":I
    const/4 v5, 0x6

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    .line 146
    .local v6, "fragment_offset":I
    add-int v5, v6, v7

    if-gt v5, v3, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-ge v13, v5, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    if-eqz v5, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v13}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    .line 161
    .local v1, "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    if-eqz v1, :cond_3

    .line 164
    const/16 v5, 0xc

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    .line 167
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    .line 176
    mul-int/lit8 v5, v10, 0x2

    const v14, 0xea60

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 178
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    goto/16 :goto_2

    .line 208
    .end local v1    # "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    .end local v2    # "msg_type":S
    .end local v3    # "length":I
    .end local v6    # "fragment_offset":I
    .end local v7    # "fragment_length":I
    .end local v12    # "received":I
    .end local v13    # "seq":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 186
    .restart local v2    # "msg_type":S
    .restart local v3    # "length":I
    .restart local v6    # "fragment_offset":I
    .restart local v7    # "fragment_length":I
    .restart local v12    # "received":I
    .restart local v13    # "seq":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v13}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    .line 187
    .restart local v1    # "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    if-nez v1, :cond_6

    .line 189
    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    .end local v1    # "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/tls/DTLSReassembler;-><init>(SI)V

    .line 190
    .restart local v1    # "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v13}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_6
    const/16 v5, 0xc

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    .line 195
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-ne v13, v5, :cond_3

    .line 197
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v8

    .line 198
    .restart local v8    # "body":[B
    if-eqz v8, :cond_3

    .line 200
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    .line 201
    new-instance v5, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->getType()S

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v14, v15, v8, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_0
.end method

.method receiveMessageBody(S)[B
    .locals 3
    .param p1, "msg_type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    .line 74
    .local v0, "message":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    if-eq v1, p1, :cond_0

    .line 76
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    return-object v1
.end method

.method resetHandshakeMessagesDigest()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->reset()V

    .line 299
    return-void
.end method

.method sendMessage(S[B)V
    .locals 3
    .param p1, "msg_type"    # S
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    array-length v1, p2

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 55
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    .line 59
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 62
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;)V

    .line 64
    .local v0, "message":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    .line 67
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    .line 68
    return-void
.end method
