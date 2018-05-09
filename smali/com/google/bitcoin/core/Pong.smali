.class public Lcom/google/bitcoin/core/Pong;
.super Lcom/google/bitcoin/core/Message;
.source "Pong.java"


# static fields
.field public static final MIN_PROTOCOL_VERSION:I = 0xea61


# instance fields
.field private nonce:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "nonce"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/google/bitcoin/core/Pong;->nonce:J

    .line 38
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
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 30
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
    .line 47
    iget-wide v0, p0, Lcom/google/bitcoin/core/Pong;->nonce:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 48
    return-void
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/bitcoin/core/Pong;->nonce:J

    return-wide v0
.end method

.method parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Pong;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Pong;->nonce:J

    .line 43
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/bitcoin/core/Pong;->length:I

    .line 44
    return-void
.end method

.method protected parseLite()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
