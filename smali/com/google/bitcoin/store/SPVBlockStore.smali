.class public Lcom/google/bitcoin/store/SPVBlockStore;
.super Ljava/lang/Object;
.source "SPVBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/BlockStore;


# static fields
.field public static final DEFAULT_NUM_HEADERS:I = 0x1388

.field protected static final FILE_PROLOGUE_BYTES:I = 0x400

.field public static final HEADER_MAGIC:Ljava/lang/String; = "SPVB"

.field protected static final RECORD_SIZE:I = 0x80

.field private static final log:Lorg/slf4j/Logger;

.field protected static final notFoundMarker:Ljava/lang/Object;


# instance fields
.field protected blockCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile buffer:Ljava/nio/MappedByteBuffer;

.field protected fileLock:Ljava/nio/channels/FileLock;

.field protected lastChainHead:Lcom/google/bitcoin/core/StoredBlock;

.field protected lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected notFoundCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected numHeaders:I

.field protected params:Lcom/google/bitcoin/core/NetworkParameters;

.field protected randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/bitcoin/store/SPVBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/store/SPVBlockStore;->log:Lorg/slf4j/Logger;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundMarker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;)V
    .locals 12
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, "SPVBlockStore"

    invoke-static {v1}, Lcom/google/bitcoin/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    new-instance v1, Lcom/google/bitcoin/store/SPVBlockStore$1;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/store/SPVBlockStore$1;-><init>(Lcom/google/bitcoin/store/SPVBlockStore;)V

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    .line 79
    new-instance v1, Lcom/google/bitcoin/store/SPVBlockStore$2;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/store/SPVBlockStore$2;-><init>(Lcom/google/bitcoin/store/SPVBlockStore;)V

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    .line 86
    iput-object v2, p0, Lcom/google/bitcoin/store/SPVBlockStore;->fileLock:Ljava/nio/channels/FileLock;

    .line 87
    iput-object v2, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 229
    iput-object v2, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lastChainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 94
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/NetworkParameters;

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 97
    const/16 v1, 0x1388

    :try_start_0
    iput v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->numHeaders:I

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    .line 100
    .local v8, "exists":Z
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 101
    invoke-virtual {p0}, Lcom/google/bitcoin/store/SPVBlockStore;->getFileSize()I

    move-result v1

    int-to-long v4, v1

    .line 102
    .local v4, "fileSize":J
    if-nez v8, :cond_2

    .line 103
    sget-object v1, Lcom/google/bitcoin/store/SPVBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new SPV block chain file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 111
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->fileLock:Ljava/nio/channels/FileLock;

    .line 112
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->fileLock:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_3

    .line 113
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "Store file is already locked by another process"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fileSize":J
    .end local v8    # "exists":Z
    :catch_0
    move-exception v6

    .line 134
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :cond_1
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileSize":J
    .restart local v8    # "exists":Z
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File size on disk does not match expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    :cond_3
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 124
    if-eqz v8, :cond_4

    .line 125
    const/4 v1, 0x4

    new-array v9, v1, [B

    .line 126
    .local v9, "header":[B
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 127
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v9, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "SPVB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "Header bytes do not equal SPVB"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v9    # "header":[B
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/bitcoin/store/SPVBlockStore;->initNewStore(Lcom/google/bitcoin/core/NetworkParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :cond_5
    return-void

    .line 135
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fileSize":J
    .end local v8    # "exists":Z
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 136
    .local v7, "e2":Ljava/io/IOException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v7}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getRingCursor(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 290
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 291
    .local v0, "c":I
    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Integer overflow"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 292
    return v0

    .line 291
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initNewStore(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 5
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    const-string v3, "SPVB"

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    .local v1, "header":[B
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/google/bitcoin/store/SPVBlockStore;->setRingCursor(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    .line 154
    .local v0, "genesis":Lcom/google/bitcoin/core/Block;
    new-instance v2, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    .line 155
    .local v2, "storedGenesis":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/SPVBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/SPVBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 157
    return-void

    .line 151
    .end local v0    # "genesis":Lcom/google/bitcoin/core/Block;
    .end local v2    # "storedGenesis":Lcom/google/bitcoin/core/StoredBlock;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private setRingCursor(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "newCursor"    # I

    .prologue
    .line 296
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 297
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 298
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 268
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 11
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 188
    .local v0, "buffer":Ljava/nio/MappedByteBuffer;
    if-nez v0, :cond_0

    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v10, "Store closed"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 190
    :cond_0
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 192
    :try_start_0
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/StoredBlock;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .local v1, "cacheHit":Lcom/google/bitcoin/core/StoredBlock;
    if-eqz v1, :cond_1

    .line 226
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1    # "cacheHit":Lcom/google/bitcoin/core/StoredBlock;
    :goto_0
    return-object v1

    .line 195
    .restart local v1    # "cacheHit":Lcom/google/bitcoin/core/StoredBlock;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_2

    .line 226
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v7

    goto :goto_0

    .line 200
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/bitcoin/store/SPVBlockStore;->getRingCursor(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 201
    .local v2, "cursor":I
    move v6, v2

    .line 202
    .local v6, "startingPoint":I
    invoke-virtual {p0}, Lcom/google/bitcoin/store/SPVBlockStore;->getFileSize()I

    move-result v4

    .line 203
    .local v4, "fileSize":I
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v8

    .line 204
    .local v8, "targetHashBytes":[B
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 206
    .local v5, "scratch":[B
    :cond_3
    add-int/lit8 v2, v2, -0x80

    .line 207
    const/16 v9, 0x400

    if-ge v2, v9, :cond_4

    .line 209
    add-int/lit8 v2, v4, -0x80

    .line 212
    :cond_4
    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v0, v5}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 214
    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 216
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-static {v9, v0}, Lcom/google/bitcoin/core/StoredBlock;->deserializeCompact(Lcom/google/bitcoin/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v7

    .line 217
    .local v7, "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, p1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v7

    goto :goto_0

    .line 220
    .end local v7    # "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    :cond_5
    if-ne v2, v6, :cond_3

    .line 222
    :try_start_3
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    sget-object v10, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundMarker:Ljava/lang/Object;

    invoke-virtual {v9, p1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    iget-object v9, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v7

    goto :goto_0

    .line 224
    .end local v1    # "cacheHit":Lcom/google/bitcoin/core/StoredBlock;
    .end local v2    # "cursor":I
    .end local v4    # "fileSize":I
    .end local v5    # "scratch":[B
    .end local v6    # "startingPoint":I
    .end local v8    # "targetHashBytes":[B
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Lcom/google/bitcoin/core/ProtocolException;
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    .end local v3    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9
.end method

.method public getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 233
    .local v1, "buffer":Ljava/nio/MappedByteBuffer;
    if-nez v1, :cond_0

    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v5, "Store closed"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lastChainHead:Lcom/google/bitcoin/core/StoredBlock;

    if-nez v4, :cond_2

    .line 238
    const/16 v4, 0x20

    new-array v3, v4, [B

    .line 239
    .local v3, "headHash":[B
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 241
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 242
    .local v2, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/store/SPVBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 243
    .local v0, "block":Lcom/google/bitcoin/core/StoredBlock;
    if-nez v0, :cond_1

    .line 244
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupted block store: could not find chain head: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    .end local v2    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v3    # "headHash":[B
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 245
    .restart local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    .restart local v2    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .restart local v3    # "headHash":[B
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lastChainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 247
    .end local v0    # "block":Lcom/google/bitcoin/core/StoredBlock;
    .end local v2    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v3    # "headHash":[B
    :cond_2
    iget-object v4, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lastChainHead:Lcom/google/bitcoin/core/StoredBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v5, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/bitcoin/store/SPVBlockStore;->numHeaders:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public put(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 5
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 166
    .local v0, "buffer":Ljava/nio/MappedByteBuffer;
    if-nez v0, :cond_0

    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "Store closed"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/bitcoin/store/SPVBlockStore;->getRingCursor(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 171
    .local v1, "cursor":I
    invoke-virtual {p0}, Lcom/google/bitcoin/store/SPVBlockStore;->getFileSize()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 173
    const/16 v1, 0x400

    .line 175
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    .line 177
    .local v2, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/StoredBlock;->serializeCompact(Ljava/nio/ByteBuffer;)V

    .line 180
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/bitcoin/store/SPVBlockStore;->setRingCursor(Ljava/nio/ByteBuffer;I)V

    .line 181
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    return-void

    .line 182
    .end local v1    # "cursor":I
    .end local v2    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 4
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/bitcoin/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 253
    .local v0, "buffer":Ljava/nio/MappedByteBuffer;
    if-nez v0, :cond_0

    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v3, "Store closed"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lastChainHead:Lcom/google/bitcoin/core/StoredBlock;

    .line 258
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v1

    .line 259
    .local v1, "headHash":[B
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v2, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    return-void

    .line 261
    .end local v1    # "headHash":[B
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/bitcoin/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
