.class public Lcom/google/bitcoin/core/MemoryPoolMessage;
.super Lcom/google/bitcoin/core/Message;
.source "MemoryPoolMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    return-void
.end method


# virtual methods
.method bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method protected parseLite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method
