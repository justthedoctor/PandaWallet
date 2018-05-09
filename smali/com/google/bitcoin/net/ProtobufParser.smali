.class public Lcom/google/bitcoin/net/ProtobufParser;
.super Lcom/google/bitcoin/net/AbstractTimeoutHandler;
.source "ProtobufParser.java"

# interfaces
.implements Lcom/google/bitcoin/net/StreamParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/net/ProtobufParser$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Lcom/google/bitcoin/net/AbstractTimeoutHandler;",
        "Lcom/google/bitcoin/net/StreamParser;"
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/bitcoin/net/ProtobufParser$Listener",
            "<TMessageType;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final maxMessageSize:I

.field private messageBytes:[B
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private messageBytesOffset:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final prototype:Lcom/google/protobuf/MessageLite;

.field final writeTarget:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/bitcoin/net/MessageWriteTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/bitcoin/net/ProtobufParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/ProtobufParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/net/ProtobufParser$Listener;Lcom/google/protobuf/MessageLite;II)V
    .locals 2
    .param p3, "maxMessageSize"    # I
    .param p4, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/net/ProtobufParser$Listener",
            "<TMessageType;>;TMessageType;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    .local p1, "handler":Lcom/google/bitcoin/net/ProtobufParser$Listener;, "Lcom/google/bitcoin/net/ProtobufParser$Listener<TMessageType;>;"
    .local p2, "prototype":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;-><init>()V

    .line 74
    iput v1, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    .line 76
    const-string v0, "ProtobufParser"

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    iput-object p1, p0, Lcom/google/bitcoin/net/ProtobufParser;->handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    .line 93
    iput-object p2, p0, Lcom/google/bitcoin/net/ProtobufParser;->prototype:Lcom/google/protobuf/MessageLite;

    .line 94
    const v0, 0x7ffffffb

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->maxMessageSize:I

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/net/ProtobufParser;->setTimeoutEnabled(Z)V

    .line 96
    invoke-virtual {p0, p4}, Lcom/google/bitcoin/net/ProtobufParser;->setSocketTimeout(I)V

    .line 97
    return-void
.end method

.method private deserializeMessage(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buff"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    iget-object v1, p0, Lcom/google/bitcoin/net/ProtobufParser;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 127
    .local v0, "msg":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ProtobufParser;->resetTimeout()V

    .line 128
    iget-object v1, p0, Lcom/google/bitcoin/net/ProtobufParser;->handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    invoke-interface {v1, p0, v0}, Lcom/google/bitcoin/net/ProtobufParser$Listener;->messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lcom/google/protobuf/MessageLite;)V

    .line 129
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/net/MessageWriteTarget;

    invoke-interface {v0}, Lcom/google/bitcoin/net/MessageWriteTarget;->closeConnection()V

    .line 115
    return-void
.end method

.method public connectionClosed()V
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    invoke-interface {v0, p0}, Lcom/google/bitcoin/net/ProtobufParser$Listener;->connectionClosed(Lcom/google/bitcoin/net/ProtobufParser;)V

    .line 201
    return-void
.end method

.method public connectionOpened()V
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/net/ProtobufParser;->setTimeoutEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    invoke-interface {v0, p0}, Lcom/google/bitcoin/net/ProtobufParser$Listener;->connectionOpen(Lcom/google/bitcoin/net/ProtobufParser;)V

    .line 207
    return-void
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    iget v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->maxMessageSize:I

    return v0
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "buff"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 133
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    .local v0, "bytesToGet":I
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    iget v5, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    invoke-virtual {p1, v4, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 139
    iget v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    .line 140
    iget v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I

    iget-object v5, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 142
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/bitcoin/net/ProtobufParser;->deserializeMessage(Ljava/nio/ByteBuffer;)V

    .line 143
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/net/ProtobufParser;->receiveBytes(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v0, v4

    .line 194
    .end local v0    # "bytesToGet":I
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .restart local v0    # "bytesToGet":I
    :cond_0
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 151
    .end local v0    # "bytesToGet":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v4, v5, :cond_2

    .line 194
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 155
    :cond_2
    :try_start_2
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 160
    .local v2, "len":I
    iget v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->maxMessageSize:I

    if-gt v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x4

    if-ge v4, v5, :cond_4

    .line 161
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Message too large or length underflowed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .end local v2    # "len":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 165
    .restart local v2    # "len":I
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/lit8 v5, v2, 0x4

    if-ge v4, v5, :cond_5

    .line 166
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 170
    .local v1, "bytesToRead":I
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytes:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 171
    iput v1, p0, Lcom/google/bitcoin/net/ProtobufParser;->messageBytesOffset:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    add-int/lit8 v0, v1, 0x4

    .line 194
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 175
    .end local v1    # "bytesToRead":I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v2, :cond_6

    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 182
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 183
    .local v3, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 184
    invoke-direct {p0, p1}, Lcom/google/bitcoin/net/ProtobufParser;->deserializeMessage(Ljava/nio/ByteBuffer;)V

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 190
    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0, p1}, Lcom/google/bitcoin/net/ProtobufParser;->receiveBytes(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    add-int v0, v4, v5

    .line 194
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 192
    :cond_8
    add-int/lit8 v0, v2, 0x4

    .line 194
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V
    .locals 2
    .param p1, "writeTarget"    # Lcom/google/bitcoin/net/MessageWriteTarget;

    .prologue
    .line 102
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    iget-object v0, p0, Lcom/google/bitcoin/net/ProtobufParser;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected timeoutOccurred()V
    .locals 3

    .prologue
    .line 119
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    sget-object v0, Lcom/google/bitcoin/net/ProtobufParser;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout occurred for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/net/ProtobufParser;->handler:Lcom/google/bitcoin/net/ProtobufParser$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V

    .line 121
    return-void
.end method

.method public write(Lcom/google/protobuf/MessageLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/bitcoin/net/ProtobufParser;, "Lcom/google/bitcoin/net/ProtobufParser<TMessageType;>;"
    .local p1, "msg":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    const/4 v5, 0x0

    .line 217
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v1

    .line 218
    .local v1, "messageBytes":[B
    array-length v4, v1

    iget v6, p0, Lcom/google/bitcoin/net/ProtobufParser;->maxMessageSize:I

    if-gt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 219
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 220
    .local v2, "messageLength":[B
    array-length v4, v1

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lcom/google/bitcoin/core/Utils;->uint32ToByteArrayBE(J[BI)V

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/net/ProtobufParser;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/net/MessageWriteTarget;

    .line 223
    .local v3, "target":Lcom/google/bitcoin/net/MessageWriteTarget;
    invoke-interface {v3, v2}, Lcom/google/bitcoin/net/MessageWriteTarget;->writeBytes([B)V

    .line 224
    invoke-interface {v3, v1}, Lcom/google/bitcoin/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v3    # "target":Lcom/google/bitcoin/net/MessageWriteTarget;
    :goto_1
    return-void

    .end local v2    # "messageLength":[B
    :cond_0
    move v4, v5

    .line 218
    goto :goto_0

    .line 225
    .restart local v2    # "messageLength":[B
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/bitcoin/net/ProtobufParser;->closeConnection()V

    goto :goto_1
.end method
