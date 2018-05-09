.class public abstract Lde/schildbach/wallet/util/HttpGetThread;
.super Ljava/lang/Thread;
.source "HttpGetThread.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final assets:Landroid/content/res/AssetManager;

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lde/schildbach/wallet/util/HttpGetThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/HttpGetThread;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "assets"    # Landroid/content/res/AssetManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lde/schildbach/wallet/util/HttpGetThread;->assets:Landroid/content/res/AssetManager;

    .line 55
    iput-object p2, p0, Lde/schildbach/wallet/util/HttpGetThread;->url:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lde/schildbach/wallet/util/HttpGetThread;->userAgent:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract handleException(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method protected abstract handleLine(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public run()V
    .locals 14

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "connection":Ljava/net/HttpURLConnection;
    sget-object v11, Lde/schildbach/wallet/util/HttpGetThread;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "querying \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lde/schildbach/wallet/util/HttpGetThread;->url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lde/schildbach/wallet/util/HttpGetThread;->url:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 70
    instance-of v11, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v11, :cond_0

    .line 72
    iget-object v11, p0, Lde/schildbach/wallet/util/HttpGetThread;->assets:Landroid/content/res/AssetManager;

    const-string v12, "ssl-keystore"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, "keystoreInputStream":Ljava/io/InputStream;
    const-string v11, "BKS"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 75
    .local v2, "keystore":Ljava/security/KeyStore;
    const-string v11, "password"

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 78
    const-string v11, "X509"

    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 79
    .local v9, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v9, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 81
    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 82
    .local v8, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 84
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v11, v0

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 87
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "keystoreInputStream":Ljava/io/InputStream;
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 88
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 90
    const-string v11, "Accept-Charset"

    const-string v12, "utf-8"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v11, p0, Lde/schildbach/wallet/util/HttpGetThread;->userAgent:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 92
    const-string v11, "User-Agent"

    iget-object v12, p0, Lde/schildbach/wallet/util/HttpGetThread;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_2

    .line 97
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v6

    .line 100
    .local v6, "serverTime":J
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    sget-object v13, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v12, 0x40

    invoke-direct {v5, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 101
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 104
    invoke-virtual {p0, v4, v6, v7}, Lde/schildbach/wallet/util/HttpGetThread;->handleLine(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "serverTime":J
    :cond_2
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 116
    :cond_3
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v10

    .line 109
    .local v10, "x":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v10}, Lde/schildbach/wallet/util/HttpGetThread;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 113
    .end local v10    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v11
.end method
