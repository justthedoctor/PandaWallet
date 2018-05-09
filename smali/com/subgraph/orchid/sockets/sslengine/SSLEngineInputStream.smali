.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;
.super Ljava/io/InputStream;
.source "SSLEngineInputStream.java"


# instance fields
.field private isEOF:Z

.field private final manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

.field private final recvBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .line 15
    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->getRecvBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    .line 16
    return-void
.end method

.method private fillRecvBufferIfEmpty()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-boolean v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->isEOF:Z

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->read()I

    move-result v1

    if-gez v1, :cond_1

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->isEOF:Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->close()V

    .line 42
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->fillRecvBufferIfEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const/4 v0, -0x1

    .line 25
    :goto_0
    return v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 24
    .local v0, "b":I
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->fillRecvBufferIfEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v0, -0x1

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    .local v0, "copyLen":I
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 35
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
