.class public abstract Lcom/google/bitcoin/core/ListMessage;
.super Lcom/google/bitcoin/core/Message;
.source "ListMessage.java"


# static fields
.field public static final MAX_INVENTORY_ITEMS:J = 0xc350L

.field private static final serialVersionUID:J = -0x3b57090e91c17adbL


# instance fields
.field private arrayLen:J

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/InventoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "parseLazy"    # Z
    .param p4, "parseRetain"    # Z
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 45
    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/bitcoin/core/InventoryItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/bitcoin/core/InventoryItem;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->unCache()V

    .line 61
    iget v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    iget-object v1, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    iget-object v1, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 64
    return-void
.end method

.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 117
    iget-object v2, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/InventoryItem;

    .line 119
    .local v0, "i":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v2, v0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/InventoryItem$Type;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 121
    iget-object v2, v0, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 123
    .end local v0    # "i":Lcom/google/bitcoin/core/InventoryItem;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/bitcoin/core/ListMessage;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/InventoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->maybeParse()V

    .line 56
    iget-object v0, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    iget-wide v5, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    long-to-int v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v4, v0

    iget-wide v6, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 86
    iget v4, p0, Lcom/google/bitcoin/core/ListMessage;->cursor:I

    add-int/lit8 v4, v4, 0x24

    iget-object v5, p0, Lcom/google/bitcoin/core/ListMessage;->bytes:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 87
    new-instance v4, Lcom/google/bitcoin/core/ProtocolException;

    const-string v5, "Ran off the end of the INV"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->readUint32()J

    move-result-wide v4

    long-to-int v3, v4

    .line 92
    .local v3, "typeCode":I
    packed-switch v3, :pswitch_data_0

    .line 106
    new-instance v4, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown CInv type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :pswitch_0
    sget-object v2, Lcom/google/bitcoin/core/InventoryItem$Type;->Error:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 108
    .local v2, "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    :goto_1
    new-instance v1, Lcom/google/bitcoin/core/InventoryItem;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 109
    .local v1, "item":Lcom/google/bitcoin/core/InventoryItem;
    iget-object v4, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "item":Lcom/google/bitcoin/core/InventoryItem;
    .end local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    :pswitch_1
    sget-object v2, Lcom/google/bitcoin/core/InventoryItem$Type;->Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 98
    .restart local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    goto :goto_1

    .line 100
    .end local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    :pswitch_2
    sget-object v2, Lcom/google/bitcoin/core/InventoryItem$Type;->Block:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 101
    .restart local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    goto :goto_1

    .line 103
    .end local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    :pswitch_3
    sget-object v2, Lcom/google/bitcoin/core/InventoryItem$Type;->FilteredBlock:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 104
    .restart local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    goto :goto_1

    .line 111
    .end local v2    # "type":Lcom/google/bitcoin/core/InventoryItem$Type;
    .end local v3    # "typeCode":I
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/bitcoin/core/ListMessage;->bytes:[B

    .line 112
    return-void

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected parseLite()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->readVarInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    .line 76
    iget-wide v0, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many items in INV message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/core/ListMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/ListMessage;->offset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/bitcoin/core/ListMessage;->arrayLen:J

    const-wide/16 v4, 0x24

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 79
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ListMessage;->unCache()V

    .line 68
    iget v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    iget-object v1, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    iget v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    iget-object v1, p0, Lcom/google/bitcoin/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x24

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/ListMessage;->length:I

    .line 71
    return-void
.end method
