.class public Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;
.super Ljava/lang/Object;
.source "DTLSServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServerHandshakeState"
.end annotation


# instance fields
.field allowCertificateStatus:Z

.field certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field clientCertificate:Lorg/spongycastle/crypto/tls/Certificate;

.field clientCertificateType:S

.field clientExtensions:Ljava/util/Hashtable;

.field expectSessionTicket:Z

.field keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field maxFragmentLength:S

.field offeredCipherSuites:[I

.field offeredCompressionMethods:[S

.field secure_renegotiation:Z

.field selectedCipherSuite:I

.field selectedCompressionMethod:S

.field server:Lorg/spongycastle/crypto/tls/TlsServer;

.field serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

.field serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field serverExtensions:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->server:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 632
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 636
    iput v1, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCipherSuite:I

    .line 637
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->selectedCompressionMethod:S

    .line 638
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->secure_renegotiation:Z

    .line 639
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->maxFragmentLength:S

    .line 640
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->allowCertificateStatus:Z

    .line 641
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->expectSessionTicket:Z

    .line 642
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    .line 643
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 644
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 645
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 646
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificateType:S

    .line 647
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSServerProtocol$ServerHandshakeState;->clientCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-void
.end method
