.class public Lcom/subgraph/orchid/socks/Socks5Request;
.super Lcom/subgraph/orchid/socks/SocksRequest;
.source "Socks5Request.java"


# static fields
.field static final SOCKS5_ADDRESS_HOSTNAME:I = 0x3

.field static final SOCKS5_ADDRESS_IPV4:I = 0x1

.field static final SOCKS5_ADDRESS_IPV6:I = 0x4

.field static final SOCKS5_AUTH_NONE:I = 0x0

.field static final SOCKS5_COMMAND_CONNECT:I = 0x1

.field static final SOCKS5_COMMAND_RESOLV:I = 0xf0

.field static final SOCKS5_COMMAND_RESOLV_PTR:I = 0xf1

.field static final SOCKS5_STATUS_COMMAND_NOT_SUPPORTED:I = 0x7

.field static final SOCKS5_STATUS_CONNECTION_REFUSED:I = 0x5

.field static final SOCKS5_STATUS_FAILURE:I = 0x1

.field static final SOCKS5_STATUS_SUCCESS:I = 0x0

.field static final SOCKS5_VERSION:I = 0x5


# instance fields
.field private addressBytes:[B

.field private addressType:I

.field private command:I

.field private portBytes:[B


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 2
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/socks/SocksRequest;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    .line 29
    return-void
.end method

.method private addressBytesToHostname()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    iget v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 41
    new-instance v3, Lcom/subgraph/orchid/TorException;

    const-string v4, "SOCKS 4 request is not a hostname request"

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v0, v3

    .line 45
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processAuthentication()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v3

    .line 101
    .local v3, "nmethods":I
    const/4 v0, 0x0

    .line 102
    .local v0, "foundAuthNone":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v2

    .line 104
    .local v2, "meth":I
    if-nez v2, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "meth":I
    :cond_1
    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0, v4}, Lcom/subgraph/orchid/socks/Socks5Request;->sendAuthenticationResponse(I)V

    .line 110
    const/4 v4, 0x1

    .line 113
    :goto_1
    return v4

    .line 112
    :cond_2
    const/16 v5, 0xff

    invoke-direct {p0, v5}, Lcom/subgraph/orchid/socks/Socks5Request;->sendAuthenticationResponse(I)V

    goto :goto_1
.end method

.method private readAddressBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readIPv4AddressData()[B

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :pswitch_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readIPv6AddressData()[B

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readHostnameData()[B

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readHostnameData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v1

    .line 140
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [B

    .line 141
    .local v0, "addrData":[B
    const/4 v2, 0x0

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 142
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/subgraph/orchid/socks/Socks5Request;->readAll([BII)V

    .line 143
    return-object v0
.end method

.method private sendAuthenticationResponse(I)V
    .locals 3
    .param p1, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 120
    .local v0, "response":[B
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 121
    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->socketWrite([B)V

    .line 123
    return-void
.end method

.method private sendResponse(I)V
    .locals 6
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    array-length v3, v3

    add-int v1, v2, v3

    .line 89
    .local v1, "responseLength":I
    new-array v0, v1, [B

    .line 90
    .local v0, "response":[B
    const/4 v2, 0x5

    aput-byte v2, v0, v5

    .line 91
    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 92
    const/4 v2, 0x2

    aput-byte v5, v0, v2

    .line 93
    const/4 v2, 0x3

    iget v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 94
    iget-object v2, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v4, v4

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v2, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    iget-object v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    array-length v4, v4

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->socketWrite([B)V

    .line 97
    return-void
.end method


# virtual methods
.method public getCommandCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

    return v0
.end method

.method public isConnectRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    iget v1, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

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
    .line 51
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->processAuthentication()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    const-string v1, "Failed to negotiate authentication"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 55
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

    .line 58
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    .line 59
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    .line 60
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readAddressBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    .line 61
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readPortData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    .line 62
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setIPv4AddressData([B)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setPortData([B)V

    .line 69
    return-void

    .line 64
    :cond_2
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytesToHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setHostname(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0
.end method

.method public sendConnectionRefused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    .line 73
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
    .line 76
    if-eqz p1, :cond_0

    .line 77
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    goto :goto_0
.end method

.method public sendSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    .line 85
    return-void
.end method
