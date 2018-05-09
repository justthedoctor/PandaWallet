.class public abstract Lcom/google/bitcoin/core/EmptyMessage;
.super Lcom/google/bitcoin/core/Message;
.source "EmptyMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x725d35142892047aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/EmptyMessage;->length:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/EmptyMessage;->length:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/EmptyMessage;->length:I

    .line 42
    return-void
.end method


# virtual methods
.method public bitcoinSerialize()[B
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public ensureParsed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/EmptyMessage;->parsed:Z

    .line 74
    return-void
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method protected parseLite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bitcoin/core/EmptyMessage;->length:I

    .line 66
    return-void
.end method
