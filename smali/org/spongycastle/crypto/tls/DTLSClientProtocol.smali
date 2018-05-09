.class public Lorg/spongycastle/crypto/tls/DTLSClientProtocol;
.super Lorg/spongycastle/crypto/tls/DTLSProtocol;
.source "DTLSClientProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    .line 19
    return-void
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .locals 8
    .param p0, "clientHelloBody"    # [B
    .param p1, "cookie"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 774
    const/16 v4, 0x22

    .line 775
    .local v4, "sessionIDPos":I
    invoke-static {p0, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    .line 777
    .local v3, "sessionIDLength":I
    add-int/lit8 v0, v3, 0x23

    .line 778
    .local v0, "cookieLengthPos":I
    add-int/lit8 v1, v0, 0x1

    .line 780
    .local v1, "cookiePos":I
    array-length v5, p0

    array-length v6, p1

    add-int/2addr v5, v6

    new-array v2, v5, [B

    .line 781
    .local v2, "patched":[B
    invoke-static {p0, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    array-length v5, p1

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 783
    array-length v5, p1

    invoke-static {v5, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    .line 784
    array-length v5, p1

    invoke-static {p1, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    array-length v5, p1

    add-int/2addr v5, v1

    array-length v6, p0

    sub-int/2addr v6, v1

    invoke-static {p0, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    return-object v2
.end method


# virtual methods
.method protected clientHandshake(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 33
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "recordLayer"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v21

    .line 80
    .local v21, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v14, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    .line 82
    .local v14, "handshake":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateClientHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/TlsClient;)[B

    move-result-object v7

    .line 83
    .local v7, "clientHelloBody":[B
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0, v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 85
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 87
    .local v23, "serverMessage":Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 89
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->resetDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v19

    .line 90
    .local v19, "recordLayerVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v11

    .line 98
    .local v11, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 100
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0x2f

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 103
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processHelloVerifyRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v12

    .line 104
    .local v12, "cookie":[B
    invoke-static {v7, v12}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v16

    .line 106
    .local v16, "patched":[B
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resetHandshakeMessagesDigest()V

    .line 107
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 109
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 110
    goto :goto_0

    .line 112
    .end local v11    # "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .end local v12    # "cookie":[B
    .end local v16    # "patched":[B
    .end local v19    # "recordLayerVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 114
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 116
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 123
    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    move/from16 v28, v0

    if-ltz v28, :cond_2

    .line 125
    const/16 v28, 0x1

    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x8

    shl-int v17, v28, v29

    .line 126
    .local v17, "plainTextLimit":I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    .line 129
    .end local v17    # "plainTextLimit":I
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 130
    move-object/from16 v0, p1

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 131
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 137
    const/16 v28, 0xc

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 139
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    .line 141
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v20, 0x1

    .line 144
    .local v20, "resumedSession":Z
    :goto_1
    if-eqz v20, :cond_7

    .line 146
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCompressionAlgorithm()S

    move-result v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    .line 149
    :cond_3
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0x2f

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 120
    .end local v20    # "resumedSession":Z
    :cond_4
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0xa

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 141
    :cond_5
    const/16 v20, 0x0

    goto :goto_1

    .line 152
    .restart local v20    # "resumedSession":Z
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 153
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    const-string v29, "server finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v30, v0

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v13

    .line 158
    .local v13, "expectedServerVerifyData":[B
    const/16 v28, 0x14

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    const-string v29, "client finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v30, v0

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v10

    .line 163
    .local v10, "clientVerifyData":[B
    const/16 v28, 0x14

    move/from16 v0, v28

    invoke-virtual {v14, v0, v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 165
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 167
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V

    .line 169
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    .line 171
    new-instance v28, Lorg/spongycastle/crypto/tls/DTLSTransport;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSTransport;-><init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    .line 389
    :goto_2
    return-object v28

    .line 174
    .end local v10    # "clientVerifyData":[B
    .end local v13    # "expectedServerVerifyData":[B
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->invalidateSession(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V

    .line 176
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_8

    .line 178
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-direct/range {v28 .. v30}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 181
    :cond_8
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 183
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0x17

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 185
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 186
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 193
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 194
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 196
    const/16 v22, 0x0

    .line 198
    .local v22, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 200
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerCertificate(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v22

    .line 201
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 210
    :goto_4
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 212
    :cond_9
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 215
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0x16

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 217
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 218
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 225
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 227
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 228
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 236
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 238
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 244
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 247
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 254
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0xe

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 256
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 258
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0x32

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 190
    .end local v22    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_3

    .line 206
    .restart local v22    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto/16 :goto_4

    .line 233
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    goto :goto_5

    .line 263
    :cond_10
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0xa

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 266
    :cond_11
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v9

    .line 269
    .local v9, "clientSupplementalData":Ljava/util/Vector;
    if-eqz v9, :cond_12

    .line 271
    invoke-static {v9}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v27

    .line 272
    .local v27, "supplementalDataBody":[B
    const/16 v28, 0x17

    move/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 275
    .end local v27    # "supplementalDataBody":[B
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v28, v0

    if-eqz v28, :cond_15

    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 285
    const/4 v6, 0x0

    .line 286
    .local v6, "clientCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 288
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v6

    .line 290
    :cond_13
    if-nez v6, :cond_14

    .line 292
    sget-object v6, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 295
    :cond_14
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateCertificate(Lorg/spongycastle/crypto/tls/Certificate;)[B

    move-result-object v3

    .line 296
    .local v3, "certificateBody":[B
    const/16 v28, 0xb

    move/from16 v0, v28

    invoke-virtual {v14, v0, v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 299
    .end local v3    # "certificateBody":[B
    .end local v6    # "clientCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 301
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 308
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v8

    .line 309
    .local v8, "clientKeyExchangeBody":[B
    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-virtual {v14, v0, v8}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 311
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 314
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v18

    .line 316
    .local v18, "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 318
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-object/from16 v26, v0

    check-cast v26, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 326
    .local v26, "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 328
    invoke-interface/range {v26 .. v26}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v25

    .line 329
    .local v25, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez v25, :cond_17

    .line 331
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0x50

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28

    .line 305
    .end local v8    # "clientKeyExchangeBody":[B
    .end local v18    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v25    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v26    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_6

    .line 334
    .restart local v8    # "clientKeyExchangeBody":[B
    .restart local v18    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .restart local v25    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .restart local v26    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_17
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v15

    .line 342
    .local v15, "hash":[B
    :goto_7
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v24

    .line 343
    .local v24, "signature":[B
    new-instance v4, Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 344
    .local v4, "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DigitallySigned;)[B

    move-result-object v5

    .line 345
    .local v5, "certificateVerifyBody":[B
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v14, v0, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 349
    .end local v4    # "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    .end local v5    # "certificateVerifyBody":[B
    .end local v15    # "hash":[B
    .end local v24    # "signature":[B
    .end local v25    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v26    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    const-string v29, "client finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v30, v0

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v10

    .line 351
    .restart local v10    # "clientVerifyData":[B
    const/16 v28, 0x14

    move/from16 v0, v28

    invoke-virtual {v14, v0, v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 353
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 355
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v23

    .line 356
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 358
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 367
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    const-string v29, "server finished"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v30, v0

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v13

    .line 369
    .restart local v13    # "expectedServerVerifyData":[B
    const/16 v28, 0x14

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    .line 371
    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 373
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a

    .line 375
    new-instance v28, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    move-object/from16 v0, v21

    iget v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 382
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsUtils;->importSession([BLorg/spongycastle/crypto/tls/SessionParameters;)Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 384
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V

    .line 387
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    .line 389
    new-instance v28, Lorg/spongycastle/crypto/tls/DTLSTransport;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/DTLSTransport;-><init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    goto/16 :goto_2

    .line 338
    .end local v10    # "clientVerifyData":[B
    .end local v13    # "expectedServerVerifyData":[B
    .restart local v26    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_1b
    const/16 v25, 0x0

    .line 339
    .restart local v25    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v15

    .restart local v15    # "hash":[B
    goto/16 :goto_7

    .line 362
    .end local v15    # "hash":[B
    .end local v25    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v26    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .restart local v10    # "clientVerifyData":[B
    :cond_1c
    new-instance v28, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v29, 0xa

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v28
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;Lorg/spongycastle/crypto/tls/DatagramTransport;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 10
    .param p1, "client"    # Lorg/spongycastle/crypto/tls/TlsClient;
    .param p2, "transport"    # Lorg/spongycastle/crypto/tls/DatagramTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x50

    .line 24
    if-nez p1, :cond_0

    .line 26
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'client\' cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 28
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'transport\' cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 33
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    .line 34
    .local v3, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    const/4 v7, 0x1

    iput v7, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 35
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v7

    iput-object v7, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 37
    new-instance v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v6}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    .line 38
    .local v6, "state":Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    iput-object p1, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 39
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v7, v8, v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v7, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 40
    iget-object v7, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1, v7}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 42
    new-instance v2, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    iget-object v7, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    const/16 v8, 0x16

    invoke-direct {v2, p2, v7, p1, v8}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/spongycastle/crypto/tls/DatagramTransport;Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsPeer;S)V

    .line 44
    .local v2, "recordLayer":Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
    iget-object v7, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object v5

    .line 45
    .local v5, "sessionToResume":Lorg/spongycastle/crypto/tls/TlsSession;
    if-eqz v5, :cond_2

    .line 47
    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v4

    .line 48
    .local v4, "sessionParameters":Lorg/spongycastle/crypto/tls/SessionParameters;
    if-eqz v4, :cond_2

    .line 50
    iput-object v5, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 51
    iput-object v4, v6, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 57
    .end local v4    # "sessionParameters":Lorg/spongycastle/crypto/tls/SessionParameters;
    :cond_2
    :try_start_0
    invoke-virtual {p0, v6, v2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->clientHandshake(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    return-object v7

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v7

    invoke-virtual {v2, v7}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 62
    throw v1

    .line 64
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v2, v9}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 67
    throw v0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v9}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 72
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7
.end method

.method protected generateCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DigitallySigned;)[B
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "certificateVerify"    # Lorg/spongycastle/crypto/tls/DigitallySigned;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 396
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected generateClientHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/TlsClient;)[B
    .locals 11
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "client"    # Lorg/spongycastle/crypto/tls/TlsClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xff

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 403
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 406
    .local v1, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v8

    if-nez v8, :cond_0

    .line 408
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 411
    :cond_0
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v8, v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 412
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 414
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 417
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 418
    .local v5, "session_id":[B
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v8, :cond_2

    .line 420
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v5

    .line 421
    if-eqz v5, :cond_1

    array-length v8, v5

    const/16 v9, 0x20

    if-le v8, v9, :cond_2

    .line 423
    :cond_1
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 426
    :cond_2
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 429
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 434
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 437
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 446
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v9, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v4

    .line 447
    .local v4, "renegExtData":[B
    if-nez v4, :cond_5

    move v2, v6

    .line 449
    .local v2, "noRenegExt":Z
    :goto_0
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v8, v10}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v8

    if-nez v8, :cond_6

    move v3, v6

    .line 451
    .local v3, "noSCSV":Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 454
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v8, v10}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object v8

    iput-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 457
    :cond_3
    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 463
    new-array v6, v6, [S

    aput-short v7, v6, v7

    iput-object v6, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    .line 465
    iget-object v6, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v6, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 468
    iget-object v6, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v6, :cond_4

    .line 470
    iget-object v6, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 473
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .end local v2    # "noRenegExt":Z
    .end local v3    # "noSCSV":Z
    :cond_5
    move v2, v7

    .line 447
    goto :goto_0

    .restart local v2    # "noRenegExt":Z
    :cond_6
    move v3, v7

    .line 449
    goto :goto_1
.end method

.method protected generateClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 480
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected invalidateSession(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->clear()V

    .line 489
    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 492
    :cond_0
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSession;->invalidate()V

    .line 495
    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 497
    :cond_1
    return-void
.end method

.method protected processCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-nez v1, :cond_0

    .line 508
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 511
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 513
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 515
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 517
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 518
    return-void
.end method

.method protected processCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-boolean v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    if-nez v1, :cond_0

    .line 530
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 533
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 535
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 537
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 540
    return-void
.end method

.method protected processHelloVerifyRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .locals 6
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 545
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 547
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 548
    .local v2, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 550
    .local v1, "cookie":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 554
    iget-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 563
    :cond_0
    sget-object v3, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v3, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_1

    array-length v3, v1

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 565
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 568
    :cond_1
    return-object v1
.end method

.method protected processNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 576
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v1

    .line 578
    .local v1, "newSessionTicket":Lorg/spongycastle/crypto/tls/NewSessionTicket;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 580
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 581
    return-void
.end method

.method protected processServerCertificate(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/spongycastle/crypto/tls/Certificate;
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 588
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v1

    .line 590
    .local v1, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 592
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 593
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v2

    iput-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 594
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 596
    return-object v1
.end method

.method protected processServerHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 10
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v9, 0x2f

    .line 602
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v4

    .line 604
    .local v4, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 606
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 607
    .local v6, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {p0, p1, v6}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 609
    invoke-static {v8, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v7

    iput-object v7, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 611
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v7

    iput-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    .line 612
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v7, v7

    if-le v7, v8, :cond_0

    .line 614
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 616
    :cond_0
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 618
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    .line 619
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v7, v8}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    if-eqz v7, :cond_1

    iget v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    .line 623
    :cond_1
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 626
    :cond_2
    iget v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v7, v9}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->validateSelectedCipherSuite(IS)V

    .line 628
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 630
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v7

    iput-short v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    .line 631
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    iget-short v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-static {v7, v8}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v7

    if-nez v7, :cond_3

    .line 633
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 635
    :cond_3
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-short v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 653
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v5

    .line 660
    .local v5, "serverExtensions":Ljava/util/Hashtable;
    if-eqz v5, :cond_7

    .line 662
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 663
    .local v1, "e":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 665
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 675
    .local v2, "extType":Ljava/lang/Integer;
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v7

    if-nez v7, :cond_4

    .line 686
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x6e

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 698
    .end local v2    # "extType":Ljava/lang/Integer;
    :cond_5
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v3, v7

    check-cast v3, [B

    .line 699
    .local v3, "renegExtData":[B
    if-eqz v3, :cond_6

    .line 707
    const/4 v7, 0x1

    iput-boolean v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    .line 709
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v7

    invoke-static {v3, v7}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_6

    .line 712
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x28

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 717
    :cond_6
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7, v5, v9}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->evaluateMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v7

    iput-short v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    .line 720
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v7

    iput-boolean v7, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 722
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v5, v7, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    iput-boolean v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 725
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v5, v7, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    iput-boolean v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    .line 729
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "renegExtData":[B
    :cond_7
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v8, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 731
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_8

    .line 733
    iget-object v7, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v7, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 735
    :cond_8
    return-void
.end method

.method protected processServerKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 742
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 744
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 745
    return-void
.end method

.method protected processServerSupplementalData(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 3
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 751
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v1

    .line 752
    .local v1, "serverSupplementalData":Ljava/util/Vector;
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 753
    return-void
.end method

.method protected reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 4
    .param p1, "state"    # Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    .param p2, "server_version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 759
    .local v0, "clientContext":Lorg/spongycastle/crypto/tls/TlsClientContextImpl;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 760
    .local v1, "currentServerVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    if-nez v1, :cond_1

    .line 762
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 763
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2, p2}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 769
    :cond_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {v1, p2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 767
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method
