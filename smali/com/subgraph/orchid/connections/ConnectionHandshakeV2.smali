.class public Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;
.super Lcom/subgraph/orchid/connections/ConnectionHandshake;
.source "ConnectionHandshakeV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$1;,
        Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "connection"    # Lcom/subgraph/orchid/connections/ConnectionImpl;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshake;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    .line 47
    return-void
.end method

.method private getIdentityCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;
    .locals 5
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 77
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 78
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting 2 certificate chain from router and received chain length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "No certificates received from router"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v1    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 81
    const/4 v2, 0x1

    aget-object v2, v0, v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    .line 84
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "Incorrect signature on certificate chain"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, "e":Ljavax/security/cert/CertificateException;
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "Malformed certificate received"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getIdentityKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->getIdentityCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 71
    .local v0, "identityCertificate":Ljavax/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method runHandshake()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    sget-object v2, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->V1_CIPHERS_ONLY:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;-><init>(Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$1;)V

    .line 57
    .local v0, "monitor":Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 58
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 59
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->waitFinished()V

    .line 60
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 62
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->getIdentityKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->verifyIdentityKey(Ljava/security/PublicKey;)V

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->sendVersions([I)V

    .line 64
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->receiveVersions()V

    .line 65
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->sendNetinfo()V

    .line 66
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->recvNetinfo()V

    .line 67
    return-void
.end method
