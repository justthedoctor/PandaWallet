.class public Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsClientProtocol.java"


# instance fields
.field protected authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field protected tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 48
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 19
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 21
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 23
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 24
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 26
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 27
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 54
    return-void
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    .prologue
    .line 35
    new-instance v1, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    .line 36
    .local v1, "tsg":Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 41
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 43
    return-object v0
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    .line 104
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 105
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 106
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 107
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 108
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 109
    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;)V
    .locals 6
    .param p1, "tlsClient"    # Lorg/spongycastle/crypto/tls/TlsClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 64
    if-nez p1, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'tlsClient\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    if-eqz v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "\'connect\' can only be called once"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 75
    new-instance v2, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 76
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v5, v2, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 77
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 79
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 80
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 81
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 83
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object v1

    .line 84
    .local v1, "sessionToResume":Lorg/spongycastle/crypto/tls/TlsSession;
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v0

    .line 87
    .local v0, "sessionParameters":Lorg/spongycastle/crypto/tls/SessionParameters;
    if-eqz v0, :cond_2

    .line 89
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 90
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 94
    .end local v0    # "sessionParameters":Lorg/spongycastle/crypto/tls/SessionParameters;
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    .line 95
    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 97
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    .line 98
    return-void
.end method

.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 15
    .param p1, "type"    # S
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 126
    .local v1, "buf":Ljava/io/ByteArrayInputStream;
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v12, :cond_3

    .line 128
    const/16 v12, 0x14

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 130
    :cond_0
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 133
    :cond_1
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 134
    const/16 v12, 0xf

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 137
    const/16 v12, 0xd

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 138
    const/16 v12, 0x10

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 559
    :cond_2
    :goto_0
    return-void

    .line 143
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 557
    :pswitch_0
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 147
    :pswitch_1
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_1

    .line 176
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 151
    :pswitch_2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 158
    :pswitch_3
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 160
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 163
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 165
    :cond_4
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 168
    :cond_5
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 170
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 171
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 179
    const/4 v12, 0x4

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    .line 184
    :pswitch_4
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_2

    .line 208
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 188
    :pswitch_5
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-nez v12, :cond_6

    .line 195
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 198
    :cond_6
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 200
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 204
    const/4 v12, 0x5

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    .line 214
    :pswitch_6
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_3

    .line 224
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 218
    :pswitch_7
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 219
    const/16 v12, 0xf

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 220
    const/16 v12, 0x10

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 230
    :pswitch_8
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_4

    .line 275
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 234
    :pswitch_9
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 235
    const/4 v12, 0x2

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 237
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v12, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v12, :cond_7

    .line 239
    const/4 v12, 0x1

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v13, v13, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v13, v13, 0x8

    shl-int v7, v12, v13

    .line 240
    .local v7, "plainTextLimit":I
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 243
    .end local v7    # "plainTextLimit":I
    :cond_7
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v13

    iget-object v14, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v14

    invoke-static {v13, v14}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v13

    iput v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 251
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v13, 0xc

    iput v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 253
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 255
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v12, :cond_8

    .line 257
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v13

    invoke-static {v13}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    iput-object v13, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 258
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v13

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v13

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    goto/16 :goto_0

    .line 264
    :cond_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 266
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v12, v12

    if-lez v12, :cond_2

    .line 268
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    goto/16 :goto_0

    .line 281
    :pswitch_a
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_5

    .line 289
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 285
    :pswitch_b
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 295
    :pswitch_c
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_6

    .line 416
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 299
    :pswitch_d
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 305
    :pswitch_e
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 306
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 314
    :pswitch_f
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 321
    :pswitch_10
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 323
    const/16 v12, 0x8

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 325
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v12

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 327
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v4

    .line 328
    .local v4, "clientSupplementalData":Ljava/util/Vector;
    if-eqz v4, :cond_9

    .line 330
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    .line 332
    :cond_9
    const/16 v12, 0x9

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v12, :cond_a

    .line 337
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 363
    :goto_1
    const/16 v12, 0xa

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 369
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    .line 370
    const/16 v12, 0xb

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 372
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v12, v13}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 373
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v13

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v13

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v14

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 375
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    .line 377
    .local v8, "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    if-eqz v3, :cond_d

    instance-of v12, v3, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v12, :cond_d

    move-object v11, v3

    .line 379
    check-cast v11, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 387
    .local v11, "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 389
    invoke-interface {v11}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v10

    .line 390
    .local v10, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez v10, :cond_c

    .line 392
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x50

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 341
    .end local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_a
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v3

    .line 343
    if-nez v3, :cond_b

    .line 345
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 353
    sget-object v12, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 357
    :cond_b
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12, v3}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 359
    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 395
    .restart local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .restart local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .restart local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_c
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v12

    invoke-interface {v8, v12}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v5

    .line 403
    .local v5, "hash":[B
    :goto_2
    invoke-interface {v11, v5}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v9

    .line 404
    .local v9, "signature":[B
    new-instance v2, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v2, v10, v9}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 405
    .local v2, "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V

    .line 407
    const/16 v12, 0xc

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 410
    .end local v2    # "certificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    .end local v5    # "hash":[B
    .end local v9    # "signature":[B
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_d
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    .line 411
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 412
    const/16 v12, 0xd

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 399
    .restart local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_e
    const/4 v10, 0x0

    .line 400
    .restart local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v8, v13}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    .restart local v5    # "hash":[B
    goto :goto_2

    .line 422
    .end local v3    # "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    .end local v4    # "clientSupplementalData":Ljava/util/Vector;
    .end local v5    # "hash":[B
    .end local v8    # "prepareFinishHash":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .end local v10    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v11    # "signerCredentials":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :pswitch_11
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_7

    .line 446
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 426
    :pswitch_12
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 432
    :pswitch_13
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 433
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 440
    :pswitch_14
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 442
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 449
    const/4 v12, 0x6

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 454
    :pswitch_15
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_8

    .line 491
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 460
    :pswitch_16
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 466
    :pswitch_17
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-nez v12, :cond_f

    .line 472
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 475
    :cond_f
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12, v1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 477
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 479
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v12, v13}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 485
    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 494
    const/4 v12, 0x7

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    .line 499
    :pswitch_18
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v12, :pswitch_data_9

    .line 523
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 503
    :pswitch_19
    iget-boolean v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez v12, :cond_10

    .line 509
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 516
    :cond_10
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 518
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    .line 519
    const/16 v12, 0xe

    iput-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 528
    :pswitch_1a
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 536
    iget-short v12, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/16 v13, 0x10

    if-ne v12, v13, :cond_2

    .line 542
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 544
    new-instance v12, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v12

    .line 547
    :cond_11
    const-string v6, "Renegotiation not supported"

    .line 548
    .local v6, "message":Ljava/lang/String;
    const/16 v12, 0x64

    invoke-virtual {p0, v12, v6}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->raiseWarning(SLjava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_15
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_a
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 184
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch

    .line 214
    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_7
    .end packed-switch

    .line 230
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    .line 281
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_b
    .end packed-switch

    .line 295
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 422
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch

    .line 454
    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 499
    :pswitch_data_9
    .packed-switch 0xd
        :pswitch_19
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .param p1, "serverSupplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 565
    const/4 v0, 0x3

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 567
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 568
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 569
    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    .line 576
    .local v0, "newSessionTicket":Lorg/spongycastle/crypto/tls/NewSessionTicket;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 578
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 579
    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 11
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 585
    .local v6, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 587
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 591
    :cond_0
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 593
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 596
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 597
    .local v0, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v6, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 599
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 602
    :cond_2
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v9, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 603
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 604
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9, v6}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 609
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v10, 0x20

    invoke-static {v10, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v10

    iput-object v10, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 611
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 612
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v9, v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 614
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 617
    :cond_3
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-interface {v9, v10}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 619
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v9, v9

    if-lez v9, :cond_5

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v10}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v10

    invoke-static {v9, v10}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    .line 626
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v4

    .line 627
    .local v4, "selectedCipherSuite":I
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v9, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v4, :cond_4

    const/16 v9, 0xff

    if-ne v4, v9, :cond_6

    .line 631
    :cond_4
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 619
    .end local v4    # "selectedCipherSuite":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 634
    .restart local v4    # "selectedCipherSuite":I
    :cond_6
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9, v4}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 640
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 641
    .local v5, "selectedCompressionMethod":S
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v9, v5}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v9

    if-nez v9, :cond_7

    .line 643
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 646
    :cond_7
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 656
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 665
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v9, :cond_a

    .line 667
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 668
    .local v1, "e":Ljava/util/Enumeration;
    :cond_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 670
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 679
    .local v2, "extType":Ljava/lang/Integer;
    sget-object v9, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 689
    iget-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v9, :cond_9

    .line 704
    :cond_9
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v9, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v9

    if-nez v9, :cond_8

    .line 706
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x6e

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 719
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "extType":Ljava/lang/Integer;
    :cond_a
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    .line 720
    .local v3, "renegExtData":[B
    if-eqz v3, :cond_b

    .line 728
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    .line 730
    sget-object v9, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v9

    invoke-static {v3, v9}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_b

    .line 732
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x28

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 738
    :cond_b
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {v9, v10}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 740
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    .local v7, "sessionClientExtensions":Ljava/util/Hashtable;
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 741
    .local v8, "sessionServerExtensions":Ljava/util/Hashtable;
    iget-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v9, :cond_e

    .line 743
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v9

    if-ne v4, v9, :cond_c

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v9

    if-eq v5, v9, :cond_d

    .line 746
    :cond_c
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2f

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 749
    :cond_d
    const/4 v7, 0x0

    .line 750
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v8

    .line 753
    :cond_e
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v4, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 754
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v5, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 756
    if-eqz v8, :cond_f

    .line 758
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v10, 0x2f

    invoke-virtual {p0, v7, v8, v10}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v10

    iput-short v10, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 761
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v10

    iput-boolean v10, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 767
    iget-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v9, :cond_11

    sget-object v9, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    const/16 v10, 0x2f

    invoke-static {v8, v9, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 771
    iget-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v9, :cond_12

    sget-object v9, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    const/16 v10, 0x2f

    invoke-static {v8, v9, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    .line 776
    :cond_f
    if-eqz v7, :cond_10

    .line 778
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9, v8}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 780
    :cond_10
    return-void

    .line 767
    :cond_11
    const/4 v9, 0x0

    goto :goto_1

    .line 771
    :cond_12
    const/4 v9, 0x0

    goto :goto_2
.end method

.method protected sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .param p1, "certificateVerify"    # Lorg/spongycastle/crypto/tls/DigitallySigned;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 787
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 789
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 790
    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 795
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 797
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 798
    .local v0, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 800
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 803
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 809
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 810
    .local v5, "session_id":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v8, :cond_2

    .line 812
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v5

    .line 813
    if-eqz v5, :cond_1

    array-length v8, v5

    const/16 v9, 0x20

    if-le v8, v9, :cond_2

    .line 815
    :cond_1
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 819
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    .line 821
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    .line 823
    array-length v8, v5

    if-lez v8, :cond_4

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v8, :cond_4

    .line 825
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v9

    invoke-static {v8, v9}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v9

    invoke-static {v8, v9}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v8

    if-nez v8, :cond_4

    .line 828
    :cond_3
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 832
    :cond_4
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 834
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    invoke-direct {v1, p0, v6}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 836
    .local v1, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 838
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 840
    invoke-static {v5, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 849
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v9, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v4

    .line 850
    .local v4, "renegExtData":[B
    if-nez v4, :cond_7

    move v2, v6

    .line 852
    .local v2, "noRenegExt":Z
    :goto_0
    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v8, v10}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v8

    if-nez v8, :cond_8

    move v3, v6

    .line 854
    .local v3, "noSCSV":Z
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 859
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v6, v10}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    .line 862
    :cond_5
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v6, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 865
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v6, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 867
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v6, :cond_6

    .line 869
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1, v6}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 872
    :cond_6
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 873
    return-void

    .end local v2    # "noRenegExt":Z
    .end local v3    # "noSCSV":Z
    :cond_7
    move v2, v7

    .line 850
    goto :goto_0

    .restart local v2    # "noRenegExt":Z
    :cond_8
    move v3, v7

    .line 852
    goto :goto_1
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 880
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 882
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 883
    return-void
.end method
