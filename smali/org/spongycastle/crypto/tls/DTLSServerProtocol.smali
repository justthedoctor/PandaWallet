.class public Lorg/spongycastle/crypto/tls/DTLSServerProtocol;
.super Lorg/spongycastle/crypto/tls/DTLSProtocol;
.source "DTLSServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    }
.end annotation


# instance fields
.field protected verifyRequests:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    .line 23
    return-void
.end method


# virtual methods
.method public accept(Lorg/spongycastle/crypto/tls/TlsServer;Lorg/spongycastle/crypto/tls/DatagramTransport;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 8
    .param p1, "server"    # Lorg/spongycastle/crypto/tls/TlsServer;
    .param p2, "transport"    # Lorg/spongycastle/crypto/tls/DatagramTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x50

    .line 38
    if-nez p1, :cond_0

    .line 40
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'server\' cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'transport\' cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    .line 48
    .local v3, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    const/4 v5, 0x0

    iput v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 49
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v5

    iput-object v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 51
    new-instance v4, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;

    invoke-direct {v4}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;-><init>()V

    .line 52
    .local v4, "state":Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    iput-object p1, v4, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 53
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v5, v6, v3}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v5, v4, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 54
    iget-object v5, v4, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/tls/TlsServer;->init(Lorg/spongycastle/crypto/tls/TlsServerContext;)V

    .line 56
    new-instance v2, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    iget-object v5, v4, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    const/16 v6, 0x16

    invoke-direct {v2, p2, v5, p1, v6}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/spongycastle/crypto/tls/DatagramTransport;Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsPeer;S)V

    .line 62
    .local v2, "recordLayer":Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
    :try_start_0
    invoke-virtual {p0, v4, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->serverHandshake(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v5

    invoke-virtual {v2, v5}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 67
    throw v1

    .line 69
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v2, v7}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 72
    throw v0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v7}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 77
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method protected expectCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z
    .locals 1
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;

    .prologue
    .line 626
    iget-short v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    if-ltz v0, :cond_0

    iget-short v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/CertificateRequest;)[B
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 291
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected generateCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/CertificateStatus;)[B
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "certificateStatus"    # Lorg/spongycastle/crypto/tls/CertificateStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected generateNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/NewSessionTicket;)[B
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "newSessionTicket"    # Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 308
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected generateServerHello(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B
    .locals 9
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    .line 314
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 316
    .local v3, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    .line 319
    .local v4, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 321
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 328
    :cond_0
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v5, v4}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 330
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 332
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 338
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 340
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v5

    iput v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    .line 341
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    iget v6, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v5, v6}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    if-eqz v5, :cond_1

    iget v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    .line 345
    :cond_1
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 348
    :cond_2
    iget v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v5, v8}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->validateSelectedCipherSuite(IS)V

    .line 350
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    iput-short v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    .line 351
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    iget-short v6, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    invoke-static {v5, v6}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-nez v5, :cond_3

    .line 353
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 356
    :cond_3
    iget v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 357
    iget-short v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 359
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v5

    iput-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 364
    iget-boolean v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    if-eqz v5, :cond_4

    .line 366
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v5, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    .line 367
    .local v2, "renegExtData":[B
    if-nez v2, :cond_6

    const/4 v1, 0x1

    .line 369
    .local v1, "noRenegExt":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 383
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v5

    iput-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 384
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v7, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v1    # "noRenegExt":Z
    .end local v2    # "renegExtData":[B
    :cond_4
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v5, :cond_5

    .line 391
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v6, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v5, v6, v8}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->evaluateMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v5

    iput-short v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->maxFragmentLength:S

    .line 394
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v5

    iput-boolean v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 396
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v5, v6, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v5

    iput-boolean v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 399
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v5, v6, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v5

    iput-boolean v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    .line 402
    iget-object v5, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 405
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 367
    .restart local v2    # "renegExtData":[B
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVerifyRequests()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    return v0
.end method

.method protected notifyClientCertificate(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_1

    .line 418
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 421
    :cond_1
    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 423
    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 450
    :goto_0
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 451
    return-void

    .line 436
    :cond_2
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    .line 439
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0
.end method

.method protected processCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/spongycastle/crypto/tls/TlsHandshakeHash;)V
    .locals 10
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "body"    # [B
    .param p3, "prepareFinishHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 470
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v2

    .line 472
    .local v2, "clientCertificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 478
    :try_start_0
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    const/4 v9, 0x0

    invoke-static {v8, p3, v9}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    .line 480
    .local v1, "certificateVerifyHash":[B
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v7

    .line 481
    .local v7, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    .line 482
    .local v4, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v4}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    .line 484
    .local v5, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    iget-short v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v6

    .line 485
    .local v6, "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v6, v8}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 486
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v9

    invoke-interface {v6, v8, v9, v5, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    return-void

    .line 489
    .end local v1    # "certificateVerifyHash":[B
    .end local v4    # "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v5    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .end local v6    # "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    .end local v7    # "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    :catch_0
    move-exception v3

    .line 491
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v9, 0x33

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8
.end method

.method protected processClientCertificate(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 458
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v1

    .line 460
    .local v1, "clientCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 462
    invoke-virtual {p0, p1, v1}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 463
    return-void
.end method

.method protected processClientHello(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 12
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/16 v9, 0x2f

    const/4 v10, 0x1

    .line 498
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 501
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 502
    .local v3, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v8

    if-nez v8, :cond_0

    .line 504
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 510
    :cond_0
    invoke-static {v11, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 512
    .local v2, "client_random":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 513
    .local v7, "sessionID":[B
    array-length v8, v7

    if-le v8, v11, :cond_1

    .line 515
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 519
    :cond_1
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 521
    .local v5, "cookie":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 522
    .local v1, "cipher_suites_length":I
    const/4 v8, 0x2

    if-lt v1, v8, :cond_2

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_3

    .line 524
    :cond_2
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v9, 0x32

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 531
    :cond_3
    div-int/lit8 v8, v1, 0x2

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    .line 533
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    .line 534
    .local v4, "compression_methods_length":I
    if-ge v4, v10, :cond_4

    .line 536
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 539
    :cond_4
    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    .line 546
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 548
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v8, v3}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 550
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v8, v3}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 552
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v8

    iput-object v2, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 554
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v9, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 555
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v9, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCompressionMethods:[S

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 572
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->offeredCipherSuites:[I

    const/16 v9, 0xff

    invoke-static {v8, v9}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 574
    iput-boolean v10, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 581
    :cond_5
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v9, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v6

    .line 582
    .local v6, "renegExtData":[B
    if-eqz v6, :cond_6

    .line 589
    iput-boolean v10, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 591
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v8

    invoke-static {v6, v8}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    .line 593
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v9, 0x28

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v8

    .line 598
    :cond_6
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-boolean v9, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    .line 600
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v8, :cond_7

    .line 602
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v9, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    .line 604
    :cond_7
    return-void
.end method

.method protected processClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 611
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 613
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 614
    return-void
.end method

.method protected processClientSupplementalData(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 620
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v1

    .line 621
    .local v1, "clientSupplementalData":Ljava/util/Vector;
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 622
    return-void
.end method

.method protected serverHandshake(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 28
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
    .param p2, "recordLayer"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v16

    .line 85
    .local v16, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v11, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    .line 87
    .local v11, "handshake":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    .line 91
    .local v8, "clientMessage":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v9

    .line 93
    .local v9, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 96
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 98
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processClientHello(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 106
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateServerHello(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)[B

    move-result-object v18

    .line 108
    .local v18, "serverHelloBody":[B
    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->maxFragmentLength:S

    move/from16 v23, v0

    if-ltz v23, :cond_0

    .line 110
    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->maxFragmentLength:S

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x8

    shl-int v14, v23, v24

    .line 111
    .local v14, "plainTextLimit":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    .line 114
    .end local v14    # "plainTextLimit":I
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 115
    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 116
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 123
    const/16 v23, 0xc

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 125
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 128
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    .line 130
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v20

    .line 131
    .local v20, "serverSupplementalData":Ljava/util/Vector;
    if-eqz v20, :cond_1

    .line 133
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v22

    .line 134
    .local v22, "supplementalDataBody":[B
    const/16 v23, 0x17

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 137
    .end local v22    # "supplementalDataBody":[B
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 140
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 142
    const/16 v17, 0x0

    .line 144
    .local v17, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 146
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 158
    :goto_0
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 160
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 163
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 165
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v5

    .line 166
    .local v5, "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    if-eqz v5, :cond_4

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/CertificateStatus;)[B

    move-result-object v6

    .line 169
    .local v6, "certificateStatusBody":[B
    const/16 v23, 0x16

    move/from16 v0, v23

    invoke-virtual {v11, v0, v6}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 173
    .end local v5    # "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    .end local v6    # "certificateStatusBody":[B
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v19

    .line 174
    .local v19, "serverKeyExchange":[B
    if-eqz v19, :cond_5

    .line 176
    const/16 v23, 0xc

    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 179
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 181
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 182
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 184
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 186
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/CertificateRequest;)[B

    move-result-object v4

    .line 187
    .local v4, "certificateRequestBody":[B
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v11, v0, v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 189
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 194
    .end local v4    # "certificateRequestBody":[B
    :cond_6
    const/16 v23, 0xe

    sget-object v24, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 196
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 198
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    .line 200
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v23

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 202
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processClientSupplementalData(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 203
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    .line 210
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v23, v0

    if-nez v23, :cond_c

    .line 212
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 238
    :goto_2
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 240
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 247
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 248
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 250
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v15

    .line 257
    .local v15, "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->expectCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 259
    const/16 v23, 0xf

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v7

    .line 260
    .local v7, "certificateVerifyBody":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[BLorg/spongycastle/crypto/tls/TlsHandshakeHash;)V

    .line 264
    .end local v7    # "certificateVerifyBody":[B
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    const-string v24, "client finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v10

    .line 266
    .local v10, "expectedClientVerifyData":[B
    const/16 v23, 0x14

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processFinished([B[B)V

    .line 268
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v12

    .line 271
    .local v12, "newSessionTicket":Lorg/spongycastle/crypto/tls/NewSessionTicket;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/NewSessionTicket;)[B

    move-result-object v13

    .line 272
    .local v13, "newSessionTicketBody":[B
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v11, v0, v13}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 276
    .end local v12    # "newSessionTicket":Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .end local v13    # "newSessionTicketBody":[B
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    const-string v24, "server finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v21

    .line 278
    .local v21, "serverVerifyData":[B
    const/16 v23, 0x14

    move/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 280
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 282
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyHandshakeComplete()V

    .line 284
    new-instance v23, Lorg/spongycastle/crypto/tls/DTLSTransport;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSTransport;-><init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    return-object v23

    .line 102
    .end local v10    # "expectedClientVerifyData":[B
    .end local v15    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v17    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v18    # "serverHelloBody":[B
    .end local v19    # "serverKeyExchange":[B
    .end local v20    # "serverSupplementalData":Ljava/util/Vector;
    .end local v21    # "serverVerifyData":[B
    :cond_9
    new-instance v23, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v24, 0xa

    invoke-direct/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v23

    .line 150
    .restart local v17    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .restart local v18    # "serverHelloBody":[B
    .restart local v20    # "serverSupplementalData":Ljava/util/Vector;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 152
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v17

    .line 153
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->generateCertificate(Lorg/spongycastle/crypto/tls/Certificate;)[B

    move-result-object v3

    .line 154
    .local v3, "certificateBody":[B
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v11, v0, v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    goto/16 :goto_0

    .line 207
    .end local v3    # "certificateBody":[B
    .restart local v19    # "serverKeyExchange":[B
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_1

    .line 216
    :cond_c
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v23

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 218
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->processClientCertificate(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;[B)V

    .line 219
    invoke-virtual {v11}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v8

    goto/16 :goto_2

    .line 223
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 231
    new-instance v23, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v24, 0xa

    invoke-direct/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v23

    .line 234
    :cond_e
    sget-object v23, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;Lorg/spongycastle/crypto/tls/Certificate;)V

    goto/16 :goto_2

    .line 244
    :cond_f
    new-instance v23, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v24, 0xa

    invoke-direct/range {v23 .. v24}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v23
.end method

.method public setVerifyRequests(Z)V
    .locals 0
    .param p1, "verifyRequests"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol;->verifyRequests:Z

    .line 33
    return-void
.end method
