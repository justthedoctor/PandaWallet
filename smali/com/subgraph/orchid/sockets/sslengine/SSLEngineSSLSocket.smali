.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "SSLEngineSSLSocket.java"

# interfaces
.implements Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private inputStream:Ljava/io/InputStream;

.field private final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

.field private outputStream:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljavax/net/ssl/SSLContext;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "context"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 30
    invoke-static {p2}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->createSSLEngine(Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    .line 32
    new-instance v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;-><init>(Ljavax/net/ssl/SSLEngine;Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->listenerList:Ljava/util/List;

    .line 34
    return-void
.end method

.method private static createSSLEngine(Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 38
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;-><init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->inputStream:Ljava/io/InputStream;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;-><init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->outputStream:Ljava/io/OutputStream;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .locals 4

    .prologue
    .line 307
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->listenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    :cond_0
    return-void

    .line 310
    :cond_1
    new-instance v0, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 311
    .local v0, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->listenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 312
    .local v2, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    invoke-interface {v2, v0}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 283
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 233
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 107
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 192
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 253
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 182
    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 172
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 243
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 97
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 117
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "shutdownInput() not supported on SSL Sockets"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "shutdownOutput() not supported on SSL Sockets"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineSSLSocket;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->startHandshake()V

    .line 92
    return-void
.end method
