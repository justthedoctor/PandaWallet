.class public abstract Lcom/subgraph/orchid/socks/SocksRequest;
.super Ljava/lang/Object;
.source "SocksRequest.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private addressData:[B

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private hostname:Ljava/lang/String;

.field private lastWarningTimestamp:J

.field private port:I

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/subgraph/orchid/socks/SocksRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/socks/SocksRequest;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 2
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    .line 25
    iput-object p2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    .line 26
    return-void
.end method

.method private logUnsafeSOCKS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getWarnUnsafeSocks()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeSocks()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksRequest;->testRateLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/subgraph/orchid/socks/SocksRequest;->logger:Ljava/util/logging/Logger;

    const-string v1, "Your application is giving Orchid only an IP address.  Applications that do DNS resolves themselves may leak information. Consider using Socks4a (e.g. via privoxy or socat) instead.  For more information please see https://wiki.torproject.org/TheOnionRouter/TorFAQ#SOCKSAndDNS"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeSocks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    const-string v1, "Rejecting unsafe SOCKS request"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    return-void
.end method

.method private testRateLimit()Z
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    .local v2, "now":J
    iget-wide v4, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    sub-long v0, v2, v4

    .line 86
    .local v0, "diff":J
    iput-wide v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    .line 87
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public abstract getCommandCode()I
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scrubbed]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasHostname()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isConnectRequest()Z
.end method

.method protected readAll([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([BII)V

    .line 156
    return-void
.end method

.method protected readAll([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 160
    :goto_0
    if-lez p3, :cond_1

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 162
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 163
    new-instance v2, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v2}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "n":I
    :cond_0
    add-int/2addr p2, v1

    .line 165
    sub-int/2addr p3, v1

    .line 166
    goto :goto_0

    .line 170
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method protected readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 146
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 147
    new-instance v2, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v2}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "n":I
    :cond_0
    return v1
.end method

.method protected readIPv4AddressData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 116
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([B)V

    .line 117
    return-object v0
.end method

.method protected readIPv6AddressData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 121
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 122
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([B)V

    .line 123
    return-object v0
.end method

.method protected readNullTerminatedString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v4, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 131
    .local v0, "c":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 132
    new-instance v4, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v4}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "c":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v4, v2}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    if-nez v0, :cond_1

    .line 134
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 135
    :cond_1
    int-to-char v1, v0

    .line 136
    .local v1, "ch":C
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected readPortData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 109
    new-array v0, v2, [B

    .line 110
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([BII)V

    .line 111
    return-object v0
.end method

.method public abstract readRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendConnectionRefused()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendError(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method protected setHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected setIPv4AddressData([B)V
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksRequest;->logUnsafeSOCKS()V

    .line 71
    array-length v5, p1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 72
    new-instance v5, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v5}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v5

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->addressData:[B

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "addressValue":I
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->addressData:[B

    .local v1, "arr$":[B
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v2, v1, v3

    .line 77
    .local v2, "b":B
    shl-int/lit8 v0, v0, 0x8

    .line 78
    and-int/lit16 v5, v2, 0xff

    or-int/2addr v0, v5

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "b":B
    :cond_1
    new-instance v5, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-direct {v5, v0}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    iput-object v5, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 81
    return-void
.end method

.method protected setPortData([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 63
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    .line 66
    return-void
.end method

.method protected socketWrite([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
