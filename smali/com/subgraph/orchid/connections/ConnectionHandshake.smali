.class public abstract Lcom/subgraph/orchid/connections/ConnectionHandshake;
.super Ljava/lang/Object;
.source "ConnectionHandshake.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

.field private myAddress:Lcom/subgraph/orchid/data/IPv4Address;

.field private final remoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/IPv4Address;",
            ">;"
        }
    .end annotation
.end field

.field private remoteTimestamp:I

.field protected final remoteVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionHandshake;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .param p1, "connection"    # Lcom/subgraph/orchid/connections/ConnectionImpl;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    .line 48
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->socket:Ljavax/net/ssl/SSLSocket;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteVersions:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteAddresses:Ljava/util/List;

    .line 51
    return-void
.end method

.method static createHandshake(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)Lcom/subgraph/orchid/connections/ConnectionHandshake;
    .locals 2
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "connection"    # Lcom/subgraph/orchid/connections/ConnectionImpl;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p0}, Lcom/subgraph/orchid/TorConfig;->getHandshakeV3Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sessionSupportsHandshake(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;

    invoke-direct {v0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/subgraph/orchid/TorConfig;->getHandshakeV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;

    invoke-direct {v0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v1, "No valid handshake type available for this connection"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;
    .param p2, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 107
    invoke-virtual {p2}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v0

    .line 108
    .local v0, "data":[B
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 109
    array-length v1, v0

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 110
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->putByteArray([B)V

    .line 111
    return-void
.end method

.method private putMyAddresses(Lcom/subgraph/orchid/Cell;)V
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 115
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 116
    return-void
.end method

.method private putTimestamp(Lcom/subgraph/orchid/Cell;)V
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 103
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->putInt(I)V

    .line 104
    return-void
.end method

.method private readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    const/4 v3, 0x4

    .line 135
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v2

    .line 136
    .local v2, "type":I
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v1

    .line 137
    .local v1, "len":I
    if-ne v2, v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 138
    new-instance v3, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getInt()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    .line 142
    :goto_0
    return-object v3

    .line 140
    :cond_0
    new-array v0, v1, [B

    .line 141
    .local v0, "buffer":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 142
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;
    .locals 10
    .param p1, "expectedTypes"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v7, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v7}, Lcom/subgraph/orchid/connections/ConnectionImpl;->readConnectionControlCell()Lcom/subgraph/orchid/Cell;

    move-result-object v1

    .line 66
    .local v1, "c":Lcom/subgraph/orchid/Cell;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 67
    .local v6, "t":I
    invoke-interface {v1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 68
    return-object v1

    .line 66
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v6    # "t":I
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 72
    .local v3, "expected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting Cell command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and got [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] instead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v1    # "c":Lcom/subgraph/orchid/Cell;
    .end local v3    # "expected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Lcom/subgraph/orchid/ConnectionIOException;
    new-instance v7, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection exception while performing handshake "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method getMyAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->myAddress:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method getRemoteTimestamp()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteTimestamp:I

    return v0
.end method

.method protected processNetInfo(Lcom/subgraph/orchid/Cell;)V
    .locals 4
    .param p1, "netinfoCell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 123
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getInt()I

    move-result v3

    iput v3, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteTimestamp:I

    .line 124
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v3

    iput-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->myAddress:Lcom/subgraph/orchid/data/IPv4Address;

    .line 125
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v1

    .line 126
    .local v1, "addressCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    .line 128
    .local v0, "addr":Lcom/subgraph/orchid/data/IPv4Address;
    if-eqz v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteAddresses:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "addr":Lcom/subgraph/orchid/data/IPv4Address;
    :cond_1
    return-void
.end method

.method protected receiveVersions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 88
    .local v0, "c":Lcom/subgraph/orchid/Cell;
    :goto_0
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->cellBytesRemaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteVersions:Ljava/util/List;

    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getShort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method protected recvNetinfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    .line 120
    return-void
.end method

.method abstract runHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation
.end method

.method protected sendNetinfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 95
    .local v0, "cell":Lcom/subgraph/orchid/Cell;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putTimestamp(Lcom/subgraph/orchid/Cell;)V

    .line 96
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putMyAddresses(Lcom/subgraph/orchid/Cell;)V

    .line 98
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    .line 99
    return-void
.end method

.method protected varargs sendVersions([I)V
    .locals 8
    .param p1, "versions"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v5, 0x0

    const/4 v6, 0x7

    array-length v7, p1

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createVarCell(III)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v1

    .line 80
    .local v1, "cell":Lcom/subgraph/orchid/Cell;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 81
    .local v4, "v":I
    invoke-interface {v1, v4}, Lcom/subgraph/orchid/Cell;->putShort(I)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "v":I
    :cond_0
    iget-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v5, v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    .line 84
    return-void
.end method

.method protected verifyIdentityKey(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .prologue
    .line 146
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "Identity certificate public key is not an RSA key as expected"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 150
    .local v0, "identityKey":Lcom/subgraph/orchid/crypto/TorPublicKey;
    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 151
    .local v1, "router":Lcom/subgraph/orchid/Router;
    instance-of v2, v1, Lcom/subgraph/orchid/BridgeRouter;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    if-nez v2, :cond_2

    .line 152
    sget-object v2, Lcom/subgraph/orchid/connections/ConnectionHandshake;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Bridge fingerprint from connection handshake for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    check-cast v1, Lcom/subgraph/orchid/BridgeRouter;

    .end local v1    # "router":Lcom/subgraph/orchid/Router;
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/BridgeRouter;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 157
    :cond_1
    return-void

    .line 154
    .restart local v1    # "router":Lcom/subgraph/orchid/Router;
    :cond_2
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    new-instance v2, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v3, "Router identity does not match certificate key"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
