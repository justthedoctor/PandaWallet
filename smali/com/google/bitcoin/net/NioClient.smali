.class public Lcom/google/bitcoin/net/NioClient;
.super Ljava/lang/Object;
.source "NioClient.java"

# interfaces
.implements Lcom/google/bitcoin/net/MessageWriteTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/net/NioClient$Handler;
    }
.end annotation


# instance fields
.field private final handler:Lcom/google/bitcoin/net/NioClient$Handler;

.field private final manager:Lcom/google/bitcoin/net/NioClientManager;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;I)V
    .locals 2
    .param p1, "serverAddress"    # Ljava/net/SocketAddress;
    .param p2, "parser"    # Lcom/google/bitcoin/net/StreamParser;
    .param p3, "connectTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/bitcoin/net/NioClientManager;

    invoke-direct {v0}, Lcom/google/bitcoin/net/NioClientManager;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/net/NioClient;->manager:Lcom/google/bitcoin/net/NioClientManager;

    .line 94
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->manager:Lcom/google/bitcoin/net/NioClientManager;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioClientManager;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 95
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->manager:Lcom/google/bitcoin/net/NioClientManager;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioClientManager;->awaitRunning()V

    .line 96
    new-instance v0, Lcom/google/bitcoin/net/NioClient$Handler;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/bitcoin/net/NioClient$Handler;-><init>(Lcom/google/bitcoin/net/NioClient;Lcom/google/bitcoin/net/StreamParser;I)V

    iput-object v0, p0, Lcom/google/bitcoin/net/NioClient;->handler:Lcom/google/bitcoin/net/NioClient$Handler;

    .line 97
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->manager:Lcom/google/bitcoin/net/NioClientManager;

    iget-object v1, p0, Lcom/google/bitcoin/net/NioClient;->handler:Lcom/google/bitcoin/net/NioClient$Handler;

    invoke-virtual {v0, p1, v1}, Lcom/google/bitcoin/net/NioClientManager;->openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/net/NioClient;)Lcom/google/bitcoin/net/NioClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/NioClient;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->manager:Lcom/google/bitcoin/net/NioClientManager;

    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->handler:Lcom/google/bitcoin/net/NioClient$Handler;

    invoke-static {v0}, Lcom/google/bitcoin/net/NioClient$Handler;->access$100(Lcom/google/bitcoin/net/NioClient$Handler;)Lcom/google/bitcoin/net/MessageWriteTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/bitcoin/net/MessageWriteTarget;->closeConnection()V

    .line 103
    return-void
.end method

.method public declared-synchronized writeBytes([B)V
    .locals 1
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient;->handler:Lcom/google/bitcoin/net/NioClient$Handler;

    invoke-static {v0}, Lcom/google/bitcoin/net/NioClient$Handler;->access$100(Lcom/google/bitcoin/net/NioClient$Handler;)Lcom/google/bitcoin/net/MessageWriteTarget;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/bitcoin/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
