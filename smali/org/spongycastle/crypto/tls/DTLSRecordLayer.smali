.class Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
.super Ljava/lang/Object;
.source "DTLSRecordLayer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# static fields
.field private static final MAX_FRAGMENT_LENGTH:I = 0x4000

.field private static final RECORD_HEADER_LENGTH:I = 0xd

.field private static final RETRANSMIT_TIMEOUT:J = 0x3a980L

.field private static final TCP_MSL:J = 0x1d4c0L


# instance fields
.field private volatile closed:Z

.field private final context:Lorg/spongycastle/crypto/tls/TlsContext;

.field private currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private volatile failed:Z

.field private volatile inHandshake:Z

.field private final peer:Lorg/spongycastle/crypto/tls/TlsPeer;

.field private pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile plaintextLimit:I

.field private readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private final recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

.field private retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private retransmitExpiry:J

.field private final transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

.field private writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/DatagramTransport;Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsPeer;S)V
    .locals 4
    .param p1, "transport"    # Lorg/spongycastle/crypto/tls/DatagramTransport;
    .param p2, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p3, "peer"    # Lorg/spongycastle/crypto/tls/TlsPeer;
    .param p4, "contentType"    # S

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 19
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    .line 20
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    .line 21
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 27
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 28
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    .line 39
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSEpoch;

    new-instance v1, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 40
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 44
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    .line 45
    return-void
.end method

.method private closeTransport()V
    .locals 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/DatagramTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    .line 432
    :cond_1
    return-void

    .line 425
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getMacSequenceNumber(IJ)J
    .locals 3
    .param p0, "epoch"    # I
    .param p1, "sequence_number"    # J

    .prologue
    .line 518
    int-to-long v0, p0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 437
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 439
    new-array v0, v4, [B

    .line 440
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 441
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 443
    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, v3, v4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 444
    return-void
.end method

.method private receiveRecord([BIII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 449
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, "length":I
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 454
    new-array v2, v8, [B

    .line 455
    .local v2, "lengthBytes":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/16 v6, 0xb

    invoke-virtual {v5, v2, v7, v8, v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 456
    invoke-static {v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v1

    .line 459
    .end local v2    # "lengthBytes":[B
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0xd

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 460
    .local v3, "received":I
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5, p1, p2, v3, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    .line 476
    .end local v1    # "length":I
    :cond_1
    :goto_0
    return v3

    .line 464
    .end local v3    # "received":I
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v5, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/DatagramTransport;->receive([BIII)I

    move-result v3

    .line 465
    .restart local v3    # "received":I
    if-lt v3, v6, :cond_1

    .line 467
    add-int/lit8 v5, p2, 0xb

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 468
    .local v0, "fragmentLength":I
    add-int/lit8 v4, v0, 0xd

    .line 469
    .local v4, "recordLength":I
    if-le v3, v4, :cond_1

    .line 471
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    add-int v6, p2, v4

    sub-int v7, v3, v4

    invoke-virtual {v5, p1, v6, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 472
    move v3, v4

    goto :goto_0
.end method

.method private sendRecord(S[BII)V
    .locals 14
    .param p1, "contentType"    # S
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    move/from16 v0, p4

    if-le v0, v1, :cond_0

    .line 484
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 491
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ge v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 493
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 496
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v10

    .line 497
    .local v10, "recordEpoch":I
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->allocateSequenceNumber()J

    move-result-wide v11

    .line 499
    .local v11, "recordSequenceNumber":J
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-static {v10, v11, v12}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v2

    move v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .line 504
    .local v8, "ciphertext":[B
    array-length v1, v8

    add-int/lit8 v1, v1, 0xd

    new-array v9, v1, [B

    .line 505
    .local v9, "record":[B
    const/4 v1, 0x0

    invoke-static {p1, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 506
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-eqz v1, :cond_2

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 507
    .local v13, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :goto_0
    const/4 v1, 0x1

    invoke-static {v13, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 508
    const/4 v1, 0x3

    invoke-static {v10, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 509
    const/4 v1, 0x5

    invoke-static {v11, v12, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint48(J[BI)V

    .line 510
    array-length v1, v8

    const/16 v2, 0xb

    invoke-static {v1, v9, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 511
    const/4 v1, 0x0

    const/16 v2, 0xd

    array-length v3, v8

    invoke-static {v8, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    const/4 v2, 0x0

    array-length v3, v9

    invoke-interface {v1, v9, v2, v3}, Lorg/spongycastle/crypto/tls/DatagramTransport;->send([BII)V

    .line 514
    return-void

    .line 506
    .end local v13    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v13

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    .line 373
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_0

    .line 375
    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    .line 377
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    .line 379
    :cond_1
    return-void
.end method

.method fail(S)V
    .locals 3
    .param p1, "alertDescription"    # S

    .prologue
    .line 383
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    .line 396
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    .line 398
    :cond_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiveLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/DatagramTransport;->getReceiveLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/DatagramTransport;->getSendLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method handshakeSuccessful(Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;)V
    .locals 4
    .param p1, "retransmit"    # Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v0, v1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 89
    :cond_1
    if-eqz p1, :cond_2

    .line 91
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    .line 96
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 99
    return-void
.end method

.method initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 2
    .param p1, "pendingCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 79
    return-void
.end method

.method public receive([BIII)I
    .locals 24
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v7, 0x0

    .line 134
    .local v7, "record":[B
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v3

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v18, v3, 0xd

    .line 135
    .local v18, "receiveLimit":I
    if-eqz v7, :cond_1

    array-length v3, v7

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 137
    :cond_1
    move/from16 v0, v18

    new-array v7, v0, [B

    .line 142
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_3

    .line 144
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 145
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 148
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p4

    invoke-direct {v0, v7, v3, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receiveRecord([BIII)I

    move-result v19

    .line 149
    .local v19, "received":I
    if-gez v19, :cond_4

    .line 317
    .end local v19    # "received":I
    :goto_1
    return v19

    .line 153
    .restart local v19    # "received":I
    :cond_4
    const/16 v3, 0xd

    move/from16 v0, v19

    if-lt v0, v3, :cond_0

    .line 157
    const/16 v3, 0xb

    invoke-static {v7, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v15

    .line 158
    .local v15, "length":I
    add-int/lit8 v3, v15, 0xd

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 163
    const/4 v3, 0x0

    invoke-static {v7, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v6

    .line 166
    .local v6, "type":S
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_1
    const/4 v3, 0x3

    invoke-static {v7, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v13

    .line 181
    .local v13, "epoch":I
    const/16 v20, 0x0

    .line 182
    .local v20, "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    if-ne v13, v3, :cond_a

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v20, v0

    .line 192
    :cond_5
    :goto_2
    if-eqz v20, :cond_0

    .line 197
    const/4 v3, 0x5

    invoke-static {v7, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint48([BI)J

    move-result-wide v21

    .line 198
    .local v21, "seq":J
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->shouldDiscard(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    const/4 v3, 0x1

    invoke-static {v7, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v23

    .line 204
    .local v23, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v4

    move-wide/from16 v0, v21

    invoke-static {v4, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v4

    const/16 v8, 0xd

    add-int/lit8 v9, v19, -0xd

    invoke-interface/range {v3 .. v9}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v17

    .line 213
    .local v17, "plaintext":[B
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->reportAuthenticated(J)V

    .line 215
    move-object/from16 v0, v17

    array-length v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    if-gt v3, v4, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v3, :cond_7

    .line 222
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 225
    :cond_7
    packed-switch v6, :pswitch_data_1

    .line 310
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v3, :cond_9

    .line 312
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 313
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 316
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    .line 186
    .end local v17    # "plaintext":[B
    .end local v21    # "seq":J
    .end local v23    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_a
    const/16 v3, 0x16

    if-ne v6, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v3

    if-ne v13, v3, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v20, v0

    goto/16 :goto_2

    .line 229
    .restart local v17    # "plaintext":[B
    .restart local v21    # "seq":J
    .restart local v23    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :pswitch_2
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 231
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    int-to-short v11, v3

    .line 232
    .local v11, "alertLevel":S
    const/4 v3, 0x1

    aget-byte v3, v17, v3

    int-to-short v10, v3

    .line 234
    .local v10, "alertDescription":S
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    invoke-interface {v3, v11, v10}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    .line 236
    const/4 v3, 0x2

    if-ne v11, v3, :cond_b

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 239
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v6    # "type":S
    .end local v10    # "alertDescription":S
    .end local v11    # "alertLevel":S
    .end local v13    # "epoch":I
    .end local v15    # "length":I
    .end local v17    # "plaintext":[B
    .end local v19    # "received":I
    .end local v20    # "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    .end local v21    # "seq":J
    .end local v23    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :catch_0
    move-exception v12

    .line 322
    .local v12, "e":Ljava/io/IOException;
    throw v12

    .line 243
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v6    # "type":S
    .restart local v10    # "alertDescription":S
    .restart local v11    # "alertLevel":S
    .restart local v13    # "epoch":I
    .restart local v15    # "length":I
    .restart local v17    # "plaintext":[B
    .restart local v19    # "received":I
    .restart local v20    # "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    .restart local v21    # "seq":J
    .restart local v23    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_b
    if-nez v10, :cond_0

    .line 245
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto/16 :goto_0

    .line 257
    .end local v10    # "alertDescription":S
    .end local v11    # "alertLevel":S
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 269
    :pswitch_4
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v14, v3, :cond_0

    .line 271
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v16

    .line 272
    .local v16, "message":S
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_d

    .line 269
    :cond_c
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 277
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v3, :cond_c

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_4

    .line 287
    .end local v14    # "i":I
    .end local v16    # "message":S
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v3, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v3, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v13, v0, v4, v5}, Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method resetDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 60
    .local v0, "result":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->discoveredPeerVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 61
    return-object v0
.end method

.method resetWriteEpoch()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_0
.end method

.method public send([BII)V
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 330
    const/16 v0, 0x17

    .line 332
    .local v0, "contentType":S
    iget-boolean v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v4, v5, :cond_4

    .line 334
    :cond_0
    const/16 v0, 0x16

    .line 336
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    .line 337
    .local v2, "handshakeType":S
    if-ne v2, v8, :cond_4

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, "nextEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    iget-boolean v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v4, :cond_2

    .line 342
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 349
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 352
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 344
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v4, v5, :cond_1

    .line 346
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_0

    .line 358
    :cond_3
    new-array v1, v7, [B

    aput-byte v7, v1, v6

    .line 359
    .local v1, "data":[B
    array-length v4, v1

    invoke-direct {p0, v8, v1, v6, v4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 361
    iput-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 365
    .end local v1    # "data":[B
    .end local v2    # "handshakeType":S
    .end local v3    # "nextEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    :cond_4
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 366
    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 0
    .param p1, "plaintextLimit"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    .line 50
    return-void
.end method

.method warn(SLjava/lang/String;)V
    .locals 2
    .param p1, "alertDescription"    # S
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 404
    return-void
.end method
