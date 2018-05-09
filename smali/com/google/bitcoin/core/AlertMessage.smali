.class public Lcom/google/bitcoin/core/AlertMessage;
.super Lcom/google/bitcoin/core/Message;
.source "AlertMessage.java"


# static fields
.field private static final MAX_SET_SIZE:J = 0x64L


# instance fields
.field private cancel:J

.field private cancelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private content:[B

.field private expiration:Ljava/util/Date;

.field private id:J

.field private matchingSubVers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxVer:J

.field private minVer:J

.field private priority:J

.field private relayUntil:Ljava/util/Date;

.field private reserved:Ljava/lang/String;

.field private signature:[B

.field private statusBar:Ljava/lang/String;

.field private version:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 42
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->version:J

    .line 58
    return-void
.end method


# virtual methods
.method public getCancel()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->cancel:J

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->id:J

    return-wide v0
.end method

.method public getMaxVer()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->maxVer:J

    return-wide v0
.end method

.method public getMinVer()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->minVer:J

    return-wide v0
.end method

.method public getPriority()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->priority:J

    return-wide v0
.end method

.method public getRelayUntil()Ljava/util/Date;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->relayUntil:Ljava/util/Date;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->statusBar:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/google/bitcoin/core/AlertMessage;->version:J

    return-wide v0
.end method

.method public isSignatureValid()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/bitcoin/core/AlertMessage;->content:[B

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/AlertMessage;->signature:[B

    iget-object v2, p0, Lcom/google/bitcoin/core/AlertMessage;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/NetworkParameters;->getAlertSigningKey()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/ECKey;->verify([B[B[B)Z

    move-result v0

    return v0
.end method

.method parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 69
    iget v4, p0, Lcom/google/bitcoin/core/AlertMessage;->cursor:I

    .line 70
    .local v4, "startPos":I
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->content:[B

    .line 71
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->signature:[B

    .line 73
    iput v4, p0, Lcom/google/bitcoin/core/AlertMessage;->cursor:I

    .line 74
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readVarInt()J

    .line 76
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->version:J

    .line 78
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->relayUntil:Ljava/util/Date;

    .line 79
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->expiration:Ljava/util/Date;

    .line 80
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->id:J

    .line 81
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->cancel:J

    .line 83
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readVarInt()J

    move-result-wide v0

    .line 84
    .local v0, "cancelSetSize":J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0x64

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 85
    :cond_0
    new-instance v7, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad cancel set size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    long-to-int v8, v0

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->cancelSet:Ljava/util/Set;

    .line 90
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v7, v2, v0

    if-gez v7, :cond_2

    .line 91
    iget-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->cancelSet:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->minVer:J

    .line 94
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->maxVer:J

    .line 96
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readVarInt()J

    move-result-wide v5

    .line 97
    .local v5, "subverSetSize":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    const-wide/16 v7, 0x64

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 98
    :cond_3
    new-instance v7, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad subver set size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_4
    new-instance v7, Ljava/util/HashSet;

    long-to-int v8, v5

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->matchingSubVers:Ljava/util/Set;

    .line 101
    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v7, v2, v5

    if-gez v7, :cond_5

    .line 102
    iget-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->matchingSubVers:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readUint32()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/bitcoin/core/AlertMessage;->priority:J

    .line 105
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->comment:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->statusBar:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/bitcoin/core/AlertMessage;->reserved:Ljava/lang/String;

    .line 109
    iget v7, p0, Lcom/google/bitcoin/core/AlertMessage;->cursor:I

    iget v8, p0, Lcom/google/bitcoin/core/AlertMessage;->offset:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/google/bitcoin/core/AlertMessage;->length:I

    .line 110
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
    .line 123
    return-void
.end method

.method public setCancel(J)V
    .locals 0
    .param p1, "cancel"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/google/bitcoin/core/AlertMessage;->cancel:J

    .line 175
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/bitcoin/core/AlertMessage;->comment:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiration"    # Ljava/util/Date;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/bitcoin/core/AlertMessage;->expiration:Ljava/util/Date;

    .line 150
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/google/bitcoin/core/AlertMessage;->id:J

    .line 163
    return-void
.end method

.method public setMaxVer(J)V
    .locals 0
    .param p1, "maxVer"    # J

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/google/bitcoin/core/AlertMessage;->maxVer:J

    .line 203
    return-void
.end method

.method public setMinVer(J)V
    .locals 0
    .param p1, "minVer"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/google/bitcoin/core/AlertMessage;->minVer:J

    .line 189
    return-void
.end method

.method public setPriority(J)V
    .locals 0
    .param p1, "priority"    # J

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/google/bitcoin/core/AlertMessage;->priority:J

    .line 215
    return-void
.end method

.method public setRelayUntil(Ljava/util/Date;)V
    .locals 0
    .param p1, "relayUntil"    # Ljava/util/Date;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/bitcoin/core/AlertMessage;->relayUntil:Ljava/util/Date;

    .line 138
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/bitcoin/core/AlertMessage;->reserved:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setStatusBar(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusBar"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/bitcoin/core/AlertMessage;->statusBar:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALERT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
