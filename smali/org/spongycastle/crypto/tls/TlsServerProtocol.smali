.class public Lorg/spongycastle/crypto/tls/TlsServerProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsServerProtocol.java"


# instance fields
.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected clientCertificateType:S

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field protected tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

.field protected tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 18
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 19
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 21
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 22
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 23
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 25
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 26
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Lorg/spongycastle/crypto/tls/TlsServer;)V
    .locals 4
    .param p1, "tlsServer"    # Lorg/spongycastle/crypto/tls/TlsServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'tlsServer\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'accept\' can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v3, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 57
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->init(Lorg/spongycastle/crypto/tls/TlsServerContext;)V

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 63
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->completeHandshake()V

    .line 64
    return-void
.end method

.method protected cleanupHandshake()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    .line 70
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 71
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 72
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 73
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 74
    return-void
.end method

.method protected expectCertificateVerifyMessage()Z
    .locals 1

    .prologue
    .line 758
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

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

.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 8
    .param p1, "type"    # S
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 89
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 91
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    sparse-switch p1, :sswitch_data_0

    .line 342
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 95
    :sswitch_0
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_0

    .line 179
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 99
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 100
    const/4 v5, 0x1

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 102
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    .line 103
    const/4 v5, 0x2

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 105
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v4

    .line 106
    .local v4, "serverSupplementalData":Ljava/util/Vector;
    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    .line 110
    :cond_0
    const/4 v5, 0x3

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 112
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 113
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 115
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 117
    const/4 v2, 0x0

    .line 119
    .local v2, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-nez v5, :cond_6

    .line 121
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 130
    :goto_0
    const/4 v5, 0x4

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 133
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 138
    :cond_2
    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v1

    .line 141
    .local v1, "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V

    .line 147
    .end local v1    # "certificateStatus":Lorg/spongycastle/crypto/tls/CertificateStatus;
    :cond_3
    const/4 v5, 0x5

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 149
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v3

    .line 150
    .local v3, "serverKeyExchange":[B
    if-eqz v3, :cond_4

    .line 152
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    .line 154
    :cond_4
    const/4 v5, 0x6

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 156
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v5, :cond_5

    .line 158
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 159
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v5, :cond_5

    .line 161
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 163
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 165
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 169
    :cond_5
    const/4 v5, 0x7

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 171
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    .line 172
    const/16 v5, 0x8

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 174
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 344
    .end local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v3    # "serverKeyExchange":[B
    .end local v4    # "serverSupplementalData":Ljava/util/Vector;
    :goto_1
    return-void

    .line 125
    .restart local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .restart local v4    # "serverSupplementalData":Ljava/util/Vector;
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 127
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v2

    .line 128
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 185
    .end local v2    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    .end local v4    # "serverSupplementalData":Ljava/util/Vector;
    :sswitch_1
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_1

    .line 194
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 189
    :pswitch_1
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 190
    const/16 v5, 0x9

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 200
    :sswitch_2
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_2

    .line 218
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 204
    :pswitch_2
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 209
    :pswitch_3
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v5, :cond_7

    .line 211
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 213
    :cond_7
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    .line 214
    iput-short v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 224
    :sswitch_3
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_3

    .line 270
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 228
    :pswitch_4
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 233
    :pswitch_5
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v5, :cond_9

    .line 235
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 265
    :cond_8
    :goto_2
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    .line 266
    const/16 v5, 0xb

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_1

    .line 239
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 247
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 249
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 251
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-nez v5, :cond_8

    .line 253
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 258
    :cond_b
    sget-object v5, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_2

    .line 276
    :sswitch_4
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_4

    .line 296
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 285
    :pswitch_7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v5

    if-nez v5, :cond_c

    .line 287
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 290
    :cond_c
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    .line 291
    const/16 v5, 0xc

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_1

    .line 302
    :sswitch_5
    iget-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v5, :pswitch_data_5

    .line 330
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 306
    :pswitch_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 308
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 314
    :cond_d
    :pswitch_9
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 315
    const/16 v5, 0xd

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 317
    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz v5, :cond_e

    .line 319
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 320
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    .line 322
    :cond_e
    const/16 v5, 0xe

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 324
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendFinishedMessage()V

    .line 325
    const/16 v5, 0xf

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 326
    const/16 v5, 0x10

    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_1

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_3
        0x14 -> :sswitch_5
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 224
    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 276
    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_7
    .end packed-switch

    .line 302
    :pswitch_data_5
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected handleWarningMessage(S)V
    .locals 1
    .param p1, "description"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 365
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_1

    .line 380
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 383
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 385
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 412
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 413
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 401
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 420
    .local v0, "clientCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 422
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 423
    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v1

    .line 430
    .local v1, "clientCertificateVerify":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    .line 438
    .local v0, "certificateVerifyHash":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v6

    .line 439
    .local v6, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 440
    .local v3, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 442
    .local v4, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    iget-short v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v5

    .line 443
    .local v5, "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 444
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v8

    invoke-interface {v5, v7, v8, v4, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-void

    .line 447
    .end local v0    # "certificateVerifyHash":[B
    .end local v3    # "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v4    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .end local v5    # "tlsSigner":Lorg/spongycastle/crypto/tls/TlsSigner;
    .end local v6    # "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x33

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v7, 0x2f

    const/4 v8, 0x1

    .line 456
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 457
    .local v2, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 462
    :cond_0
    invoke-static {v9, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    .line 468
    .local v1, "client_random":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 469
    .local v5, "sessionID":[B
    array-length v6, v5

    if-le v6, v9, :cond_1

    .line 471
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 479
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 480
    .local v0, "cipher_suites_length":I
    const/4 v6, 0x2

    if-lt v0, v6, :cond_2

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_3

    .line 482
    :cond_2
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 484
    :cond_3
    div-int/lit8 v6, v0, 0x2

    invoke-static {v6, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    .line 490
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v3

    .line 491
    .local v3, "compression_methods_length":I
    if-ge v3, v8, :cond_4

    .line 493
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 495
    :cond_4
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    .line 502
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 504
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 506
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v6, v2}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 508
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-object v1, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 510
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 511
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 528
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v7, 0xff

    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 530
    iput-boolean v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 537
    :cond_5
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v7, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v4

    .line 538
    .local v4, "renegExtData":[B
    if-eqz v4, :cond_6

    .line 545
    iput-boolean v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 547
    sget-object v6, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 549
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 554
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    .line 556
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v6, :cond_7

    .line 558
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    .line 560
    :cond_7
    return-void
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 567
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 569
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 570
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 572
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 574
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    .line 578
    :cond_0
    return-void
.end method

.method protected sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 585
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 587
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 588
    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V
    .locals 2
    .param p1, "certificateStatus"    # Lorg/spongycastle/crypto/tls/CertificateStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 595
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 597
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 598
    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 3
    .param p1, "newSessionTicket"    # Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 605
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 608
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 610
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 612
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 613
    return-void
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 739
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 740
    .local v0, "message":[B
    const/16 v1, 0xe

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 741
    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 743
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeHandshakeMessage([BII)V

    .line 744
    return-void
.end method

.method protected sendServerHelloMessage()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v12, 0x50

    .line 618
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v7, 0x2

    invoke-direct {v0, p0, v7}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 620
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 621
    .local v6, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 623
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 626
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 627
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 628
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v8}, Lorg/spongycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 629
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 631
    invoke-static {v6, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 633
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v0, v7}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 639
    sget-object v7, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v7, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 641
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v4

    .line 642
    .local v4, "selectedCipherSuite":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v7, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    const/16 v7, 0xff

    if-ne v4, v7, :cond_2

    .line 646
    :cond_1
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 648
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v4, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 650
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v5

    .line 651
    .local v5, "selectedCompressionMethod":S
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {v7, v5}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v7

    if-nez v7, :cond_3

    .line 653
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v7, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 655
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v5, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 657
    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 658
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 660
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 665
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    if-eqz v7, :cond_4

    .line 667
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v7, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v3

    .line 668
    .local v3, "renegExtData":[B
    if-nez v3, :cond_8

    move v1, v8

    .line 670
    .local v1, "noRenegExt":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 684
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 685
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v11, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v11}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .end local v1    # "noRenegExt":Z
    .end local v3    # "renegExtData":[B
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_6

    .line 697
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, v10, v11, v12}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v10

    iput-short v10, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 700
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v10}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v10

    iput-boolean v10, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 706
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v7, v10, v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 710
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v10, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v7, v10, v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v7

    if-eqz v7, :cond_5

    move v9, v8

    :cond_5
    iput-boolean v9, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    .line 714
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 717
    :cond_6
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v7, :cond_7

    .line 719
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v7, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v7, v7, 0x8

    shl-int v2, v8, v7

    .line 720
    .local v2, "plainTextLimit":I
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 723
    .end local v2    # "plainTextLimit":I
    :cond_7
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v9

    invoke-static {v8, v9}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v8

    iput v8, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 729
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v8, 0xc

    iput v8, v7, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 731
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 733
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 734
    return-void

    .restart local v3    # "renegExtData":[B
    :cond_8
    move v1, v9

    .line 668
    goto/16 :goto_0

    .end local v3    # "renegExtData":[B
    :cond_9
    move v7, v9

    .line 706
    goto :goto_1
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 3
    .param p1, "serverKeyExchange"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xc

    array-length v2, p1

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 751
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 753
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 754
    return-void
.end method
