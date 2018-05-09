.class public Lcom/google/bitcoin/script/ScriptChunk;
.super Ljava/lang/Object;
.source "ScriptChunk.java"


# instance fields
.field public final data:[B

.field private isOpCode:Z

.field private startLocationInProgram:I


# direct methods
.method public constructor <init>(Z[B)V
    .locals 1
    .param p1, "isOpCode"    # Z
    .param p2, "data"    # [B

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[BI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z[BI)V
    .locals 0
    .param p1, "isOpCode"    # Z
    .param p2, "data"    # [B
    .param p3, "startLocationInProgram"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    .line 44
    iput-object p2, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    .line 45
    iput p3, p0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    .line 94
    .local v0, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    iget-boolean v3, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    iget-boolean v4, v0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 95
    :cond_4
    iget v3, p0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    iget v4, v0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 96
    :cond_5
    iget-object v3, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    iget-object v4, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public equalsOpCode(I)Z
    .locals 3
    .param p1, "opCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iget-boolean v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    if-ne v2, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getStartLocationInProgram()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 61
    iget v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-boolean v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 104
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 105
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->startLocationInProgram:I

    add-int v0, v1, v2

    .line 106
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public isOpCode()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4c

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 65
    iget-boolean v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode:Z

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v2, v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x208

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-ge v0, v6, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 83
    :goto_3
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 69
    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_4

    .line 73
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_5

    .line 76
    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 77
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 80
    :cond_5
    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 81
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    goto :goto_3
.end method
