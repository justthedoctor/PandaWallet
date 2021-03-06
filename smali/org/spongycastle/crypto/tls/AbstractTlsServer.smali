.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsServer;
.super Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.source "AbstractTlsServer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsServer;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected clientECPointFormats:[S

.field protected clientExtensions:Ljava/util/Hashtable;

.field protected clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field protected context:Lorg/spongycastle/crypto/tls/TlsServerContext;

.field protected eccCipherSuitesOffered:Z

.field protected maxFragmentLengthOffered:S

.field protected namedCurves:[I

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverECPointFormats:[S

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;

.field protected truncatedHMacOffered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 42
    return-void
.end method


# virtual methods
.method protected allowTruncatedHMac()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected checkServerExtensions()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getCertificateRequest()Lorg/spongycastle/crypto/tls/CertificateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateStatus()Lorg/spongycastle/crypto/tls/CertificateStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCipherSuites()[I
.end method

.method public getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCompressionMethod:S

    packed-switch v0, :pswitch_data_0

    .line 300
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 293
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected getCompressionMethods()[S
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method protected getMaximumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method protected getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getNewSessionTicket()Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lorg/spongycastle/crypto/tls/NewSessionTicket;

    const-wide/16 v1, 0x0

    sget-object v3, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/NewSessionTicket;-><init>(J[B)V

    return-object v0
.end method

.method public getSelectedCipherSuite()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportsClientECCCapabilities([I[S)Z

    move-result v2

    .line 195
    .local v2, "eccCipherSuitesEnabled":Z
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getCipherSuites()[I

    move-result-object v1

    .line 196
    .local v1, "cipherSuites":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 198
    aget v0, v1, v3

    .line 201
    .local v0, "cipherSuite":I
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    :cond_0
    iput v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    return v0

    .line 196
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "cipherSuite":I
    :cond_2
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4
.end method

.method public getSelectedCompressionMethod()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getCompressionMethods()[S

    move-result-object v0

    .line 214
    .local v0, "compressionMethods":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 216
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->offeredCompressionMethods:[S

    aget-short v3, v0, v1

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    aget-short v2, v0, v1

    iput-short v2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCompressionMethod:S

    return v2

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public getServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    if-ltz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->checkServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iget-short v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->addMaxFragmentLengthExtension(Ljava/util/Hashtable;S)V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->truncatedHMacOffered:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->allowTruncatedHMac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->checkServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->addTruncatedHMacExtension(Ljava/util/Hashtable;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    .line 248
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->checkServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverECPointFormats:[S

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    .line 251
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverExtensions:Ljava/util/Hashtable;

    return-object v0

    .line 245
    :array_0
    .array-data 2
        0x2s
        0x1s
        0x0s
    .end array-data
.end method

.method public getServerSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getMaximumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 164
    .local v0, "maximumVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .end local v0    # "maximumVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 170
    :goto_0
    return-object v0

    .line 168
    .restart local v0    # "maximumVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isLaterVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 173
    .end local v0    # "maximumVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsServerContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsServerContext;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->context:Lorg/spongycastle/crypto/tls/TlsServerContext;

    .line 100
    return-void
.end method

.method public notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public notifyClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 106
    return-void
.end method

.method public notifyOfferedCipherSuites([I)V
    .locals 1
    .param p1, "offeredCipherSuites"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->offeredCipherSuites:[I

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->eccCipherSuitesOffered:Z

    .line 113
    return-void
.end method

.method public notifyOfferedCompressionMethods([S)V
    .locals 0
    .param p1, "offeredCompressionMethods"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->offeredCompressionMethods:[S

    .line 119
    return-void
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "clientExtensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 124
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientExtensions:Ljava/util/Hashtable;

    .line 126
    if-eqz p1, :cond_1

    .line 128
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v0

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->maxFragmentLengthOffered:S

    .line 129
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->truncatedHMacOffered:Z

    .line 131
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 144
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    .line 145
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    .line 152
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->eccCipherSuitesOffered:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->namedCurves:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->clientECPointFormats:[S

    if-eqz v0, :cond_3

    .line 154
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 156
    :cond_3
    return-void
.end method

.method public processClientSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .param p1, "clientSupplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 277
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 279
    :cond_0
    return-void
.end method

.method protected supportsClientECCCapabilities([I[S)Z
    .locals 3
    .param p1, "namedCurves"    # [I
    .param p2, "ecPointFormats"    # [S

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 82
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->hasAnySupportedNamedCurves()Z

    move-result v2

    .line 94
    :goto_0
    return v2

    .line 85
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 87
    aget v1, p1, v0

    .line 88
    .local v1, "namedCurve":I
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/NamedCurve;->refersToASpecificNamedCurve(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "namedCurve":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
