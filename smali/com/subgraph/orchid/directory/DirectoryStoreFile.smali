.class public Lcom/subgraph/orchid/directory/DirectoryStoreFile;
.super Ljava/lang/Object;
.source "DirectoryStoreFile.java"


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final random:Lcom/subgraph/orchid/crypto/TorRandom;


# instance fields
.field private final cacheFilename:Ljava/lang/String;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private directoryCreationFailed:Z

.field private openFile:Ljava/io/RandomAccessFile;

.field private openFileFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "cacheFilename"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    .line 34
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private createBufferForChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    long-to-int v0, v1

    .line 128
    .local v0, "sz":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createDirectoryIfMissing()V
    .locals 4

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->directoryCreationFailed:Z

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 219
    .local v0, "dd":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->directoryCreationFailed:Z

    .line 222
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create data directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createTempFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 180
    sget-object v3, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v3}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong()J

    move-result-wide v1

    .line 181
    .local v1, "n":J
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v3}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 183
    return-object v0
.end method

.method private ensureOpened()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    iget-boolean v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileFailed:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile()Ljava/io/RandomAccessFile;

    move-result-object v2

    iput-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    .line 151
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private fileExists()Z
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private installTempFile(Ljava/io/File;)V
    .locals 4
    .param p1, "tempFile"    # Ljava/io/File;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->close()V

    .line 168
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 169
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 176
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    .line 177
    return-void
.end method

.method private openFile()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v2}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createDirectoryIfMissing()V

    .line 158
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileFailed:Z

    .line 161
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createDirectoryIfMissing()V

    .line 78
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private quietClose(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 201
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readAllFromChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 115
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createBufferForChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 118
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "Unexpected EOF reading from cache file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 123
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "documents":Ljava/util/List;, "Ljava/util/List<+Lcom/subgraph/orchid/Document;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Document;

    .line 188
    .local v0, "d":Lcom/subgraph/orchid/Document;
    invoke-interface {v0}, Lcom/subgraph/orchid/Document;->getRawDocumentBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 190
    .end local v0    # "d":Lcom/subgraph/orchid/Document;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendDocuments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "documents":Ljava/util/List;, "Ljava/util/List<+Lcom/subgraph/orchid/Document;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 91
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error writing to cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    .line 136
    :cond_0
    return-void
.end method

.method public loadContents()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->fileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 109
    :goto_0
    return-object v1

    .line 106
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->readAllFromChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error reading cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->close()V

    .line 211
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 212
    return-void
.end method

.method public writeData(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createTempFile()Ljava/io/File;

    move-result-object v2

    .line 39
    .local v2, "tempFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 40
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 45
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 46
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->installTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error writing to temporary cache file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method public writeDocuments(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "documents":Ljava/util/List;, "Ljava/util/List<+Lcom/subgraph/orchid/Document;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createTempFile()Ljava/io/File;

    move-result-object v2

    .line 58
    .local v2, "tempFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 59
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 65
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->installTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error writing to temporary cache file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3
.end method
