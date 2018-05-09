.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;
.super Ljava/io/OutputStream;
.source "SSLEngineOutputStream.java"


# instance fields
.field private final manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

.field private final outputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .line 14
    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->getSendBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 15
    return-void
.end method

.method private doWrite([BII)I
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
    .line 40
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    .local v0, "putLength":I
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->write()I

    .line 43
    return v0
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
    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->close()V

    .line 37
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->write()I

    .line 21
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "written":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 28
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->doWrite([BII)I

    move-result v0

    .line 30
    .local v0, "n":I
    add-int/2addr v1, v0

    .line 31
    goto :goto_0

    .line 32
    .end local v0    # "n":I
    :cond_0
    return-void
.end method
