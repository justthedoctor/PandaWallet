.class public Lcom/google/bitcoin/core/TransactionOutPoint;
.super Lcom/google/bitcoin/core/ChildMessage;
.source "TransactionOutPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final MESSAGE_LENGTH:I = 0x24

.field private static final serialVersionUID:J = -0x57b847737c2d8e33L


# instance fields
.field fromTx:Lcom/google/bitcoin/core/Transaction;

.field private hash:Lcom/google/bitcoin/core/Sha256Hash;

.field private index:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Sha256Hash;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "index"    # J
    .param p4, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 62
    iput-wide p2, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    .line 63
    iput-object p4, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 64
    const/16 v0, 0x24

    iput v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->length:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "index"    # J
    .param p4, "fromTx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 49
    iput-wide p2, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    .line 50
    if-eqz p4, :cond_0

    .line 51
    invoke-virtual {p4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 52
    iput-object p4, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 57
    :goto_0
    const/16 v0, 0x24

    iput v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->length:I

    .line 58
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZ)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .param p4, "parent"    # Lcom/google/bitcoin/core/Message;
    .param p5, "parseLazy"    # Z
    .param p6, "parseRetain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v7, 0x24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 87
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->maybeParse()V

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 190
    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-wide v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 194
    instance-of v2, p1, Lcom/google/bitcoin/core/TransactionOutPoint;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 195
    check-cast v0, Lcom/google/bitcoin/core/TransactionOutPoint;

    .line 196
    .local v0, "o":Lcom/google/bitcoin/core/TransactionOutPoint;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getConnectedKey(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/ECKey;
    .locals 7
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    .line 142
    .local v1, "connectedOutput":Lcom/google/bitcoin/core/TransactionOutput;
    const-string v4, "Input is not connected so cannot retrieve key"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    .line 144
    .local v2, "connectedScript":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v0

    .line 146
    .local v0, "addressBytes":[B
    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubHash([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v4

    .line 149
    .end local v0    # "addressBytes":[B
    :goto_0
    return-object v4

    .line 147
    :cond_0
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->getPubKey()[B

    move-result-object v3

    .line 149
    .local v3, "pubkeyBytes":[B
    invoke-virtual {p1, v3}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubKey([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v4

    goto :goto_0

    .line 151
    .end local v3    # "pubkeyBytes":[B
    :cond_1
    new-instance v4, Lcom/google/bitcoin/core/ScriptException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not understand form of connected output script: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionOutput;

    goto :goto_0
.end method

.method getConnectedPubKeyScript()[B
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v0

    .line 130
    .local v0, "result":[B
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    return-object v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->maybeParse()V

    .line 166
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->maybeParse()V

    .line 175
    iget-wide v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    return-wide v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x24

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 96
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutPoint;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    .line 97
    return-void
.end method

.method protected parseLite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 90
    const/16 v0, 0x24

    iput v0, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->length:I

    .line 91
    return-void
.end method

.method setHash(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 0
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 171
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .param p1, "index"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/bitcoin/core/TransactionOutPoint;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
