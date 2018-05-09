.class public Lcom/google/bitcoin/core/BitcoinSerializer;
.super Ljava/lang/Object;
.source "BitcoinSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;
    }
.end annotation


# static fields
.field private static final COMMAND_LEN:I = 0xc

.field private static final log:Lorg/slf4j/Logger;

.field private static names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/bitcoin/core/Message;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private params:Lcom/google/bitcoin/core/NetworkParameters;

.field private parseLazy:Z

.field private parseRetain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/google/bitcoin/core/BitcoinSerializer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    .line 56
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/VersionMessage;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/InventoryMessage;

    const-string v2, "inv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/Block;

    const-string v2, "block"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/GetDataMessage;

    const-string v2, "getdata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/Transaction;

    const-string v2, "tx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/AddressMessage;

    const-string v2, "addr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/Ping;

    const-string v2, "ping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/Pong;

    const-string v2, "pong"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/VersionAck;

    const-string v2, "verack"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/GetBlocksMessage;

    const-string v2, "getblocks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/GetHeadersMessage;

    const-string v2, "getheaders"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/GetAddrMessage;

    const-string v2, "getaddr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/HeadersMessage;

    const-string v2, "headers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/BloomFilter;

    const-string v2, "filterload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/FilteredBlock;

    const-string v2, "merkleblock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/NotFoundMessage;

    const-string v2, "notfound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/MemoryPoolMessage;

    const-string v2, "mempool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lcom/google/bitcoin/core/RejectMessage;

    const-string v2, "reject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lcom/google/bitcoin/core/BitcoinSerializer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;ZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;ZZ)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parseLazy"    # Z
    .param p3, "parseRetain"    # Z

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    .line 93
    iput-object p1, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 94
    iput-boolean p2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    .line 95
    iput-boolean p3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    .line 96
    return-void
.end method

.method private makeMessage(Ljava/lang/String;I[B[B[B)Lcom/google/bitcoin/core/Message;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "payloadBytes"    # [B
    .param p4, "hash"    # [B
    .param p5, "checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v2, "version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    new-instance v0, Lcom/google/bitcoin/core/VersionMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const-string v2, "inv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    new-instance v0, Lcom/google/bitcoin/core/InventoryMessage;

    iget-object v1, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-boolean v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    iget-boolean v4, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    move-object v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/InventoryMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .line 243
    .local v0, "message":Lcom/google/bitcoin/core/Message;
    :goto_1
    if-eqz p5, :cond_0

    .line 244
    invoke-virtual {v0, p5}, Lcom/google/bitcoin/core/Message;->setChecksum([B)V

    goto :goto_0

    .line 204
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_2
    const-string v2, "block"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v1, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-boolean v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    iget-boolean v4, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    move-object v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto :goto_1

    .line 206
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_3
    const-string v2, "merkleblock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    new-instance v0, Lcom/google/bitcoin/core/FilteredBlock;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/FilteredBlock;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto :goto_1

    .line 208
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_4
    const-string v2, "getdata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    new-instance v0, Lcom/google/bitcoin/core/GetDataMessage;

    iget-object v1, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-boolean v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    iget-boolean v4, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    move-object v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/GetDataMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto :goto_1

    .line 210
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_5
    const-string v2, "getblocks"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    new-instance v0, Lcom/google/bitcoin/core/GetBlocksMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/GetBlocksMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto :goto_1

    .line 212
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_6
    const-string v2, "getheaders"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 213
    new-instance v0, Lcom/google/bitcoin/core/GetHeadersMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/GetHeadersMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto :goto_1

    .line 214
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_7
    const-string v2, "tx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 215
    new-instance v1, Lcom/google/bitcoin/core/Transaction;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    iget-boolean v6, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    move-object v3, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BLcom/google/bitcoin/core/Message;ZZI)V

    .line 216
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    if-eqz p4, :cond_8

    .line 217
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {p4}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Transaction;->setHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 218
    :cond_8
    move-object v0, v1

    .line 219
    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto/16 :goto_1

    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_9
    const-string v2, "addr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 220
    new-instance v0, Lcom/google/bitcoin/core/AddressMessage;

    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-boolean v5, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    iget-boolean v6, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    move-object v2, v0

    move-object v4, p3

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/bitcoin/core/AddressMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto/16 :goto_1

    .line 221
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_a
    const-string v2, "ping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 222
    new-instance v0, Lcom/google/bitcoin/core/Ping;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/Ping;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto/16 :goto_1

    .line 223
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_b
    const-string v2, "pong"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 224
    new-instance v0, Lcom/google/bitcoin/core/Pong;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/Pong;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .restart local v0    # "message":Lcom/google/bitcoin/core/Message;
    goto/16 :goto_1

    .line 225
    .end local v0    # "message":Lcom/google/bitcoin/core/Message;
    :cond_c
    const-string v2, "verack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 226
    new-instance v0, Lcom/google/bitcoin/core/VersionAck;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/VersionAck;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 227
    :cond_d
    const-string v2, "headers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 228
    new-instance v0, Lcom/google/bitcoin/core/HeadersMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/HeadersMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 229
    :cond_e
    const-string v2, "alert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 230
    new-instance v0, Lcom/google/bitcoin/core/AlertMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/AlertMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 231
    :cond_f
    const-string v2, "filterload"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 232
    new-instance v0, Lcom/google/bitcoin/core/BloomFilter;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/BloomFilter;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 233
    :cond_10
    const-string v2, "notfound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 234
    new-instance v0, Lcom/google/bitcoin/core/NotFoundMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/NotFoundMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 235
    :cond_11
    const-string v2, "mempool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 236
    new-instance v0, Lcom/google/bitcoin/core/MemoryPoolMessage;

    invoke-direct {v0}, Lcom/google/bitcoin/core/MemoryPoolMessage;-><init>()V

    goto/16 :goto_0

    .line 237
    :cond_12
    const-string v2, "reject"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 238
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p3}, Lcom/google/bitcoin/core/RejectMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto/16 :goto_0

    .line 240
    :cond_13
    sget-object v2, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    const-string v3, "No support for deserializing message with name {}"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    new-instance v0, Lcom/google/bitcoin/core/UnknownMessage;

    iget-object v2, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v2, p1, p3}, Lcom/google/bitcoin/core/UnknownMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deserialize(Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;
    .locals 2
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/BitcoinSerializer;->seekPastMagicBytes(Ljava/nio/ByteBuffer;)V

    .line 152
    new-instance v0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    invoke-direct {v0, p1}, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 154
    .local v0, "header":Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;
    invoke-virtual {p0, v0, p1}, Lcom/google/bitcoin/core/BitcoinSerializer;->deserializePayload(Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;

    move-result-object v1

    return-object v1
.end method

.method public deserializeHeader(Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;
    .locals 1
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;

    invoke-direct {v0, p1}, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public deserializePayload(Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/Message;
    .locals 10
    .param p1, "header"    # Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;
    .param p2, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 170
    iget v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    new-array v3, v0, [B

    .line 171
    .local v3, "payloadBytes":[B
    iget v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    invoke-virtual {p2, v3, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 175
    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v4

    .line 176
    .local v4, "hash":[B
    iget-object v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    aget-byte v0, v0, v7

    aget-byte v1, v4, v7

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    aget-byte v0, v0, v8

    aget-byte v1, v4, v8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    aget-byte v0, v0, v9

    aget-byte v1, v4, v9

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    aget-byte v0, v0, v2

    aget-byte v1, v4, v2

    if-eq v0, v1, :cond_1

    .line 178
    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checksum failed to verify, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    const-string v1, "Received {} byte \'{}\' message: {}"

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    iget-object v5, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;

    aput-object v5, v2, v8

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_2
    :try_start_0
    iget-object v1, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;

    iget v2, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    iget-object v5, p1, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/BitcoinSerializer;->makeMessage(Ljava/lang/String;I[B[B[B)Lcom/google/bitcoin/core/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/google/bitcoin/core/ProtocolException;

    const-string v1, "Error deserializing message \n"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public isParseLazyMode()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseLazy:Z

    return v0
.end method

.method public isParseRetainMode()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->parseRetain:Z

    return v0
.end method

.method public seekPastMagicBytes(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v2, 0x3

    .line 251
    .local v2, "magicCursor":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 254
    .local v0, "b":B
    const-wide/16 v3, 0xff

    iget-object v5, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v5

    mul-int/lit8 v7, v2, 0x8

    ushr-long/2addr v5, v7

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 255
    .local v1, "expectedByte":B
    if-ne v0, v1, :cond_1

    .line 256
    add-int/lit8 v2, v2, -0x1

    .line 257
    if-gez v2, :cond_0

    .line 259
    return-void

    .line 264
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public serialize(Lcom/google/bitcoin/core/Message;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "message"    # Lcom/google/bitcoin/core/Message;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v1, Lcom/google/bitcoin/core/BitcoinSerializer;->names:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BitcoinSerializer doesn\'t currently know how to serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Message;->bitcoinSerialize()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/bitcoin/core/BitcoinSerializer;->serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V

    .line 131
    return-void
.end method

.method public serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 102
    const/16 v3, 0x18

    new-array v1, v3, [B

    .line 103
    .local v1, "header":[B
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v6}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayBE(J[BI)V

    .line 107
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    .line 108
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    array-length v3, p2

    int-to-long v3, v3

    const/16 v5, 0x10

    invoke-static {v3, v4, v1, v5}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayLE(J[BI)V

    .line 113
    invoke-static {p2}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v0

    .line 114
    .local v0, "hash":[B
    const/16 v3, 0x14

    const/4 v4, 0x4

    invoke-static {v0, v6, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    sget-object v3, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    sget-object v3, Lcom/google/bitcoin/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    const-string v4, "Sending {} message: {}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :cond_1
    return-void
.end method
