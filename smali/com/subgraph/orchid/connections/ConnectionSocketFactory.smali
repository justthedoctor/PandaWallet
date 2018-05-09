.class public Lcom/subgraph/orchid/connections/ConnectionSocketFactory;
.super Ljava/lang/Object;
.source "ConnectionSocketFactory.java"


# static fields
.field private static final MANDATORY_CIPHERS:[Ljava/lang/String;

.field private static final NULL_TRUST:[Ljavax/net/ssl/TrustManager;

.field static final V1_CIPHERS_ONLY:[Ljava/lang/String;


# instance fields
.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v1, v0, v2

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v1, v0, v3

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v1, v0, v4

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->V1_CIPHERS_ONLY:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v1, v0, v2

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v1, v0, v3

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v1, v0, v4

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v1, v0, v5

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->MANDATORY_CIPHERS:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;

    invoke-direct {v1}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->NULL_TRUST:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 64
    return-void
.end method

.method private static createSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 5

    .prologue
    .line 48
    const-string v2, "sun.security.ssl.allowUnsafeRenegotiation"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 51
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    sget-object v3, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->NULL_TRUST:[Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method createSocket()Ljavax/net/ssl/SSLSocket;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 69
    .local v1, "socket":Ljavax/net/ssl/SSLSocket;
    sget-object v2, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->MANDATORY_CIPHERS:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v1

    .line 72
    .end local v1    # "socket":Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
