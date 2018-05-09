.class public Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;
.super Ljava/lang/Object;
.source "BitcoinSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/BitcoinSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitcoinPacketHeader"
.end annotation


# static fields
.field public static final HEADER_LENGTH:I = 0x14


# instance fields
.field public final checksum:[B

.field public final command:Ljava/lang/String;

.field public final header:[B

.field public final size:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/16 v3, 0x14

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    .line 295
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    iget-object v4, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    array-length v4, v4

    invoke-virtual {p1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 297
    const/4 v1, 0x0

    .line 301
    .local v1, "cursor":I
    :goto_0
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    new-array v0, v1, [B

    .line 303
    .local v0, "commandBytes":[B
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    invoke-static {v3, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/16 v1, 0xc

    .line 311
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    invoke-static {v3, v1}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    .line 312
    add-int/lit8 v1, v1, 0x4

    .line 314
    iget v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 315
    new-instance v3, Lcom/google/bitcoin/core/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message size too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 318
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-array v3, v6, [B

    iput-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    .line 320
    iget-object v3, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    iget-object v4, p0, Lcom/google/bitcoin/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    add-int/lit8 v1, v1, 0x4

    .line 322
    return-void
.end method
