.class public Lcom/google/bitcoin/core/HeadersMessage;
.super Lcom/google/bitcoin/core/Message;
.source "HeadersMessage.java"


# static fields
.field public static final MAX_HEADERS:I = 0x7d0

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private blockHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/bitcoin/core/HeadersMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 43
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[Lcom/google/bitcoin/core/Block;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "headers"    # [Lcom/google/bitcoin/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 47
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 53
    iget-object v2, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Block;

    .line 54
    .local v0, "header":Lcom/google/bitcoin/core/Block;
    iget-object v2, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/Block;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    .line 58
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/Block;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 60
    .end local v0    # "header":Lcom/google/bitcoin/core/Block;
    :cond_1
    return-void
.end method

.method public getBlockHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    return-object v0
.end method

.method parse()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x51

    const/4 v3, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/google/bitcoin/core/HeadersMessage;->readVarInt()J

    move-result-wide v7

    .line 77
    .local v7, "numHeaders":J
    const-wide/16 v9, 0x7d0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    .line 78
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many headers: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which is larger than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    .line 83
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v9, v6

    cmp-long v1, v9, v7

    if-gez v1, :cond_3

    .line 86
    invoke-virtual {p0, v5}, Lcom/google/bitcoin/core/HeadersMessage;->readBytes(I)[B

    move-result-object v2

    .line 89
    .local v2, "blockHeader":[B
    const/4 v1, 0x0

    aget-byte v1, v2, v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/bitcoin/core/HeadersMessage;->readBytes(I)[B

    .line 91
    :cond_1
    const/16 v1, 0x50

    aget-byte v1, v2, v1

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block header does not end with a null byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v1, p0, Lcom/google/bitcoin/core/HeadersMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .line 94
    .local v0, "newBlockHeader":Lcom/google/bitcoin/core/Block;
    iget-object v1, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "newBlockHeader":Lcom/google/bitcoin/core/Block;
    .end local v2    # "blockHeader":[B
    :cond_3
    sget-object v1, Lcom/google/bitcoin/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    const/4 v6, 0x0

    :goto_1
    int-to-long v3, v6

    cmp-long v1, v3, v7

    if-gez v1, :cond_4

    .line 100
    sget-object v3, Lcom/google/bitcoin/core/HeadersMessage;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/google/bitcoin/core/HeadersMessage;->blockHeaders:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Block;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 103
    :cond_4
    return-void
.end method

.method protected parseLite()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 64
    iget v3, p0, Lcom/google/bitcoin/core/HeadersMessage;->length:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 65
    iget v2, p0, Lcom/google/bitcoin/core/HeadersMessage;->cursor:I

    .line 66
    .local v2, "saveCursor":I
    invoke-virtual {p0}, Lcom/google/bitcoin/core/HeadersMessage;->readVarInt()J

    move-result-wide v0

    .line 67
    .local v0, "numHeaders":J
    iput v2, p0, Lcom/google/bitcoin/core/HeadersMessage;->cursor:I

    .line 70
    long-to-int v3, v0

    mul-int/lit8 v3, v3, 0x51

    iput v3, p0, Lcom/google/bitcoin/core/HeadersMessage;->length:I

    .line 72
    .end local v0    # "numHeaders":J
    .end local v2    # "saveCursor":I
    :cond_0
    return-void
.end method
