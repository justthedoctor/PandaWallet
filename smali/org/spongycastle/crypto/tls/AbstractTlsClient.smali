.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.source "AbstractTlsClient.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected clientECPointFormats:[S

.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected namedCurves:[I

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverECPointFormats:[S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x2

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "clientExtensions":Ljava/util/Hashtable;
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v6}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 77
    .local v1, "clientVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    const/4 v6, 0x5

    new-array v2, v6, [S

    fill-array-data v2, :array_0

    .line 85
    .local v2, "hashAlgorithms":[S
    new-array v5, v7, [S

    const/4 v6, 0x0

    aput-short v7, v5, v6

    .line 87
    .local v5, "signatureAlgorithms":[S
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    .line 88
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 90
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 92
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v7, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    aget-short v8, v2, v3

    aget-short v9, v5, v4

    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "j":I
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v7, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v7, v10, v10}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 105
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    .line 108
    .end local v2    # "hashAlgorithms":[S
    .end local v3    # "i":I
    .end local v5    # "signatureAlgorithms":[S
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getCipherSuites()[I

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    new-array v6, v10, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    .line 121
    const/4 v6, 0x3

    new-array v6, v6, [S

    fill-array-data v6, :array_2

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    .line 124
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 126
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->addSupportedEllipticCurvesExtension(Ljava/util/Hashtable;[I)V

    .line 127
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    .line 130
    :cond_3
    return-object v0

    .line 81
    :array_0
    .array-data 2
        0x6s
        0x5s
        0x4s
        0x3s
        0x2s
    .end array-data

    .line 120
    nop

    :array_1
    .array-data 4
        0x17
        0x18
    .end array-data

    .line 121
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public getClientHelloRecordLayerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getClientSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 219
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCompressionMethods()[S
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 35
    return-void
.end method

.method public notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 0
    .param p1, "newSessionTicket"    # Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0
    .param p1, "selectedCipherSuite"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    .line 160
    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0
    .param p1, "selectedCompressionMethod"    # S

    .prologue
    .line 164
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    .line 165
    return-void
.end method

.method public notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public notifySessionID([B)V
    .locals 0
    .param p1, "sessionID"    # [B

    .prologue
    .line 155
    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 174
    if-eqz p1, :cond_2

    .line 179
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 184
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    .line 185
    .local v0, "namedCurves":[I
    if-eqz v0, :cond_1

    .line 187
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 190
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->serverECPointFormats:[S

    .line 191
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->serverECPointFormats:[S

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 196
    .end local v0    # "namedCurves":[I
    :cond_2
    return-void
.end method

.method public processServerSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .param p1, "serverSupplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method
