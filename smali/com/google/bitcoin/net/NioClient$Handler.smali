.class Lcom/google/bitcoin/net/NioClient$Handler;
.super Lcom/google/bitcoin/net/AbstractTimeoutHandler;
.source "NioClient.java"

# interfaces
.implements Lcom/google/bitcoin/net/StreamParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/net/NioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field private closeOnOpen:Z

.field final synthetic this$0:Lcom/google/bitcoin/net/NioClient;

.field private final upstreamParser:Lcom/google/bitcoin/net/StreamParser;

.field private writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/NioClient;Lcom/google/bitcoin/net/StreamParser;I)V
    .locals 1
    .param p2, "upstreamParser"    # Lcom/google/bitcoin/net/StreamParser;
    .param p3, "connectTimeoutMillis"    # I

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/bitcoin/net/NioClient$Handler;->this$0:Lcom/google/bitcoin/net/NioClient;

    invoke-direct {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->closeOnOpen:Z

    .line 38
    iput-object p2, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    .line 39
    invoke-virtual {p0, p3}, Lcom/google/bitcoin/net/NioClient$Handler;->setSocketTimeout(I)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/net/NioClient$Handler;->setTimeoutEnabled(Z)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/google/bitcoin/net/NioClient$Handler;)Lcom/google/bitcoin/net/MessageWriteTarget;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/NioClient$Handler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    return-object v0
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    .line 52
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->this$0:Lcom/google/bitcoin/net/NioClient;

    invoke-static {v0}, Lcom/google/bitcoin/net/NioClient;->access$000(Lcom/google/bitcoin/net/NioClient;)Lcom/google/bitcoin/net/NioClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioClientManager;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 53
    return-void
.end method

.method public declared-synchronized connectionOpened()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->closeOnOpen:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0}, Lcom/google/bitcoin/net/StreamParser;->connectionOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0}, Lcom/google/bitcoin/net/StreamParser;->getMaxMessageSize()I

    move-result v0

    return v0
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buff"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/net/StreamParser;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V
    .locals 1
    .param p1, "writeTarget"    # Lcom/google/bitcoin/net/MessageWriteTarget;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->closeOnOpen:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/google/bitcoin/net/MessageWriteTarget;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/net/NioClient$Handler;->setTimeoutEnabled(Z)V

    .line 72
    iput-object p1, p0, Lcom/google/bitcoin/net/NioClient$Handler;->writeTarget:Lcom/google/bitcoin/net/MessageWriteTarget;

    .line 73
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0, p1}, Lcom/google/bitcoin/net/StreamParser;->setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized timeoutOccurred()V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->upstreamParser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v0}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/net/NioClient$Handler;->closeOnOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
