.class public Lcom/google/bitcoin/core/RejectMessage;
.super Lcom/google/bitcoin/core/Message;
.source "RejectMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x48d112ae180b3000L


# instance fields
.field private code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field private message:Ljava/lang/String;

.field private messageHash:Lcom/google/bitcoin/core/Sha256Hash;

.field private reason:Ljava/lang/String;


# direct methods
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
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 73
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
    .line 77
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 78
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
    .line 98
    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, "messageBytes":[B
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    array-length v3, v0

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 101
    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    iget-byte v2, v2, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->code:B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 103
    .local v1, "reasonBytes":[B
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    array-length v3, v1

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    const-string v3, "block"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    const-string v3, "tx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 107
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 154
    instance-of v0, p1, Lcom/google/bitcoin/core/RejectMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/RejectMessage;

    iget-object v0, v0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/RejectMessage;

    iget-object v0, v0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    iget-object v1, p0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/RejectMessage;

    iget-object v0, v0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/bitcoin/core/RejectMessage;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v1, p0, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReasonCode()Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    return-object v0
.end method

.method public getReasonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->ensureParsed()V

    .line 115
    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectedObjectHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->ensureParsed()V

    .line 123
    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 164
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 167
    return v0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/google/bitcoin/core/RejectMessage;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->parseLite()V

    .line 94
    :cond_0
    return-void
.end method

.method protected parseLite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/RejectMessage;->readBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->fromCode(B)Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->code:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 84
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->reason:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "tx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/RejectMessage;->messageHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 87
    :cond_1
    iget v0, p0, Lcom/google/bitcoin/core/RejectMessage;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/RejectMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/RejectMessage;->length:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getRejectedObjectHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 144
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    if-eqz v0, :cond_0

    .line 145
    const-string v1, "Reject: %s %s for reason \'%s\' (%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getRejectedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getRejectedObjectHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getReasonString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getReasonCode()Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    move-result-object v3

    iget-byte v3, v3, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->code:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Reject: %s for reason \'%s\' (%d)"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getRejectedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getReasonString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/google/bitcoin/core/RejectMessage;->getReasonCode()Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    move-result-object v3

    iget-byte v3, v3, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->code:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
