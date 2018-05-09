.class public Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;
.super Lcom/subgraph/orchid/connections/ConnectionHandshake;
.source "ConnectionHandshakeV3.java"


# instance fields
.field private identityCertificate:Ljava/security/cert/X509Certificate;

.field private linkCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "connection"    # Lcom/subgraph/orchid/connections/ConnectionImpl;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshake;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    .line 29
    return-void
.end method

.method private static getCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dname"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 184
    const-string v2, "CN="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "idx":I
    if-ne v1, v3, :cond_0

    .line 186
    const-string v2, ""

    .line 192
    :goto_0
    return-object v2

    .line 188
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 189
    .local v0, "comma":I
    if-ne v0, v3, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getConnectionCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;
    .locals 3
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 140
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 141
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSelfSigned(Ljavax/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "certificate"    # Ljavax/security/cert/X509Certificate;

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readCertificateFromCell(Lcom/subgraph/orchid/Cell;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 83
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 84
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getShort()I

    move-result v3

    .line 85
    .local v3, "clen":I
    new-array v1, v3, [B

    .line 86
    .local v1, "certificateBuffer":[B
    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "certificateBuffer":[B
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "clen":I
    :goto_0
    return-object v5

    .line 89
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/security/cert/CertificateException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static sessionSupportsHandshake(Ljavax/net/ssl/SSLSession;)Z
    .locals 3
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getConnectionCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 131
    .local v0, "cert":Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->isSelfSigned(Ljavax/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testDName(Ljava/security/Principal;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testDName(Ljava/security/Principal;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testModulusLength(Ljavax/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;
    .param p2, "currentValue"    # Ljava/security/cert/X509Certificate;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->readCertificateFromCell(Lcom/subgraph/orchid/Cell;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " certificates in CERTS cell"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static testDName(Ljava/security/Principal;)Z
    .locals 4
    .param p0, "dn"    # Ljava/security/Principal;

    .prologue
    const/4 v1, 0x1

    .line 164
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "dname":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static testModulusLength(Ljavax/security/cert/X509Certificate;)Z
    .locals 5
    .param p0, "cert"    # Ljavax/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    instance-of v3, v3, Ljava/security/interfaces/RSAPublicKey;

    if-nez v3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 179
    .local v1, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 180
    .local v0, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getConnectionPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 66
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method recvAuthChallengeAndNetinfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 120
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 121
    .local v0, "cell":Lcom/subgraph/orchid/Cell;
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v1

    .line 126
    .local v1, "netinfo":Lcom/subgraph/orchid/Cell;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    goto :goto_0
.end method

.method recvCerts()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 41
    new-array v4, v7, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x81

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 42
    .local v0, "cell":Lcom/subgraph/orchid/Cell;
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v2

    .line 43
    .local v2, "ncerts":I
    if-eq v2, v8, :cond_0

    .line 44
    new-instance v4, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting 2 certificates and got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_0
    iput-object v9, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    .line 48
    iput-object v9, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 51
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v3

    .line 52
    .local v3, "type":I
    if-ne v3, v7, :cond_1

    .line 53
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    const-string v5, "Link (type = 1)"

    invoke-direct {p0, v0, v4, v5}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    iput-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    .line 50
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    if-ne v3, v8, :cond_2

    .line 55
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    const-string v5, "Identity (type = 2)"

    invoke-direct {p0, v0, v4, v5}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    iput-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    goto :goto_1

    .line 57
    :cond_2
    new-instance v4, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected certificate type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in CERTS cell"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    .end local v3    # "type":I
    :cond_3
    return-void
.end method

.method runHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sendVersions([I)V

    .line 33
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->receiveVersions()V

    .line 34
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->recvCerts()V

    .line 35
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->recvAuthChallengeAndNetinfo()V

    .line 36
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->verifyCertificates()V

    .line 37
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sendNetinfo()V

    .line 38
    return-void
.end method

.method verifyCertificates()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 97
    .local v1, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->verifyIdentityKey(Ljava/security/PublicKey;)V

    move-object v3, v1

    .line 98
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    .line 100
    .local v3, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x400

    if-eq v4, v5, :cond_0

    .line 101
    new-instance v4, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v5, "Invalid RSA modulus length in router identity key"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 106
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 107
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 108
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 114
    .local v2, "rsa2":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getConnectionPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    new-instance v4, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v5, "Link certificate in CERTS cell does not match connection certificate"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    .end local v2    # "rsa2":Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v5, "Router presented invalid certificate chain in CERTS cell"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "rsa2":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    return-void
.end method
