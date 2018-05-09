.class public Lcom/google/bitcoin/net/discovery/IrcDiscovery;
.super Ljava/lang/Object;
.source "IrcDiscovery.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private channel:Ljava/lang/String;

.field private connection:Ljava/net/Socket;

.field private port:I

.field private server:Ljava/lang/String;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "irc.lfnet.org"

    const/16 v1, 0x1a0b

    invoke-direct {p0, p1, v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x1a0b

    iput v0, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->port:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    .line 67
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->channel:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->server:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->port:I

    .line 70
    return-void
.end method

.method private static checkLineStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "statusCode"    # Ljava/lang/String;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 250
    .local v0, "startIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 256
    .end local v0    # "startIndex":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "startIndex":I
    :cond_1
    move v1, v2

    .line 250
    goto :goto_0

    .line 252
    .end local v0    # "startIndex":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 256
    goto :goto_0
.end method

.method private logAndSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->onIRCSend(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method static parseUserList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "userNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    move-object v3, p0

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v10, v3, v5

    .line 199
    .local v10, "user":Ljava/lang/String;
    const-string v11, "u"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 197
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/bitcoin/core/Base58;->decodeChecked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    .local v1, "addressBytes":[B
    array-length v11, v1

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 223
    const/4 v11, 0x4

    new-array v7, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-byte v12, v1, v12

    aput-byte v12, v7, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-byte v12, v1, v12

    aput-byte v12, v7, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    aget-byte v12, v1, v12

    aput-byte v12, v7, v11

    const/4 v11, 0x3

    const/4 v12, 0x3

    aget-byte v12, v1, v12

    aput-byte v12, v7, v11

    .line 224
    .local v7, "ipBytes":[B
    const/4 v11, 0x4

    invoke-static {v1, v11}, Lcom/google/bitcoin/core/Utils;->readUint16BE([BI)I

    move-result v9

    .line 228
    .local v9, "port":I
    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 234
    .local v6, "ip":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 235
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    .end local v1    # "addressBytes":[B
    .end local v6    # "ip":Ljava/net/InetAddress;
    .end local v7    # "ipBytes":[B
    .end local v9    # "port":I
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Lcom/google/bitcoin/core/AddressFormatException;
    sget-object v11, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IRC nick does not parse as base58: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v4    # "e":Lcom/google/bitcoin/core/AddressFormatException;
    .restart local v1    # "addressBytes":[B
    .restart local v7    # "ipBytes":[B
    .restart local v9    # "port":I
    :catch_1
    move-exception v4

    .line 231
    .local v4, "e":Ljava/net/UnknownHostException;
    goto :goto_1

    .line 238
    .end local v1    # "addressBytes":[B
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .end local v7    # "ipBytes":[B
    .end local v9    # "port":I
    .end local v10    # "user":Ljava/lang/String;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 23
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetSocketAddress;>;"
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    .line 95
    const/4 v13, 0x0

    .line 97
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->server:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v11

    .line 99
    .local v11, "ips":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v10, v0

    .line 100
    .local v10, "ipCursorStart":I
    move v9, v10

    .line 102
    .local v9, "ipCursor":I
    :cond_0
    new-instance v18, Ljava/net/Socket;

    invoke-direct/range {v18 .. v18}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    .line 103
    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    .line 104
    .local v17, "timeoutMsec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    aget-object v8, v11, v9

    .line 107
    .local v8, "ip":Ljava/net/InetAddress;
    sget-object v18, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->log:Lorg/slf4j/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Connecting to IRC with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->port:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v8    # "ip":Ljava/net/InetAddress;
    :goto_0
    add-int/lit8 v18, v9, 0x1

    :try_start_2
    array-length v0, v11

    move/from16 v19, v0

    rem-int v9, v18, v19

    .line 115
    if-ne v9, v10, :cond_4

    .line 116
    new-instance v18, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not connect to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->server:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v9    # "ipCursor":I
    .end local v10    # "ipCursorStart":I
    .end local v11    # "ips":[Ljava/net/InetAddress;
    .end local v17    # "timeoutMsec":I
    :catch_0
    move-exception v7

    .line 175
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v18, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 178
    :goto_2
    if-eqz v13, :cond_1

    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedWriter;->close()V

    .line 181
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 184
    :cond_3
    :goto_3
    throw v18

    .line 109
    .restart local v9    # "ipCursor":I
    .restart local v10    # "ipCursorStart":I
    .restart local v11    # "ips":[Ljava/net/InetAddress;
    .restart local v17    # "timeoutMsec":I
    :catch_1
    move-exception v7

    .line 110
    .local v7, "e":Ljava/net/SocketTimeoutException;
    const/16 v18, 0x0

    :try_start_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    goto :goto_0

    .line 111
    .end local v7    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v7

    .line 112
    .local v7, "e":Ljava/io/IOException;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    goto :goto_0

    .line 118
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 120
    new-instance v18, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-direct/range {v19 .. v21}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    .line 121
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-direct/range {v18 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    :try_start_6
    const-string v18, "bcj%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/Random;

    invoke-direct/range {v21 .. v21}, Ljava/util/Random;-><init>()V

    const v22, 0x7fffffff

    invoke-virtual/range {v21 .. v22}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "nickRnd":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NICK "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 129
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "USER "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " 8 *: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->flush()V

    .line 135
    :cond_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "currLine":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->onIRCReceive(Ljava/lang/String;)V

    .line 140
    const-string v18, "004"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->checkLineStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 146
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JOIN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->channel:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 148
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NAMES "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->channel:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->flush()V

    .line 152
    :cond_7
    :goto_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->onIRCReceive(Ljava/lang/String;)V

    .line 154
    const-string v18, "353"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->checkLineStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 156
    const/16 v16, 0x0

    .line 157
    .local v16, "subIndex":I
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 158
    const/16 v16, 0x1

    .line 161
    :cond_8
    const-string v18, ":"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "spacedList":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->parseUserList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 173
    .end local v5    # "command":Ljava/lang/String;
    .end local v6    # "currLine":Ljava/lang/String;
    .end local v12    # "nickRnd":Ljava/lang/String;
    .end local v15    # "spacedList":Ljava/lang/String;
    .end local v16    # "subIndex":I
    :catch_3
    move-exception v7

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 163
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "command":Ljava/lang/String;
    .restart local v6    # "currLine":Ljava/lang/String;
    .restart local v12    # "nickRnd":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :cond_9
    const-string v18, "366"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->checkLineStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 170
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PART "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->channel:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 171
    const-string v18, "QUIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->logAndSend(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    if-eqz v14, :cond_b

    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 179
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->writer:Ljava/io/BufferedWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V

    .line 181
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 186
    :cond_d
    :goto_5
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/net/InetSocketAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/net/InetSocketAddress;

    return-object v18

    .line 182
    :catch_4
    move-exception v7

    .line 183
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v18, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->log:Lorg/slf4j/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception whilst closing IRC discovery: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_5

    .line 182
    .end local v5    # "command":Ljava/lang/String;
    .end local v6    # "currLine":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "ipCursor":I
    .end local v10    # "ipCursorStart":I
    .end local v11    # "ips":[Ljava/net/InetAddress;
    .end local v12    # "nickRnd":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "timeoutMsec":I
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    .line 183
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v19, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->log:Lorg/slf4j/Logger;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception whilst closing IRC discovery: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 177
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "ipCursor":I
    .restart local v10    # "ipCursorStart":I
    .restart local v11    # "ips":[Ljava/net/InetAddress;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "timeoutMsec":I
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method protected onIRCReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method protected onIRCSend(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;->connection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method
