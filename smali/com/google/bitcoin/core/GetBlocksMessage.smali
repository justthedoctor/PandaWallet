.class public Lcom/google/bitcoin/core/GetBlocksMessage;
.super Lcom/google/bitcoin/core/Message;
.source "GetBlocksMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x30495b93e362db4cL


# instance fields
.field protected locator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field protected stopHash:Lcom/google/bitcoin/core/Sha256Hash;

.field protected version:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p3, "stopHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "locator":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 36
    iget v0, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->protocolVersion:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    .line 37
    iput-object p2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 39
    return-void
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
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 43
    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-wide/32 v2, 0x11171

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 91
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .line 94
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 97
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/google/bitcoin/core/GetBlocksMessage;

    .line 104
    .local v0, "other":Lcom/google/bitcoin/core/GetBlocksMessage;
    iget-wide v2, v0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    iget-object v3, v0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v3, v0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLocator()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    return-object v0
.end method

.method public getStopHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 111
    iget-wide v3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    long-to-int v3, v3

    const-string v4, "getblocks"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int v1, v3, v4

    .line 112
    .local v1, "hashCode":I
    iget-object v3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .local v0, "aLocator":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    .line 113
    .end local v0    # "aLocator":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 114
    return v1
.end method

.method public parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 55
    iget v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->offset:I

    iput v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->cursor:I

    .line 56
    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readUint32()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    .line 57
    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readVarInt()J

    move-result-wide v2

    long-to-int v1, v2

    .line 58
    .local v1, "startCount":I
    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    .line 59
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of locators cannot be > 500, received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 62
    iget-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 65
    return-void
.end method

.method protected parseLite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 46
    iget v1, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->offset:I

    iput v1, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->cursor:I

    .line 47
    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readUint32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->version:J

    .line 48
    invoke-virtual {p0}, Lcom/google/bitcoin/core/GetBlocksMessage;->readVarInt()J

    move-result-wide v1

    long-to-int v0, v1

    .line 49
    .local v0, "startCount":I
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 50
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of locators cannot be > 500, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iget v1, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->cursor:I

    iget v2, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->offset:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->length:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v3, "getblocks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v3, p0, Lcom/google/bitcoin/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Sha256Hash;

    .line 79
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    .end local v1    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
