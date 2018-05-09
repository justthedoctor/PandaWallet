.class public Lcom/subgraph/orchid/socks/Socks4Request;
.super Lcom/subgraph/orchid/socks/SocksRequest;
.source "Socks4Request.java"


# static fields
.field static final SOCKS_COMMAND_CONNECT:I = 0x1

.field static final SOCKS_COMMAND_RESOLV:I = 0xf0

.field private static final SOCKS_STATUS_FAILURE:I = 0x5b

.field private static final SOCKS_STATUS_SUCCESS:I = 0x5a


# instance fields
.field private command:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/socks/SocksRequest;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    .line 16
    return-void
.end method

.method private isVersion4aHostname([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 56
    array-length v2, p1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 59
    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_2
    aget-byte v2, p1, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 66
    .local v0, "responseBuffer":[B
    aput-byte v2, v0, v2

    .line 67
    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 68
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->socketWrite([B)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCommandCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

    return v0
.end method

.method public isConnectRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readByte()I

    move-result v1

    iput v1, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

    .line 40
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readPortData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/socks/Socks4Request;->setPortData([B)V

    .line 41
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readIPv4AddressData()[B

    move-result-object v0

    .line 42
    .local v0, "ipv4Data":[B
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readNullTerminatedString()Ljava/lang/String;

    .line 43
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->isVersion4aHostname([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/socks/Socks4Request;->setHostname(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->setIPv4AddressData([B)V

    goto :goto_0
.end method

.method public sendConnectionRefused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->sendError(Z)V

    .line 28
    return-void
.end method

.method public sendError(Z)V
    .locals 1
    .param p1, "isUnsupportedCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 31
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->sendResponse(I)V

    .line 32
    return-void
.end method

.method public sendSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->sendResponse(I)V

    .line 36
    return-void
.end method
