.class public Lcom/subgraph/orchid/sockets/AndroidSocket;
.super Ljava/net/Socket;
.source "AndroidSocket.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

.field private final isConnectedField:Ljava/lang/reflect/Field;

.field private isSocketConnected:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/subgraph/orchid/sockets/AndroidSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/sockets/OrchidSocketImpl;)V
    .locals 1
    .param p1, "impl"    # Lcom/subgraph/orchid/sockets/OrchidSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->lock:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    .line 21
    const-string v0, "isConnected"

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/AndroidSocket;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    .line 22
    return-void
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 58
    :try_start_0
    const-class v3, Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 59
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not locate field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in Socket class, disabling Android reflection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v1, v2

    .line 63
    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reflection access to field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in Socket class not permitted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v1, v2

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/sockets/AndroidSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 26
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v2, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isSocketConnected:Z

    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "Already connected"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 35
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/AndroidSocket;->setIsConnected()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    monitor-exit v2

    .line 41
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->close()V

    .line 38
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected setIsConnected()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isSocketConnected:Z

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument trying to reflect value into isConnected field of Socket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access trying to reflect value into isConnected field of Socket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
