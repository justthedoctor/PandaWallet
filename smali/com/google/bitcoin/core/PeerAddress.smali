.class public Lcom/google/bitcoin/core/PeerAddress;
.super Lcom/google/bitcoin/core/ChildMessage;
.source "PeerAddress.java"


# static fields
.field static final MESSAGE_SIZE:I = 0x1e

.field private static final serialVersionUID:J = 0x6819f2e294241e23L


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private port:I

.field private services:Ljava/math/BigInteger;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BIILcom/google/bitcoin/core/Message;ZZ)V
    .locals 9
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .param p5, "parent"    # Lcom/google/bitcoin/core/Message;
    .param p6, "parseLazy"    # Z
    .param p7, "parseRetain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 66
    const/high16 v8, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIILcom/google/bitcoin/core/Message;ZZI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 95
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/params/MainNetParams;->getPort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 88
    const v0, 0x11171

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocolVersion"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/bitcoin/core/ChildMessage;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    .line 78
    iput p2, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    .line 79
    iput p3, p0, Lcom/google/bitcoin/core/PeerAddress;->protocolVersion:I

    .line 80
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    .line 81
    const/16 v0, 0x7aaa

    if-le p3, v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    iput v0, p0, Lcom/google/bitcoin/core/PeerAddress;->length:I

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 100
    return-void
.end method

.method public static localhost(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/PeerAddress;
    .locals 4
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/google/bitcoin/core/PeerAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 112
    iget v3, p0, Lcom/google/bitcoin/core/PeerAddress;->protocolVersion:I

    const/16 v4, 0x7aaa

    if-lt v3, v4, :cond_0

    .line 116
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    long-to-int v1, v3

    .line 117
    .local v1, "secs":I
    int-to-long v3, v1

    invoke-static {v3, v4, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 119
    .end local v1    # "secs":I
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    invoke-static {v3, p1}, Lcom/google/bitcoin/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 121
    iget-object v3, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 122
    .local v0, "ipBytes":[B
    array-length v3, v0

    if-ne v3, v6, :cond_1

    .line 123
    const/16 v3, 0x10

    new-array v2, v3, [B

    .line 124
    .local v2, "v6addr":[B
    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v0, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    const/16 v3, 0xa

    aput-byte v5, v2, v3

    .line 126
    const/16 v3, 0xb

    aput-byte v5, v2, v3

    .line 127
    move-object v0, v2

    .line 129
    .end local v2    # "v6addr":[B
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 131
    iget v3, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 132
    iget v3, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 133
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 249
    instance-of v2, p1, Lcom/google/bitcoin/core/PeerAddress;

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 250
    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 251
    .local v0, "other":Lcom/google/bitcoin/core/PeerAddress;
    iget-object v2, v0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    iget v3, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->maybeParse()V

    .line 175
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMessageSize()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/bitcoin/core/PeerAddress;->protocolVersion:I

    const/16 v1, 0x7aaa

    if-le v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    iput v0, p0, Lcom/google/bitcoin/core/PeerAddress;->length:I

    .line 167
    iget v0, p0, Lcom/google/bitcoin/core/PeerAddress;->length:I

    return v0

    .line 166
    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->maybeParse()V

    .line 193
    iget v0, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    return v0
.end method

.method public getServices()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->maybeParse()V

    .line 211
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->maybeParse()V

    .line 229
    iget-wide v0, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 146
    iget v2, p0, Lcom/google/bitcoin/core/PeerAddress;->protocolVersion:I

    const/16 v3, 0x7aaa

    if-le v2, v3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->readUint32()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->readUint64()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    .line 151
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/PeerAddress;->readBytes(I)[B

    move-result-object v0

    .line 153
    .local v0, "addrBytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerAddress;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/PeerAddress;->cursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/bitcoin/core/PeerAddress;->cursor:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerAddress;->bytes:[B

    iget v4, p0, Lcom/google/bitcoin/core/PeerAddress;->cursor:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/bitcoin/core/PeerAddress;->cursor:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    .line 158
    return-void

    .line 149
    .end local v0    # "addrBytes":[B
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    goto :goto_0

    .line 154
    .restart local v0    # "addrBytes":[B
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseLite()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/google/bitcoin/core/PeerAddress;->protocolVersion:I

    const/16 v1, 0x7aaa

    if-le v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    iput v0, p0, Lcom/google/bitcoin/core/PeerAddress;->length:I

    .line 137
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public setAddr(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->unCache()V

    .line 184
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    .line 185
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->unCache()V

    .line 202
    iput p1, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    .line 203
    return-void
.end method

.method public setServices(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "services"    # Ljava/math/BigInteger;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->unCache()V

    .line 220
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerAddress;->services:Ljava/math/BigInteger;

    .line 221
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/bitcoin/core/PeerAddress;->unCache()V

    .line 238
    iput-wide p1, p0, Lcom/google/bitcoin/core/PeerAddress;->time:J

    .line 239
    return-void
.end method

.method public toSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    iget v2, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/bitcoin/core/PeerAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
