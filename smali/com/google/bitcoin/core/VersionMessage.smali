.class public Lcom/google/bitcoin/core/VersionMessage;
.super Lcom/google/bitcoin/core/Message;
.source "VersionMessage.java"


# static fields
.field public static final BITCOINJ_VERSION:Ljava/lang/String; = "0.12-SNAPSHOT"

.field public static final LIBRARY_SUBVER:Ljava/lang/String; = "/PandacoinJ:0.12-SNAPSHOT/"

.field public static final NODE_NETWORK:I = 0x1

.field private static final serialVersionUID:J = 0x657f1b3abd17d32cL


# instance fields
.field public bestHeight:J

.field public clientVersion:I

.field public localServices:J

.field public myAddr:Lcom/google/bitcoin/core/PeerAddress;

.field public relayTxesBeforeFilter:Z

.field public subVer:Ljava/lang/String;

.field public theirAddr:Lcom/google/bitcoin/core/PeerAddress;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;I)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "newBestHeight"    # I

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V
    .locals 6
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "newBestHeight"    # I
    .param p3, "relayTxesBeforeFilter"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 96
    const v2, 0x11171

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    .line 97
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    .line 104
    const/4 v2, 0x4

    :try_start_0
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 105
    .local v1, "localhost":[B
    new-instance v2, Lcom/google/bitcoin/core/PeerAddress;

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    .line 106
    new-instance v2, Lcom/google/bitcoin/core/PeerAddress;

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const-string v2, "/PandacoinJ:0.12-SNAPSHOT/"

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 111
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    .line 112
    iput-boolean p3, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    .line 114
    const/16 v2, 0x55

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    .line 115
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->protocolVersion:I

    const/16 v3, 0x7aaa

    if-le v2, v3, :cond_0

    .line 116
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    .line 117
    :cond_0
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    .line 118
    return-void

    .line 107
    .end local v1    # "localhost":[B
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 104
    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 83
    return-void
.end method

.method private static checkSubVerComponent(Ljava/lang/String;)V
    .locals 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name contains invalid characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method public appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "comments"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    invoke-static {p1}, Lcom/google/bitcoin/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    .line 285
    invoke-static {p2}, Lcom/google/bitcoin/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    .line 286
    if-eqz p3, :cond_0

    .line 287
    invoke-static {p3}, Lcom/google/bitcoin/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    const-string v1, "%s:%s(%s)/"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    const-string v1, "%s:%s/"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "buf"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x20

    .line 165
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 166
    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 167
    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    shr-long/2addr v2, v4

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 168
    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 169
    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    shr-long/2addr v2, v4

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 174
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    invoke-static {v5, v6, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 184
    invoke-static {v5, v6, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 186
    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 187
    .local v1, "subVerBytes":[B
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    array-length v3, v1

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 190
    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 191
    iget-boolean v2, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 192
    return-void

    .line 175
    .end local v1    # "subVerBytes":[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 177
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "subVerBytes":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public duplicate()Lcom/google/bitcoin/core/VersionMessage;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/google/bitcoin/core/VersionMessage;

    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    long-to-int v2, v2

    iget-boolean v3, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;IZ)V

    .line 254
    .local v0, "v":Lcom/google/bitcoin/core/VersionMessage;
    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    iput v1, v0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    .line 255
    iget-wide v1, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    .line 256
    iget-wide v1, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    .line 257
    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    iput-object v1, v0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    .line 258
    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    iput-object v1, v0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    .line 259
    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 260
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 204
    instance-of v2, p1, Lcom/google/bitcoin/core/VersionMessage;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 205
    check-cast v0, Lcom/google/bitcoin/core/VersionMessage;

    .line 206
    .local v0, "other":Lcom/google/bitcoin/core/VersionMessage;
    iget-wide v2, v0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    iget v3, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    iget-boolean v3, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getChecksum()[B
    .locals 1

    .prologue
    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasBlockChain()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 199
    iget-wide v0, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerAddress;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->hashCode()I

    move-result v2

    iget-boolean v0, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isBloomFilteringSupported()Z
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    const v1, 0x11170

    if-lt v0, v1, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPingPongSupported()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    const v1, 0xea61

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    iget-boolean v2, p0, Lcom/google/bitcoin/core/VersionMessage;->parsed:Z

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-boolean v0, p0, Lcom/google/bitcoin/core/VersionMessage;->parsed:Z

    .line 131
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readUint32()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    .line 132
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    .line 133
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    .line 134
    new-instance v2, Lcom/google/bitcoin/core/PeerAddress;

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v4, p0, Lcom/google/bitcoin/core/VersionMessage;->bytes:[B

    iget v5, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    .line 135
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/PeerAddress;->getMessageSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    .line 136
    new-instance v2, Lcom/google/bitcoin/core/PeerAddress;

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v4, p0, Lcom/google/bitcoin/core/VersionMessage;->bytes:[B

    iget v5, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    .line 137
    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget-object v3, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/PeerAddress;->getMessageSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    .line 141
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    .line 144
    :try_start_0
    const-string v2, ""

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 145
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    .line 147
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->hasMoreBytes()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 159
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    goto :goto_0

    .line 150
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->hasMoreBytes()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 159
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    goto :goto_0

    .line 154
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->readUint32()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    .line 155
    invoke-virtual {p0}, Lcom/google/bitcoin/core/VersionMessage;->hasMoreBytes()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 159
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    goto/16 :goto_0

    .line 157
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/VersionMessage;->readBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    iget v0, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 157
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/google/bitcoin/core/VersionMessage;->cursor:I

    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->offset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/VersionMessage;->length:I

    throw v0
.end method

.method protected parseLite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method setChecksum([B)V
    .locals 1
    .param p1, "checksum"    # [B

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "client version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "local services: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->localServices:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "time:           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "my addr:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->myAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "their addr:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->theirAddr:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "sub version:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "best height:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/bitcoin/core/VersionMessage;->bestHeight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "delay tx relay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/bitcoin/core/VersionMessage;->relayTxesBeforeFilter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
