.class public Lcom/google/bitcoin/core/Ping;
.super Lcom/google/bitcoin/core/Message;
.source "Ping.java"


# instance fields
.field private hasNonce:Z

.field private nonce:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "nonce"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/bitcoin/core/Ping;->nonce:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 28
    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    if-eqz v0, :cond_0

    .line 49
    iget-wide v0, p0, Lcom/google/bitcoin/core/Ping;->nonce:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 50
    :cond_0
    return-void
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/bitcoin/core/Ping;->nonce:J

    return-wide v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    return v0
.end method

.method parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Ping;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/Ping;->nonce:J

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    iput v1, p0, Lcom/google/bitcoin/core/Ping;->length:I

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/google/bitcoin/core/ProtocolException;
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Ping;->hasNonce:Z

    goto :goto_0
.end method

.method protected parseLite()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
