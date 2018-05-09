.class public Lcom/google/bitcoin/utils/BlockFileLoader;
.super Ljava/lang/Object;
.source "BlockFileLoader.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/bitcoin/core/Block;",
        ">;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/bitcoin/core/Block;",
        ">;"
    }
.end annotation


# instance fields
.field private currentFileStream:Ljava/io/FileInputStream;

.field private fileIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private nextBlock:Lcom/google/bitcoin/core/Block;

.field private params:Lcom/google/bitcoin/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 75
    iput-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    .line 79
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    .line 80
    iput-object p1, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 81
    return-void
.end method

.method public static getReferenceClientBlockFileList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "OS":Ljava/lang/String;
    const-string v5, "win"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APPDATA"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\.bitcoin\\blocks\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "defaultDataDir":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x0

    .line 65
    .local v3, "i":I
    :goto_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "blk%05d.dat"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 70
    return-object v4

    .line 57
    .end local v1    # "defaultDataDir":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    const-string v5, "mac"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    const-string v5, "darwin"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 58
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Library/Application Support/Bitcoin/blocks/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "defaultDataDir":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v1    # "defaultDataDir":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/.bitcoin/blocks/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "defaultDataDir":Ljava/lang/String;
    goto :goto_0

    .line 68
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private loadNextBlock()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    const/4 v11, 0x0

    .line 102
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 164
    :cond_1
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 106
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-lez v6, :cond_4

    .line 128
    :try_start_2
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 129
    .local v3, "nextChar":I
    :cond_3
    :goto_3
    const/4 v6, -0x1

    if-eq v3, v6, :cond_7

    .line 130
    int-to-long v6, v3

    iget-object v8, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v8

    const/16 v10, 0x18

    ushr-long/2addr v8, v10

    and-long/2addr v8, v12

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 131
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    .line 132
    goto :goto_3

    .line 113
    .end local v3    # "nextChar":I
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e1":Ljava/io/IOException;
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    .line 116
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_4
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 117
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    .line 118
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    goto :goto_1

    .line 122
    :cond_5
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->fileIt:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 123
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/FileNotFoundException;
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    goto :goto_2

    .line 134
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "nextChar":I
    :cond_6
    :try_start_4
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 135
    int-to-long v6, v3

    iget-object v8, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v8

    const/16 v10, 0x10

    ushr-long/2addr v8, v10

    and-long/2addr v8, v12

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 137
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 138
    int-to-long v6, v3

    iget-object v8, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v8

    const/16 v10, 0x8

    ushr-long/2addr v8, v10

    and-long/2addr v8, v12

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 140
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 141
    int-to-long v6, v3

    iget-object v8, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v8

    and-long/2addr v8, v12

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 144
    :cond_7
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 145
    .local v0, "bytes":[B
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 146
    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/bitcoin/core/Utils;->readUint32BE([BI)J

    move-result-wide v4

    .line 148
    .local v4, "size":J
    const-wide/32 v6, 0x1e8480

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 150
    long-to-int v6, v4

    new-array v0, v6, [B

    .line 151
    iget-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    const/4 v7, 0x0

    long-to-int v8, v4

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 153
    :try_start_5
    new-instance v6, Lcom/google/bitcoin/core/Block;

    iget-object v7, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v6, v7, v0}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    iput-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;
    :try_end_5
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 154
    :catch_3
    move-exception v1

    .line 155
    .local v1, "e":Lcom/google/bitcoin/core/ProtocolException;
    const/4 v6, 0x0

    :try_start_6
    iput-object v6, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 159
    .end local v0    # "bytes":[B
    .end local v1    # "e":Lcom/google/bitcoin/core/ProtocolException;
    .end local v3    # "nextChar":I
    .end local v4    # "size":J
    :catch_4
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    iput-object v11, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->currentFileStream:Ljava/io/FileInputStream;

    goto/16 :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/bitcoin/utils/BlockFileLoader;->loadNextBlock()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/bitcoin/core/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    return-object p0
.end method

.method public next()Lcom/google/bitcoin/core/Block;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/bitcoin/utils/BlockFileLoader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    .line 95
    .local v0, "next":Lcom/google/bitcoin/core/Block;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/utils/BlockFileLoader;->nextBlock:Lcom/google/bitcoin/core/Block;

    .line 96
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/bitcoin/utils/BlockFileLoader;->next()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
