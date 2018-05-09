.class public abstract Lorg/spongycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;
.source "TlsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    }
.end annotation


# static fields
.field protected static final CS_CERTIFICATE_REQUEST:S = 0x7s

.field protected static final CS_CERTIFICATE_STATUS:S = 0x5s

.field protected static final CS_CERTIFICATE_VERIFY:S = 0xcs

.field protected static final CS_CLIENT_CERTIFICATE:S = 0xas

.field protected static final CS_CLIENT_FINISHED:S = 0xds

.field protected static final CS_CLIENT_HELLO:S = 0x1s

.field protected static final CS_CLIENT_KEY_EXCHANGE:S = 0xbs

.field protected static final CS_CLIENT_SUPPLEMENTAL_DATA:S = 0x9s

.field protected static final CS_END:S = 0x10s

.field protected static final CS_SERVER_CERTIFICATE:S = 0x4s

.field protected static final CS_SERVER_FINISHED:S = 0xfs

.field protected static final CS_SERVER_HELLO:S = 0x2s

.field protected static final CS_SERVER_HELLO_DONE:S = 0x8s

.field protected static final CS_SERVER_KEY_EXCHANGE:S = 0x6s

.field protected static final CS_SERVER_SESSION_TICKET:S = 0xes

.field protected static final CS_SERVER_SUPPLEMENTAL_DATA:S = 0x3s

.field protected static final CS_START:S = 0x0s

.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"


# instance fields
.field private alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected allowCertificateStatus:Z

.field private volatile appDataReady:Z

.field private applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected clientExtensions:Ljava/util/Hashtable;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private expected_verify_data:[B

.field private volatile failedWithError:Z

.field private handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected receivedChangeCipherSpec:Z

.field protected recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

.field protected resumedSession:Z

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected secure_renegotiation:Z

.field protected securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

.field private volatile splitApplicationDataRecords:Z

.field private tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

.field protected tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0xff01

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    .line 24
    const/16 v0, 0x23

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 54
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 62
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 63
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 65
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 66
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    .line 67
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    .line 69
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    .line 71
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 72
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 73
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 74
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 76
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    .line 77
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    .line 78
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 79
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 81
    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->connection_state:S

    .line 82
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    .line 83
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    .line 84
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    .line 85
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 86
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/spongycastle/crypto/tls/RecordStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    .line 91
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    .line 92
    return-void
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p0, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 821
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 823
    :cond_0
    return-void
.end method

.method protected static createRandomBlock(Ljava/security/SecureRandom;)[B
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 829
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 830
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 837
    return-object v0
.end method

.method protected static createRenegotiationInfo([B)[B
    .locals 1
    .param p0, "renegotiated_connection"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "keyExchange"    # Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 849
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v0

    .line 853
    .local v0, "pre_master_secret":[B
    :try_start_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    if-eqz v0, :cond_0

    .line 864
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 867
    :cond_0
    return-void

    .line 862
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 864
    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_1
    throw v1
.end method

.method protected static getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "handshakeHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .param p2, "sslSender"    # [B

    .prologue
    const/4 v3, 0x0

    .line 874
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->forkPRFHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 876
    .local v1, "d":Lorg/spongycastle/crypto/Digest;
    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    array-length v2, p2

    invoke-interface {v1, p2, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 881
    :cond_0
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v0, v2, [B

    .line 882
    .local v0, "bs":[B
    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 883
    return-object v0
.end method

.method protected static getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 986
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    .line 988
    .local v0, "isTLSv12":Z
    sparse-switch p1, :sswitch_data_0

    .line 1083
    if-eqz v0, :cond_3

    .line 1087
    :cond_0
    :goto_0
    return v1

    .line 1034
    :sswitch_0
    if-nez v0, :cond_0

    .line 1038
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 1058
    :sswitch_1
    if-eqz v0, :cond_1

    move v1, v2

    .line 1060
    goto :goto_0

    .line 1062
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 1074
    :sswitch_2
    if-eqz v0, :cond_2

    move v1, v2

    .line 1076
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1078
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1087
    goto :goto_0

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
        0x9e -> :sswitch_0
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_1
        0xac -> :sswitch_0
        0xad -> :sswitch_1
        0xaf -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb9 -> :sswitch_2
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_1
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_1
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_1
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_1
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_1
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_1
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_1
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_1
        0xc038 -> :sswitch_2
        0xc03b -> :sswitch_2
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
    .end sparse-switch
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    .line 321
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v6, v4}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v2

    .line 322
    .local v2, "tmp":[B
    aget-byte v3, v2, v4

    int-to-short v1, v3

    .line 323
    .local v1, "level":S
    aget-byte v3, v2, v5

    int-to-short v0, v3

    .line 325
    .local v0, "description":S
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    .line 327
    if-ne v1, v6, :cond_0

    .line 333
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 335
    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    .line 336
    iput-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 338
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->safeClose()V

    .line 340
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_0
    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    .line 358
    :cond_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_0

    .line 361
    .end local v0    # "description":S
    .end local v1    # "level":S
    .end local v2    # "tmp":[B
    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method private processChangeCipherSpec([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 374
    add-int v2, p2, v0

    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    .line 376
    .local v1, "message":S
    if-eq v1, v3, :cond_0

    .line 378
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 381
    :cond_0
    iget-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-eqz v2, :cond_1

    .line 383
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 386
    :cond_1
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    .line 388
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/RecordStream;->receivedReadCipherSpec()V

    .line 390
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "message":S
    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 247
    :cond_0
    const/4 v4, 0x0

    .line 251
    .local v4, "read":Z
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    if-lt v6, v9, :cond_2

    .line 253
    new-array v0, v9, [B

    .line 254
    .local v0, "beginning":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v0, v7, v9, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 255
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 257
    .local v5, "type":S
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    .line 262
    .local v3, "len":I
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    add-int/lit8 v8, v3, 0x4

    if-lt v6, v8, :cond_2

    .line 267
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v3, v9}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v2

    .line 274
    .local v2, "buf":[B
    sparse-switch v5, :sswitch_data_0

    .line 288
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v0, v7, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 289
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v2, v7, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 296
    :sswitch_0
    invoke-virtual {p0, v5, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleHandshakeMessage(S[B)V

    .line 297
    const/4 v4, 0x1

    .line 301
    .end local v0    # "beginning":[B
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v5    # "type":S
    :cond_2
    if-nez v4, :cond_0

    .line 302
    return-void

    .line 280
    .restart local v0    # "beginning":[B
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "len":I
    .restart local v5    # "type":S
    :sswitch_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v6, :cond_1

    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 7
    .param p0, "input"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 891
    const/4 v4, 0x0

    .line 917
    :cond_0
    return-object v4

    .line 894
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 896
    .local v1, "extBytes":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 898
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 901
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 903
    .local v4, "extensions":Ljava/util/Hashtable;
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 905
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v5}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 906
    .local v3, "extension_type":Ljava/lang/Integer;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 911
    .local v2, "extension_data":[B
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 913
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 6
    .param p0, "input"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 925
    .local v2, "supp_data":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 927
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 929
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 931
    .local v4, "supplementalData":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 933
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 934
    .local v3, "supp_data_type":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 936
    .local v1, "data":[B
    new-instance v5, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v5, v3, v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 939
    .end local v1    # "data":[B
    .end local v3    # "supp_data_type":I
    :cond_0
    return-object v4
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 7
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 947
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 948
    .local v5, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 950
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 951
    .local v4, "key":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 952
    .local v3, "extension_type":I
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    .line 954
    .local v2, "extension_data":[B
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 955
    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 956
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 959
    .end local v2    # "extension_data":[B
    .end local v3    # "extension_type":I
    .end local v4    # "key":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 961
    .local v1, "extBytes":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 962
    return-void
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "supplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 969
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 971
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;

    .line 973
    .local v1, "entry":Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v4

    .line 974
    .local v4, "supp_data_type":I
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 975
    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 976
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v5

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 969
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    .end local v1    # "entry":Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
    .end local v4    # "supp_data_type":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 981
    .local v3, "supp_data":[B
    invoke-static {v3, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 982
    return-void
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 115
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->clear()V

    .line 119
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 121
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    .line 122
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    .line 123
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 124
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 126
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    .line 127
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    .line 128
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    .line 129
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    .line 130
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    .line 131
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    .line 775
    return-void
.end method

.method protected completeHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 141
    :goto_0
    :try_start_0
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 143
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeReadRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    throw v0

    .line 151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->finaliseHandshake()V

    .line 153
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    .line 158
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_2

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    .line 162
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/TlsInputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 163
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 179
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 182
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V

    .line 185
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    .line 191
    return-void

    .line 153
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected createVerifyData(Z)[B
    .locals 5
    .param p1, "isServer"    # Z

    .prologue
    .line 754
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    .line 756
    .local v0, "context":Lorg/spongycastle/crypto/tls/TlsContext;
    if-eqz p1, :cond_0

    .line 758
    const-string v1, "server finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-static {v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 762
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "client finished"

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    invoke-static {v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_0
.end method

.method protected failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 611
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 616
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    .line 618
    if-ne p1, v2, :cond_0

    .line 625
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    .line 627
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    .line 629
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 630
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->safeClose()V

    .line 631
    if-eq p1, v2, :cond_1

    .line 633
    return-void

    .line 637
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->flush()V

    .line 794
    return-void
.end method

.method protected abstract getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected abstract getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
.end method

.method protected handleChangeCipherSpecMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method protected handleClose(Z)V
    .locals 4
    .param p1, "user_canceled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    .line 782
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    .line 784
    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    .line 786
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Connection closed"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 788
    :cond_1
    return-void
.end method

.method protected abstract handleHandshakeMessage(S[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleWarningMessage(S)V
    .locals 0
    .param p1, "description"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method protected invalidateSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->clear()V

    .line 645
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSession;->invalidate()V

    .line 651
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 653
    :cond_1
    return-void
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    array-length v1, v1

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    .line 660
    .local v0, "verify_data":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 665
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 672
    :cond_0
    return-void
.end method

.method protected processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .param p1, "clientExtensions"    # Ljava/util/Hashtable;
    .param p2, "serverExtensions"    # Ljava/util/Hashtable;
    .param p3, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v0

    .line 800
    .local v0, "maxFragmentLength":S
    if-ltz v0, :cond_0

    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v1, :cond_0

    .line 802
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v1

    if-eq v0, v1, :cond_0

    .line 804
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 807
    :cond_0
    return v0
.end method

.method protected processRecord(S[BII)V
    .locals 2
    .param p1, "protocol"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 204
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processAlert()V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 214
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processApplicationData()V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processChangeCipherSpec([BII)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 225
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processHandshake()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
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

    .line 677
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 679
    new-array v0, v4, [B

    .line 680
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 681
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 683
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 684
    return-void
.end method

.method protected raiseWarning(SLjava/lang/String;)V
    .locals 2
    .param p1, "alertDescription"    # S
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 690
    return-void
.end method

.method protected readApplicationData([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 407
    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    .line 438
    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 417
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_0

    .line 419
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 436
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 437
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    move v0, p3

    .line 438
    goto :goto_0
.end method

.method protected safeReadRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    const/4 v3, 0x2

    .line 446
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->readRecord()Z

    move-result v1

    if-nez v1, :cond_3

    .line 450
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to read record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 459
    :cond_0
    throw v0

    .line 461
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    .line 465
    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 467
    :cond_1
    throw v0

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    .line 473
    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 475
    :cond_2
    throw v0

    .line 477
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void
.end method

.method protected safeWriteRecord(S[BII)V
    .locals 4
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x50

    const/4 v3, 0x2

    .line 484
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 510
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to write record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 492
    :cond_0
    throw v0

    .line 494
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    .line 498
    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 500
    :cond_1
    throw v0

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    .line 506
    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    .line 508
    :cond_2
    throw v0
.end method

.method protected sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5
    .param p1, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 697
    sget-object p1, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 700
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->getLength()I

    move-result v3

    if-nez v3, :cond_1

    .line 702
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    .line 703
    .local v0, "context":Lorg/spongycastle/crypto/tls/TlsContext;
    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v3

    if-nez v3, :cond_1

    .line 705
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 706
    .local v2, "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client didn\'t provide credentials"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "message":Ljava/lang/String;
    const/16 v3, 0x29

    invoke-virtual {p0, v3, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    .line 720
    .end local v0    # "context":Lorg/spongycastle/crypto/tls/TlsContext;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :goto_0
    return-void

    .line 715
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v3, 0xb

    invoke-direct {v1, p0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 717
    .local v1, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 719
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    goto :goto_0
.end method

.method protected sendChangeCipherSpecMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 725
    new-array v0, v1, [B

    aput-byte v1, v0, v3

    .line 726
    .local v0, "message":[B
    const/16 v1, 0x14

    array-length v2, v0

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 727
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->sentWriteCipherSpec()V

    .line 728
    return-void
.end method

.method protected sendFinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v1

    .line 735
    .local v1, "verify_data":[B
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v2, 0x14

    array-length v3, v1

    invoke-direct {v0, p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 737
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 739
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 740
    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .locals 2
    .param p1, "supplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 747
    .local v0, "message":Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    .line 749
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 750
    return-void
.end method

.method protected writeData([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x17

    .line 525
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_1

    .line 527
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v1, :cond_0

    .line 529
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 544
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    if-eqz v1, :cond_2

    .line 551
    const/4 v1, 0x1

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 552
    add-int/lit8 p2, p2, 0x1

    .line 553
    add-int/lit8 p3, p3, -0x1

    .line 556
    :cond_2
    if-lez p3, :cond_1

    .line 559
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 560
    .local v0, "toWrite":I
    invoke-virtual {p0, v2, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 561
    add-int/2addr p2, v0

    .line 562
    sub-int/2addr p3, v0

    .line 563
    goto :goto_0

    .line 565
    .end local v0    # "toWrite":I
    :cond_3
    return-void
.end method

.method protected writeHandshakeMessage([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    :goto_0
    if-lez p3, :cond_0

    .line 572
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 573
    .local v0, "toWrite":I
    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    .line 574
    add-int/2addr p2, v0

    .line 575
    sub-int/2addr p3, v0

    .line 576
    goto :goto_0

    .line 577
    .end local v0    # "toWrite":I
    :cond_0
    return-void
.end method
