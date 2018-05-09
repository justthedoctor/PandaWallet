.class public Lcom/google/bitcoin/core/AddressMessage;
.super Lcom/google/bitcoin/core/Message;
.source "AddressMessage.java"


# static fields
.field private static final MAX_ADDRESSES:J = 0x400L

.field private static final serialVersionUID:J = 0x6fd4c67b0418ed24L


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private transient numAddresses:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 56
    const/high16 v6, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 57
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    const/high16 v6, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .param p4, "parseLazy"    # Z
    .param p5, "parseRetain"    # Z
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "parseLazy"    # Z
    .param p4, "parseRetain"    # Z
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 49
    return-void
.end method


# virtual methods
.method public addAddress(Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 2
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->unCache()V

    .line 129
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->maybeParse()V

    .line 130
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/PeerAddress;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 131
    iget-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->getMessageSize()I

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getMessageSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    goto :goto_0
.end method

.method bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    if-nez v2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v2, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 93
    .local v0, "addr":Lcom/google/bitcoin/core/PeerAddress;
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->maybeParse()V

    .line 124
    iget-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()I
    .locals 4

    .prologue
    .line 98
    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcom/google/bitcoin/core/VarInt;

    iget-object v1, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lcom/google/bitcoin/core/VarInt;->getSizeInBytes()I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    .line 103
    iget v1, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    iget-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->protocolVersion:I

    const/16 v3, 0x7aaa

    if-le v0, v3, :cond_2

    const/16 v0, 0x1e

    :goto_1
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    .line 105
    :cond_1
    iget v0, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    goto :goto_0

    .line 103
    :cond_2
    const/16 v0, 0x1a

    goto :goto_1
.end method

.method parse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->readVarInt()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    .line 73
    iget-wide v1, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 74
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    const-string v2, "Address message too large."

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    .line 76
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    int-to-long v1, v8

    iget-wide v3, p0, Lcom/google/bitcoin/core/AddressMessage;->numAddresses:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 77
    new-instance v0, Lcom/google/bitcoin/core/PeerAddress;

    iget-object v1, p0, Lcom/google/bitcoin/core/AddressMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/core/AddressMessage;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/AddressMessage;->cursor:I

    iget v4, p0, Lcom/google/bitcoin/core/AddressMessage;->protocolVersion:I

    iget-boolean v6, p0, Lcom/google/bitcoin/core/AddressMessage;->parseLazy:Z

    iget-boolean v7, p0, Lcom/google/bitcoin/core/AddressMessage;->parseRetain:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIILcom/google/bitcoin/core/Message;ZZ)V

    .line 78
    .local v0, "addr":Lcom/google/bitcoin/core/PeerAddress;
    iget-object v1, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget v1, p0, Lcom/google/bitcoin/core/AddressMessage;->cursor:I

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getMessageSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/AddressMessage;->cursor:I

    .line 76
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "addr":Lcom/google/bitcoin/core/PeerAddress;
    :cond_1
    iget v1, p0, Lcom/google/bitcoin/core/AddressMessage;->cursor:I

    iget v2, p0, Lcom/google/bitcoin/core/AddressMessage;->offset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    .line 82
    return-void
.end method

.method protected parseLite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public removeAddress(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->unCache()V

    .line 140
    iget-object v1, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 141
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerAddress;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 142
    iget v1, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AddressMessage;->getMessageSize()I

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v1, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getMessageSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/AddressMessage;->length:I

    goto :goto_0
.end method

.method setChecksum([B)V
    .locals 1
    .param p1, "checksum"    # [B

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/bitcoin/core/AddressMessage;->parseRetain:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/google/bitcoin/core/Message;->setChecksum([B)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/AddressMessage;->checksum:[B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "addr: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v3, p0, Lcom/google/bitcoin/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 153
    .local v0, "a":Lcom/google/bitcoin/core/PeerAddress;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    .end local v0    # "a":Lcom/google/bitcoin/core/PeerAddress;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
