.class public abstract Lcom/google/bitcoin/core/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/Message$LazyParseException;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x2000000

.field private static final SELF_CHECK:Z = false

.field public static final UNKNOWN_LENGTH:I = -0x80000000

.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x316b674193d2545fL


# instance fields
.field protected transient bytes:[B

.field protected transient checksum:[B

.field protected transient cursor:I

.field protected transient length:I

.field protected transient offset:I

.field protected params:Lcom/google/bitcoin/core/NetworkParameters;

.field protected final transient parseLazy:Z

.field protected final transient parseRetain:Z

.field protected transient parsed:Z

.field protected transient protocolVersion:I

.field protected transient recached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/bitcoin/core/Message;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Message;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 55
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 72
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parseLazy:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parseRetain:Z

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 55
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    .line 77
    iput-object p1, p0, Lcom/google/bitcoin/core/Message;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 79
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parseLazy:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parseRetain:Z

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 146
    const v4, 0x11171

    const/high16 v7, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIIZZI)V

    .line 147
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 84
    const/high16 v7, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIIZZI)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BIIZZI)V
    .locals 5
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .param p5, "parseLazy"    # Z
    .param p6, "parseRetain"    # Z
    .param p7, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 55
    iput-boolean v3, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 56
    iput-boolean v3, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    .line 103
    iput-boolean p5, p0, Lcom/google/bitcoin/core/Message;->parseLazy:Z

    .line 104
    iput-boolean p6, p0, Lcom/google/bitcoin/core/Message;->parseRetain:Z

    .line 105
    iput p4, p0, Lcom/google/bitcoin/core/Message;->protocolVersion:I

    .line 106
    iput-object p1, p0, Lcom/google/bitcoin/core/Message;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 107
    iput-object p2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    .line 108
    iput p3, p0, Lcom/google/bitcoin/core/Message;->offset:I

    iput p3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 109
    iput p7, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 110
    if-eqz p5, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->parseLite()V

    .line 118
    :goto_0
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    if-ne v0, v1, :cond_0

    .line 119
    const-string v1, "Length field has not been set in constructor for %s after %s parse. Refer to Message.parseLite() for detail of required Length field contract."

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    if-eqz p5, :cond_3

    const-string v0, "lite"

    :goto_1
    aput-object v0, v2, v4

    invoke-static {v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    if-nez p6, :cond_1

    iget-boolean v0, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    if-nez v0, :cond_4

    .line 130
    :cond_1
    :goto_2
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->parseLite()V

    .line 114
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->parse()V

    .line 115
    iput-boolean v4, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "full"

    goto :goto_1

    .line 129
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    goto :goto_2
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
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
    .line 150
    const v4, 0x11171

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIIZZI)V

    .line 151
    return-void
.end method

.method private selfCheck([BI)V
    .locals 5
    .param p1, "msg"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 133
    instance-of v2, p0, Lcom/google/bitcoin/core/VersionMessage;

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->maybeParse()V

    .line 135
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    sub-int/2addr v2, p2

    new-array v0, v2, [B

    .line 136
    .local v0, "msgbytes":[B
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    sub-int/2addr v3, p2

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->bitcoinSerialize()[B

    move-result-object v1

    .line 138
    .local v1, "reserialized":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialization is wrong: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v0    # "msgbytes":[B
    .end local v1    # "reserialized":[B
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustLength(II)V
    .locals 3
    .param p1, "newArraySize"    # I
    .param p2, "adjustment"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 225
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-ne p2, v1, :cond_2

    .line 229
    iput v1, p0, Lcom/google/bitcoin/core/Message;->length:I

    goto :goto_0

    .line 232
    :cond_2
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 234
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 235
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    goto :goto_0

    .line 236
    :cond_3
    if-eqz p1, :cond_0

    .line 237
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    invoke-static {p1}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    goto :goto_0
.end method

.method public final bitcoinSerialize(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v1, p0, Lcom/google/bitcoin/core/Message;->offset:I

    iget v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Message;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public bitcoinSerialize()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->unsafeBitcoinSerialize()[B

    move-result-object v0

    .line 287
    .local v0, "bytes":[B
    array-length v2, v0

    new-array v1, v2, [B

    .line 288
    .local v1, "copy":[B
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    return-object v1
.end method

.method bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    sget-object v0, Lcom/google/bitcoin/core/Message;->log:Lorg/slf4j/Logger;

    const-string v1, "Error: {} class has not implemented bitcoinSerializeToStream method.  Generating message with no payload"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public ensureParsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->maybeParse()V
    :try_end_0
    .catch Lcom/google/bitcoin/core/Message$LazyParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lcom/google/bitcoin/core/Message$LazyParseException;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/bitcoin/core/ProtocolException;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ProtocolException;

    throw v1

    .line 206
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method getChecksum()[B
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->checksum:[B

    return-object v0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMessageSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x80000000

    .line 393
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    if-eq v0, v1, :cond_0

    .line 394
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 398
    :goto_0
    return v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->maybeParse()V

    .line 396
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    if-ne v0, v1, :cond_1

    .line 397
    const-string v0, "Length field has not been set in %s after full parse."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_1
    iget v0, p0, Lcom/google/bitcoin/core/Message;->length:I

    goto :goto_0
.end method

.method public getParams()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method hasMoreBytes()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    iget-object v1, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParsed()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    return v0
.end method

.method public isRecached()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    return v0
.end method

.method protected declared-synchronized maybeParse()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/Message;->bytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->parse()V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parsed:Z

    .line 184
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Message;->parseRetain:Z

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/core/Message;->bytes:[B
    :try_end_1
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lcom/google/bitcoin/core/ProtocolException;
    :try_start_2
    new-instance v1, Lcom/google/bitcoin/core/Message$LazyParseException;

    const-string v2, "ProtocolException caught during lazy parse.  For safe access to fields call ensureParsed before attempting read or write access"

    invoke-direct {v1, v2, v0}, Lcom/google/bitcoin/core/Message$LazyParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v0    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation
.end method

.method protected abstract parseLite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation
.end method

.method readByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->readVarInt()J

    move-result-wide v0

    .line 476
    .local v0, "len":J
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Message;->readBytes(I)[B

    move-result-object v2

    return-object v2
.end method

.method readBytes(I)[B
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    new-array v0, p1, [B

    .line 466
    .local v0, "b":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-object v0

    .line 469
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v2, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method readHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 413
    const/16 v2, 0x20

    :try_start_0
    new-array v1, v2, [B

    .line 414
    .local v1, "hash":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    .line 418
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 419
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {v2, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 420
    .end local v1    # "hash":[B
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method readInt64()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v4, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    invoke-static {v3, v4}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v1

    .line 428
    .local v1, "u":J
    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-wide v1

    .line 430
    .end local v1    # "u":J
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method readStr()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 481
    :try_start_0
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v4, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 482
    .local v2, "varInt":Lcom/google/bitcoin/core/VarInt;
    iget-wide v3, v2, Lcom/google/bitcoin/core/VarInt;->value:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 483
    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 484
    const-string v3, ""

    .line 491
    :goto_0
    return-object v3

    .line 486
    :cond_0
    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 487
    iget-wide v3, v2, Lcom/google/bitcoin/core/VarInt;->value:J

    long-to-int v3, v3

    new-array v0, v3, [B

    .line 488
    .local v0, "characters":[B
    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v4, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 491
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 495
    .end local v0    # "characters":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "varInt":Lcom/google/bitcoin/core/VarInt;
    :catch_1
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v3, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 497
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v3, v1}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method readUint32()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v4, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    invoke-static {v3, v4}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v1

    .line 404
    .local v1, "u":J
    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-wide v1

    .line 406
    .end local v1    # "u":J
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method readUint64()Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 438
    const/16 v2, 0x8

    :try_start_0
    new-array v1, v2, [B

    .line 439
    .local v1, "valbytes":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    .line 441
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    array-length v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 442
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 443
    .end local v1    # "valbytes":[B
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method readVarInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Message;->readVarInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method readVarInt(I)J
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 454
    :try_start_0
    new-instance v1, Lcom/google/bitcoin/core/VarInt;

    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 455
    .local v1, "varint":Lcom/google/bitcoin/core/VarInt;
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    invoke-virtual {v1}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v3

    add-int/2addr v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 456
    iget-wide v2, v1, Lcom/google/bitcoin/core/VarInt;->value:J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 457
    .end local v1    # "varint":Lcom/google/bitcoin/core/VarInt;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method setChecksum([B)V
    .locals 3
    .param p1, "checksum"    # [B

    .prologue
    .line 274
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checksum length must be 4 bytes, actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/core/Message;->checksum:[B

    .line 277
    return-void
.end method

.method protected unCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Message;->maybeParse()V

    .line 219
    iput-object v0, p0, Lcom/google/bitcoin/core/Message;->checksum:[B

    .line 220
    iput-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    .line 222
    return-void
.end method

.method public unsafeBitcoinSerialize()[B
    .locals 6

    .prologue
    const/16 v2, 0x20

    const/4 v5, 0x0

    .line 311
    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    if-eqz v3, :cond_1

    .line 312
    iget v2, p0, Lcom/google/bitcoin/core/Message;->offset:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    iget-object v3, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    .line 352
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    new-array v0, v2, [B

    .line 319
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Message;->offset:I

    iget v4, p0, Lcom/google/bitcoin/core/Message;->length:I

    invoke-static {v2, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 324
    .end local v0    # "buf":[B
    :cond_1
    new-instance v1, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    iget v3, p0, Lcom/google/bitcoin/core/Message;->length:I

    if-ge v3, v2, :cond_2

    :goto_1
    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 326
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Message;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_2
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Message;->parseRetain:Z

    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    .line 341
    iget v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    iget v3, p0, Lcom/google/bitcoin/core/Message;->offset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/Message;->cursor:I

    .line 342
    iput v5, p0, Lcom/google/bitcoin/core/Message;->offset:I

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/bitcoin/core/Message;->recached:Z

    .line 344
    iget-object v2, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    array-length v2, v2

    iput v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    .line 345
    iget-object v0, p0, Lcom/google/bitcoin/core/Message;->bytes:[B

    goto :goto_0

    .line 324
    .end local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iget v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    add-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 350
    .restart local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 351
    .restart local v0    # "buf":[B
    array-length v2, v0

    iput v2, p0, Lcom/google/bitcoin/core/Message;->length:I

    goto :goto_0

    .line 327
    .end local v0    # "buf":[B
    :catch_0
    move-exception v2

    goto :goto_2
.end method
