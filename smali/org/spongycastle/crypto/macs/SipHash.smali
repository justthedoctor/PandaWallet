.class public Lorg/spongycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;
.source "SipHash.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field protected buf:[B

.field protected bufPos:I

.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected v4:J

.field protected wordCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    .line 29
    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    .line 30
    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->c:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->d:I

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "c"    # I
    .param p2, "d"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    .line 29
    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    .line 30
    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    .line 50
    iput p1, p0, Lorg/spongycastle/crypto/macs/SipHash;->c:I

    .line 51
    iput p2, p0, Lorg/spongycastle/crypto/macs/SipHash;->d:I

    .line 52
    return-void
.end method

.method protected static rotateLeft(JI)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "n"    # I

    .prologue
    .line 190
    shl-long v0, p0, p2

    rsub-int/lit8 v2, p2, 0x40

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected applySipRounds(I)V
    .locals 6
    .param p1, "n"    # I

    .prologue
    const/16 v5, 0x20

    .line 169
    const/4 v0, 0x0

    .local v0, "r":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 171
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    .line 172
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    .line 173
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    .line 174
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 175
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    .line 176
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 177
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    invoke-static {v1, v2, v5}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    .line 178
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    .line 179
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    .line 180
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    .line 181
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 182
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    .line 183
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 184
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    invoke-static {v1, v2, v5}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    .line 140
    .local v0, "result":J
    invoke-static {v0, v1, p1, p2}, Lorg/spongycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    .line 141
    const/16 v2, 0x8

    return v2
.end method

.method public doFinal()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    .line 116
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 117
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    if-ge v2, v5, :cond_0

    .line 119
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 124
    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    const-wide/16 v4, 0xff

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    .line 126
    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 128
    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    iget-wide v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    xor-long v0, v2, v4

    .line 130
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->reset()V

    .line 132
    return-wide v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    instance-of v2, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'params\' must be an instance of KeyParameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    .line 71
    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 72
    .local v1, "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 73
    .local v0, "key":[B
    array-length v2, v0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'params\' must be a 128-bit key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->k0:J

    .line 79
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->k1:J

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->reset()V

    .line 82
    return-void
.end method

.method protected processMessageWord()V
    .locals 4

    .prologue
    .line 160
    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    .line 161
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    .line 162
    .local v0, "m":J
    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 163
    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 164
    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    .line 165
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->v0:J

    .line 148
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->v1:J

    .line 149
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->v2:J

    .line 150
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->v3:J

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 153
    iput v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    .line 154
    iput v4, p0, Lorg/spongycastle/crypto/macs/SipHash;->wordCount:I

    .line 155
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    aput-byte p1, v0, v1

    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    .line 94
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 103
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 104
    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->bufPos:I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method
