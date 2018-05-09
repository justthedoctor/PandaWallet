.class public Lcom/subgraph/orchid/socks/SocksClientTask;
.super Ljava/lang/Object;
.source "SocksClientTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/subgraph/orchid/socks/SocksClientTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;Lcom/subgraph/orchid/CircuitManager;)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "circuitManager"    # Lcom/subgraph/orchid/CircuitManager;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->config:Lcom/subgraph/orchid/TorConfig;

    .line 24
    iput-object p2, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    .line 25
    iput-object p3, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    .line 26
    return-void
.end method

.method private closeSocket()V
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing SOCKS socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchRequest(I)V
    .locals 3
    .param p1, "versionByte"    # I

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 48
    :sswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksClientTask;->sendHttpPage()V

    goto :goto_0

    .line 51
    :sswitch_1
    new-instance v0, Lcom/subgraph/orchid/socks/Socks4Request;

    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/socks/Socks4Request;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/SocksClientTask;->processRequest(Lcom/subgraph/orchid/socks/SocksRequest;)V

    goto :goto_0

    .line 54
    :sswitch_2
    new-instance v0, Lcom/subgraph/orchid/socks/Socks5Request;

    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/socks/Socks5Request;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/SocksClientTask;->processRequest(Lcom/subgraph/orchid/socks/SocksRequest;)V

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private openConnectStream(Lcom/subgraph/orchid/socks/SocksRequest;)Lcom/subgraph/orchid/Stream;
    .locals 3
    .param p1, "request"    # Lcom/subgraph/orchid/socks/SocksRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->hasHostname()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCKS CONNECT request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getPort()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/CircuitManager;->openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCKS CONNECT request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getPort()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/CircuitManager;->openExitStreamTo(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    goto :goto_0
.end method

.method private processRequest(Lcom/subgraph/orchid/socks/SocksRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/subgraph/orchid/socks/SocksRequest;

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->readRequest()V

    .line 65
    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->isConnectRequest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non connect command ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getCommandCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/socks/SocksRequest;->sendError(Z)V
    :try_end_0
    .catch Lcom/subgraph/orchid/socks/SocksRequestException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/SocksClientTask;->openConnectStream(Lcom/subgraph/orchid/socks/SocksRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    .line 73
    .local v1, "stream":Lcom/subgraph/orchid/Stream;
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SOCKS CONNECT to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " completed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->sendSuccess()V

    .line 75
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/socks/SocksClientTask;->runOpenConnection(Lcom/subgraph/orchid/Stream;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/subgraph/orchid/socks/SocksRequestException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    .end local v1    # "stream":Lcom/subgraph/orchid/Stream;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SOCKS CONNECT to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was thread interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/socks/SocksRequest;->sendError(Z)V
    :try_end_2
    .catch Lcom/subgraph/orchid/socks/SocksRequestException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Lcom/subgraph/orchid/socks/SocksRequestException;
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading SOCKS request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/socks/SocksRequest;->sendError(Z)V

    .line 91
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 92
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 80
    .end local v0    # "e":Lcom/subgraph/orchid/socks/SocksRequestException;
    :catch_3
    move-exception v0

    .line 81
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SOCKS CONNECT to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timed out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/socks/SocksRequest;->sendError(Z)V

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_4
    move-exception v0

    .line 84
    .local v0, "e":Lcom/subgraph/orchid/OpenFailedException;
    sget-object v2, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SOCKS CONNECT to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/subgraph/orchid/OpenFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/subgraph/orchid/socks/SocksRequest;->sendConnectionRefused()V
    :try_end_4
    .catch Lcom/subgraph/orchid/socks/SocksRequestException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method private readByte()I
    .locals 4

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 39
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/socks/SocksClientTask;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error reading version byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 39
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private runOpenConnection(Lcom/subgraph/orchid/Stream;)V
    .locals 1
    .param p1, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksClientTask;->socket:Ljava/net/Socket;

    invoke-static {v0, p1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->runConnection(Ljava/net/Socket;Lcom/subgraph/orchid/Stream;)V

    .line 99
    return-void
.end method

.method private sendHttpPage()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "Returning HTTP page not implemented"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksClientTask;->readByte()I

    move-result v0

    .line 30
    .local v0, "version":I
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/SocksClientTask;->dispatchRequest(I)V

    .line 31
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksClientTask;->closeSocket()V

    .line 32
    return-void
.end method
