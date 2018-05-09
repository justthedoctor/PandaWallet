.class public Lcom/google/bitcoin/core/CheckpointManager;
.super Ljava/lang/Object;
.source "CheckpointManager.java"


# static fields
.field private static final MAX_SIGNATURES:I = 0x100

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final checkpoints:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected final dataHash:Lcom/google/bitcoin/core/Sha256Hash;

.field protected final params:Lcom/google/bitcoin/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/bitcoin/core/CheckpointManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/InputStream;)V
    .locals 21
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/CheckpointManager;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 75
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v7, 0x0

    .line 78
    .local v7, "dis":Ljava/io/DataInputStream;
    :try_start_0
    const-string v17, "SHA-256"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 79
    .local v5, "digest":Ljava/security/MessageDigest;
    new-instance v6, Ljava/security/DigestInputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 80
    .local v6, "digestInputStream":Ljava/security/DigestInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .local v8, "dis":Ljava/io/DataInputStream;
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/security/DigestInputStream;->on(Z)V

    .line 82
    const-string v12, "CHECKPOINTS 1"

    .line 83
    .local v12, "magic":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 84
    .local v10, "header":[B
    invoke-virtual {v8, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 85
    const-string v17, "US-ASCII"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-nez v17, :cond_1

    .line 86
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Header bytes did not match expected version"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v10    # "header":[B
    .end local v12    # "magic":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 108
    .end local v5    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v17

    :goto_1
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 113
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    throw v17

    .line 87
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "header":[B
    .restart local v12    # "magic":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    const/16 v18, 0x100

    const-string v19, "Num signatures out of range"

    invoke-static/range {v17 .. v19}, Lcom/google/common/base/Preconditions;->checkPositionIndex(IILjava/lang/String;)I

    move-result v14

    .line 88
    .local v14, "numSignatures":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v14, :cond_2

    .line 89
    const/16 v17, 0x41

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 90
    .local v15, "sig":[B
    invoke-virtual {v8, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 88
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 93
    .end local v15    # "sig":[B
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/security/DigestInputStream;->on(Z)V

    .line 94
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 95
    .local v13, "numCheckpoints":I
    if-lez v13, :cond_3

    const/16 v17, 0x1

    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    const/16 v16, 0x60

    .line 97
    .local v16, "size":I
    const/16 v17, 0x60

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 98
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v13, :cond_5

    .line 99
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x60

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v17

    const/16 v18, 0x60

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 100
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Incomplete read whilst loading checkpoints."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "header":[B
    .end local v11    # "i":I
    .end local v12    # "magic":Ljava/lang/String;
    .end local v13    # "numCheckpoints":I
    .end local v14    # "numSignatures":I
    .end local v16    # "size":I
    :catch_1
    move-exception v9

    move-object v7, v8

    .line 110
    .end local v5    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    .local v9, "e":Lcom/google/bitcoin/core/ProtocolException;
    :goto_5
    :try_start_4
    new-instance v17, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Lcom/google/bitcoin/core/ProtocolException;
    .restart local v5    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "header":[B
    .restart local v11    # "i":I
    .restart local v12    # "magic":Ljava/lang/String;
    .restart local v13    # "numCheckpoints":I
    .restart local v14    # "numSignatures":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 101
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "size":I
    :cond_4
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/bitcoin/core/StoredBlock;->deserializeCompact(Lcom/google/bitcoin/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    .line 102
    .local v3, "block":Lcom/google/bitcoin/core/StoredBlock;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 105
    .end local v3    # "block":Lcom/google/bitcoin/core/StoredBlock;
    :cond_5
    new-instance v17, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/CheckpointManager;->dataHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 106
    sget-object v17, Lcom/google/bitcoin/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    const-string v18, "Read {} checkpoints, hash is {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/core/CheckpointManager;->dataHash:Lcom/google/bitcoin/core/Sha256Hash;

    move-object/from16 v20, v0

    invoke-interface/range {v17 .. v20}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 113
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 115
    return-void

    .line 112
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "header":[B
    .end local v11    # "i":I
    .end local v12    # "magic":Ljava/lang/String;
    .end local v13    # "numCheckpoints":I
    .end local v14    # "numSignatures":I
    .end local v16    # "size":I
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 109
    .end local v5    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "digestInputStream":Ljava/security/DigestInputStream;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 107
    :catch_3
    move-exception v9

    goto/16 :goto_0
.end method

.method public static checkpoint(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/InputStream;Lcom/google/bitcoin/store/BlockStore;J)V
    .locals 5
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "checkpoints"    # Ljava/io/InputStream;
    .param p2, "store"    # Lcom/google/bitcoin/store/BlockStore;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 154
    sget-boolean v3, Lcom/google/bitcoin/core/CoinDefinition;->checkpointFileSupport:Z

    if-nez v3, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    instance-of v3, p2, Lcom/google/bitcoin/store/FullPrunedBlockStore;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "You cannot use checkpointing with a full store."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    const-wide/32 v3, 0x93a80

    sub-long/2addr p3, v3

    .line 163
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v2, "stream":Ljava/io/BufferedInputStream;
    new-instance v1, Lcom/google/bitcoin/core/CheckpointManager;

    invoke-direct {v1, p0, v2}, Lcom/google/bitcoin/core/CheckpointManager;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/InputStream;)V

    .line 165
    .local v1, "manager":Lcom/google/bitcoin/core/CheckpointManager;
    invoke-virtual {v1, p3, p4}, Lcom/google/bitcoin/core/CheckpointManager;->getCheckpointBefore(J)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    .line 166
    .local v0, "checkpoint":Lcom/google/bitcoin/core/StoredBlock;
    invoke-interface {p2, v0}, Lcom/google/bitcoin/store/BlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 167
    invoke-interface {p2, v0}, Lcom/google/bitcoin/store/BlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    goto :goto_0

    .line 159
    .end local v0    # "checkpoint":Lcom/google/bitcoin/core/StoredBlock;
    .end local v1    # "manager":Lcom/google/bitcoin/core/CheckpointManager;
    .end local v2    # "stream":Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCheckpointBefore(J)Lcom/google/bitcoin/core/StoredBlock;
    .locals 6
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/core/CheckpointManager;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 125
    iget-object v3, p0, Lcom/google/bitcoin/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 126
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/bitcoin/core/StoredBlock;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/StoredBlock;

    .line 128
    :goto_0
    return-object v3

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/core/CheckpointManager;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v2

    .line 128
    .local v2, "genesis":Lcom/google/bitcoin/core/Block;
    new-instance v3, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/bitcoin/core/StoredBlock;>;"
    .end local v2    # "genesis":Lcom/google/bitcoin/core/Block;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDataHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/bitcoin/core/CheckpointManager;->dataHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public numCheckpoints()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/bitcoin/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
