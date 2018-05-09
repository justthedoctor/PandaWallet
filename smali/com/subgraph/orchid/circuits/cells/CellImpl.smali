.class public Lcom/subgraph/orchid/circuits/cells/CellImpl;
.super Ljava/lang/Object;
.source "CellImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Cell;


# instance fields
.field protected final cellBuffer:Ljava/nio/ByteBuffer;

.field private final circuitId:I

.field private final command:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2
    .param p1, "circuitId"    # I
    .param p2, "command"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 82
    iput p2, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    .line 83
    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method private constructor <init>(III)V
    .locals 2
    .param p1, "circuitId"    # I
    .param p2, "command"    # I
    .param p3, "payloadLength"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 71
    iput p2, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    .line 72
    add-int/lit8 v0, p3, 0x5

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 77
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2
    .param p1, "rawCell"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 92
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    .line 93
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 94
    return-void
.end method

.method public static createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 1
    .param p0, "circuitId"    # I
    .param p1, "command"    # I

    .prologue
    .line 13
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    return-object v0
.end method

.method public static createVarCell(III)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 1
    .param p0, "circuitId"    # I
    .param p1, "command"    # I
    .param p2, "payloadLength"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(III)V

    return-object v0
.end method

.method public static errorToDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 184
    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "No error reason given"

    goto :goto_0

    .line 188
    :pswitch_1
    const-string v0, "Tor protocol violation"

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v0, "Internal error"

    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "Response to a TRUNCATE command sent from client"

    goto :goto_0

    .line 194
    :pswitch_4
    const-string v0, "Not currently operating; trying to save bandwidth."

    goto :goto_0

    .line 196
    :pswitch_5
    const-string v0, "Out of memory, sockets, or circuit IDs."

    goto :goto_0

    .line 198
    :pswitch_6
    const-string v0, "Unable to reach server."

    goto :goto_0

    .line 200
    :pswitch_7
    const-string v0, "Connected to server, but its OR identity was not as expected."

    goto :goto_0

    .line 202
    :pswitch_8
    const-string v0, "The OR connection that was carrying this circuit died."

    goto :goto_0

    .line 204
    :pswitch_9
    const-string v0, "The circuit has expired for being dirty or old."

    goto :goto_0

    .line 206
    :pswitch_a
    const-string v0, "Circuit construction took too long."

    goto :goto_0

    .line 208
    :pswitch_b
    const-string v0, "The circuit was destroyed without client TRUNCATE"

    goto :goto_0

    .line 210
    :pswitch_c
    const-string v0, "Request for unknown hidden service"

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static readAll(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    .line 52
    return-void
.end method

.method private static readAll(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "bytesRead":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 57
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 58
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 59
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 60
    :cond_0
    add-int/2addr v0, v1

    .line 61
    goto :goto_0

    .line 62
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method public static readFromInputStream(Ljava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readHeaderFromInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 22
    .local v3, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int v1, v4, v5

    .line 23
    .local v1, "circuitId":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    .line 25
    .local v2, "command":I
    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7f

    if-le v2, v4, :cond_1

    .line 26
    :cond_0
    invoke-static {v1, v2, p0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readVarCell(IILjava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    .line 30
    .local v0, "cell":Lcom/subgraph/orchid/circuits/cells/CellImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->getCellBytes()[B

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x1fd

    invoke-static {p0, v4, v5, v6}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    goto :goto_0
.end method

.method private static readHeaderFromInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 37
    .local v0, "cellHeader":[B
    invoke-static {p0, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[B)V

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static readVarCell(IILjava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 5
    .param p0, "circuitId"    # I
    .param p1, "command"    # I
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 43
    .local v2, "lengthField":[B
    invoke-static {p2, v2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[B)V

    .line 44
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 45
    .local v1, "length":I
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, p0, p1, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(III)V

    .line 46
    .local v0, "cell":Lcom/subgraph/orchid/circuits/cells/CellImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->getCellBytes()[B

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p2, v3, v4, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public cellBytesConsumed()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public cellBytesRemaining()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getByte()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByteArray([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 130
    return-void
.end method

.method public getByteAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCellBytes()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getCircuitId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getShort()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getShortAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public putByte(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    return-void
.end method

.method public putByteArray([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method

.method public putByteArray([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 173
    return-void
.end method

.method public putByteAt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 146
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    return-void
.end method

.method public putShort(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    return-void
.end method

.method public putShortAt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 154
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .line 162
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->putByteArray([B)V

    .line 165
    return-void
.end method

.method public resetToPayload()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell: circuit_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " payload_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
