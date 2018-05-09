.class public Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;
.super Lcom/subgraph/orchid/circuits/cells/CellImpl;
.source "RelayCellImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RelayCell;


# instance fields
.field private final circuitNode:Lcom/subgraph/orchid/CircuitNode;

.field private final isOutgoing:Z

.field private final relayCommand:I

.field private final streamId:I


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/CircuitNode;III)V
    .locals 6
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;
    .param p2, "circuit"    # I
    .param p3, "stream"    # I
    .param p4, "relayCommand"    # I

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V
    .locals 2
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;
    .param p2, "circuit"    # I
    .param p3, "stream"    # I
    .param p4, "relayCommand"    # I
    .param p5, "isRelayEarly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p5, :cond_0

    const/16 v0, 0x9

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    .line 40
    iput p4, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    .line 41
    iput p3, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    .line 43
    invoke-virtual {p0, p4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putByte(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    .line 45
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putInt(I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    .line 48
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private constructor <init>(Lcom/subgraph/orchid/CircuitNode;[B)V
    .locals 3
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;
    .param p2, "rawCell"    # [B

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>([B)V

    .line 52
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    .line 53
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByte()I

    move-result v1

    iput v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    .line 54
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    .line 55
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    move-result v1

    iput v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    .line 57
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getInt()I

    .line 58
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    move-result v0

    .line 59
    .local v0, "payloadLength":I
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 60
    add-int/lit8 v1, v0, 0xe

    array-length v2, p2

    if-le v1, v2, :cond_0

    .line 61
    new-instance v1, Lcom/subgraph/orchid/TorException;

    const-string v2, "Header length field exceeds total size of cell"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0xe

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    return-void
.end method

.method public static commandToDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "command"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relay command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    const-string v0, "RELAY_BEGIN"

    goto :goto_0

    .line 149
    :pswitch_1
    const-string v0, "RELAY_DATA"

    goto :goto_0

    .line 151
    :pswitch_2
    const-string v0, "RELAY_END"

    goto :goto_0

    .line 153
    :pswitch_3
    const-string v0, "RELAY_CONNECTED"

    goto :goto_0

    .line 155
    :pswitch_4
    const-string v0, "RELAY_SENDME"

    goto :goto_0

    .line 157
    :pswitch_5
    const-string v0, "RELAY_EXTEND"

    goto :goto_0

    .line 159
    :pswitch_6
    const-string v0, "RELAY_EXTENDED"

    goto :goto_0

    .line 161
    :pswitch_7
    const-string v0, "RELAY_TRUNCATE"

    goto :goto_0

    .line 163
    :pswitch_8
    const-string v0, "RELAY_TRUNCATED"

    goto :goto_0

    .line 165
    :pswitch_9
    const-string v0, "RELAY_DROP"

    goto :goto_0

    .line 167
    :pswitch_a
    const-string v0, "RELAY_RESOLVE"

    goto :goto_0

    .line 169
    :pswitch_b
    const-string v0, "RELAY_RESOLVED"

    goto :goto_0

    .line 171
    :pswitch_c
    const-string v0, "RELAY_BEGIN_DIR"

    goto :goto_0

    .line 173
    :pswitch_d
    const-string v0, "RELAY_EXTEND2"

    goto :goto_0

    .line 175
    :pswitch_e
    const-string v0, "RELAY_EXTENDED2"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static createFromCell(Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;
    .locals 3
    .param p0, "node"    # Lcom/subgraph/orchid/CircuitNode;
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 13
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 14
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to create RelayCell from Cell type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;[B)V

    return-object v0
.end method

.method public static reasonToDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "reasonCode"    # I

    .prologue
    .line 112
    packed-switch p0, :pswitch_data_0

    .line 140
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 114
    :pswitch_1
    const-string v0, "Unlisted reason"

    goto :goto_0

    .line 116
    :pswitch_2
    const-string v0, "Couldn\'t look up hostname"

    goto :goto_0

    .line 118
    :pswitch_3
    const-string v0, "Remote host refused connection"

    goto :goto_0

    .line 120
    :pswitch_4
    const-string v0, "OR refuses to connect to host or port"

    goto :goto_0

    .line 122
    :pswitch_5
    const-string v0, "Circuit is being destroyed"

    goto :goto_0

    .line 124
    :pswitch_6
    const-string v0, "Anonymized TCP connection was closed"

    goto :goto_0

    .line 126
    :pswitch_7
    const-string v0, "Connection timed out, or OR timed out while connecting"

    goto :goto_0

    .line 128
    :pswitch_8
    const-string v0, "OR is temporarily hibernating"

    goto :goto_0

    .line 130
    :pswitch_9
    const-string v0, "Internal error at the OR"

    goto :goto_0

    .line 132
    :pswitch_a
    const-string v0, "OR has no resources to fulfill request"

    goto :goto_0

    .line 134
    :pswitch_b
    const-string v0, "Connection was unexpectedly reset"

    goto :goto_0

    .line 136
    :pswitch_c
    const-string v0, "Tor protocol violation"

    goto :goto_0

    .line 138
    :pswitch_d
    const-string v0, "Client sent RELAY_BEGIN_DIR to a non-directory server."

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public commandToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 100
    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByteAt(I)I

    move-result v0

    .line 102
    .local v0, "code":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .end local v0    # "code":I
    :goto_0
    return-object v1

    .line 103
    :cond_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByteAt(I)I

    move-result v0

    .line 105
    .restart local v0    # "code":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->reasonToDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    .end local v0    # "code":I
    :cond_1
    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCircuitNode()Lcom/subgraph/orchid/CircuitNode;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    return-object v0
.end method

.method public getPayloadBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getRelayCommand()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    return v0
.end method

.method public setDigest([B)V
    .locals 3
    .param p1, "digest"    # [B

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 79
    add-int/lit8 v1, v0, 0x8

    aget-byte v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putByteAt(II)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public setLength()V
    .locals 2

    .prologue
    .line 74
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBytesConsumed()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShortAt(II)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " payload_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBytesConsumed()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " payload_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
