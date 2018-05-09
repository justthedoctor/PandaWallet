.class public Lcom/google/bitcoin/script/Script;
.super Ljava/lang/Object;
.source "Script.java"


# static fields
.field private static final INTERN_TABLE:[Lcom/google/bitcoin/script/ScriptChunk;

.field public static final MAX_SCRIPT_ELEMENT_SIZE:J = 0x208L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/ScriptChunk;",
            ">;"
        }
    .end annotation
.end field

.field private creationTimeSeconds:J

.field protected program:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-class v2, Lcom/google/bitcoin/script/Script;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/bitcoin/script/Script;->log:Lorg/slf4j/Logger;

    .line 148
    new-instance v2, Lcom/google/bitcoin/core/Address;

    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v3

    const/16 v4, 0x14

    new-array v4, v4, [B

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    invoke-static {v2}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    .line 149
    .local v0, "examplePayToAddress":Lcom/google/bitcoin/script/Script;
    new-instance v1, Lcom/google/bitcoin/script/Script;

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 150
    .end local v0    # "examplePayToAddress":Lcom/google/bitcoin/script/Script;
    .local v1, "examplePayToAddress":Lcom/google/bitcoin/script/Script;
    new-array v3, v8, [Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v2, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/ScriptChunk;

    aput-object v2, v3, v5

    iget-object v2, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/ScriptChunk;

    aput-object v2, v3, v6

    const/4 v4, 0x2

    iget-object v2, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/ScriptChunk;

    aput-object v2, v3, v4

    iget-object v2, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/ScriptChunk;

    aput-object v2, v3, v7

    sput-object v3, Lcom/google/bitcoin/script/Script;->INTERN_TABLE:[Lcom/google/bitcoin/script/ScriptChunk;

    .line 156
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/ScriptChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "chunks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/ScriptChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    .line 76
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/script/Script;->creationTimeSeconds:J

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "programBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/bitcoin/script/Script;->program:[B

    .line 86
    invoke-direct {p0, p1}, Lcom/google/bitcoin/script/Script;->parse([B)V

    .line 87
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/script/Script;->creationTimeSeconds:J

    .line 88
    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 0
    .param p1, "programBytes"    # [B
    .param p2, "creationTimeSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/bitcoin/script/Script;->program:[B

    .line 92
    invoke-direct {p0, p1}, Lcom/google/bitcoin/script/Script;->parse([B)V

    .line 93
    iput-wide p2, p0, Lcom/google/bitcoin/script/Script;->creationTimeSeconds:J

    .line 94
    return-void
.end method

.method private static castToBigInteger([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 583
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 584
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    const-string v1, "Script attempted to use an integer larger than 4 bytes"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-static {p0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->decodeMPI([BZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static castToBool([B)Z
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 576
    aget-byte v2, p0, v0

    if-eqz v2, :cond_2

    .line 577
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 579
    :cond_1
    return v1

    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createInputScript([B)[B
    .locals 3
    .param p0, "signature"    # [B

    .prologue
    .line 369
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 370
    .local v0, "bits":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p0}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 371
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 372
    .end local v0    # "bits":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createInputScript([B[B)[B
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "pubkey"    # [B

    .prologue
    .line 357
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 358
    .local v0, "bits":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p0}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 359
    invoke-static {v0, p1}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 360
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 361
    .end local v0    # "bits":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createMultiSigOutputScript(ILjava/util/List;)[B
    .locals 8
    .param p0, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "pubkeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 334
    if-lez p0, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gt p0, v4, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v7, 0x10

    if-gt v4, v7, :cond_3

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 338
    sget-object v4, Lcom/google/bitcoin/script/Script;->log:Lorg/slf4j/Logger;

    const-string v5, "Creating a multi-signature output that is non-standard: {} pubkeys, should be <= 3"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .local v0, "bits":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0}, Lcom/google/bitcoin/script/Script;->encodeToOpN(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 344
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v3}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 349
    .end local v0    # "bits":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    move v4, v6

    .line 334
    goto :goto_0

    :cond_2
    move v4, v6

    .line 335
    goto :goto_1

    :cond_3
    move v5, v6

    .line 336
    goto :goto_2

    .line 346
    .restart local v0    # "bits":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/bitcoin/script/Script;->encodeToOpN(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    const/16 v4, 0xae

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public static decodeFromOpN(B)I
    .locals 1
    .param p0, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {p0}, Lcom/google/bitcoin/script/Script;->decodeFromOpN(I)I

    move-result v0

    return v0
.end method

.method static decodeFromOpN(I)I
    .locals 4
    .param p0, "opcode"    # I

    .prologue
    const/16 v3, 0x4f

    const/4 v1, 0x0

    .line 414
    if-eqz p0, :cond_0

    if-eq p0, v3, :cond_0

    const/16 v0, 0x51

    if-lt p0, v0, :cond_1

    const/16 v0, 0x60

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "decodeFromOpN called on non OP_N opcode"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 415
    if-nez p0, :cond_2

    .line 420
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 414
    goto :goto_0

    .line 417
    :cond_2
    if-ne p0, v3, :cond_3

    .line 418
    const/4 v1, -0x1

    goto :goto_1

    .line 420
    :cond_3
    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, v0, -0x51

    goto :goto_1
.end method

.method static encodeToOpN(I)I
    .locals 5
    .param p0, "value"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 424
    if-lt p0, v4, :cond_0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeToOpN called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which we cannot encode in an opcode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 425
    if-nez p0, :cond_1

    .line 430
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 424
    goto :goto_0

    .line 427
    :cond_1
    if-ne p0, v4, :cond_2

    .line 428
    const/16 v1, 0x4f

    goto :goto_1

    .line 430
    :cond_2
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v1, v0, 0x51

    goto :goto_1
.end method

.method private static equalsRange([BI[B)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "start"    # I
    .param p2, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 516
    array-length v2, p2

    add-int/2addr v2, p1

    array-length v3, p0

    if-le v2, v3, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 519
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 521
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static executeCheckSig(Lcom/google/bitcoin/core/Transaction;ILcom/google/bitcoin/script/Script;Ljava/util/LinkedList;II)V
    .locals 14
    .param p0, "txContainingThis"    # Lcom/google/bitcoin/core/Transaction;
    .param p1, "index"    # I
    .param p2, "script"    # Lcom/google/bitcoin/script/Script;
    .param p4, "lastCodeSepLocation"    # I
    .param p5, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "I",
            "Lcom/google/bitcoin/script/Script;",
            "Ljava/util/LinkedList",
            "<[B>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 1096
    .local p3, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 1097
    new-instance v11, Lcom/google/bitcoin/core/ScriptException;

    const-string v12, "Attempted OP_CHECKSIG(VERIFY) on a stack with size < 2"

    invoke-direct {v11, v12}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1098
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1099
    .local v7, "pubKey":[B
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 1101
    .local v9, "sigBytes":[B
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v6

    .line 1102
    .local v6, "prog":[B
    array-length v11, v6

    move/from16 v0, p4

    invoke-static {v6, v0, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1104
    .local v1, "connectedScript":[B
    new-instance v5, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    array-length v11, v9

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v5, v11}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1106
    .local v5, "outStream":Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;
    :try_start_0
    invoke-static {v5, v9}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    invoke-virtual {v5}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v1, v11}, Lcom/google/bitcoin/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object v1

    .line 1113
    const/4 v10, 0x0

    .line 1115
    .local v10, "sigValid":Z
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v9, v11}, Lcom/google/bitcoin/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v8

    .line 1116
    .local v8, "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    iget v11, v8, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    int-to-byte v11, v11

    invoke-virtual {p0, p1, v1, v11}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BB)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    .line 1117
    .local v4, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v8, v7}, Lcom/google/bitcoin/core/ECKey;->verify([BLcom/google/bitcoin/core/ECKey$ECDSASignature;[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 1124
    .end local v4    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v8    # "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    :goto_0
    const/16 v11, 0xac

    move/from16 v0, p5

    if-ne v0, v11, :cond_3

    .line 1125
    if-eqz v10, :cond_2

    const/4 v11, 0x1

    new-array v11, v11, [B

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-byte v13, v11, v12

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_1
    return-void

    .line 1107
    .end local v10    # "sigValid":Z
    :catch_0
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1118
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v10    # "sigValid":Z
    :catch_1
    move-exception v3

    .line 1121
    .local v3, "e1":Ljava/lang/Exception;
    sget-object v11, Lcom/google/bitcoin/script/Script;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_2
    const/4 v11, 0x1

    new-array v11, v11, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    goto :goto_1

    .line 1126
    :cond_3
    const/16 v11, 0xad

    move/from16 v0, p5

    if-ne v0, v11, :cond_1

    .line 1127
    if-nez v10, :cond_1

    .line 1128
    new-instance v11, Lcom/google/bitcoin/core/ScriptException;

    const-string v12, "Script failed OP_CHECKSIGVERIFY"

    invoke-direct {v11, v12}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private static executeMultiSig(Lcom/google/bitcoin/core/Transaction;ILcom/google/bitcoin/script/Script;Ljava/util/LinkedList;III)I
    .locals 20
    .param p0, "txContainingThis"    # Lcom/google/bitcoin/core/Transaction;
    .param p1, "index"    # I
    .param p2, "script"    # Lcom/google/bitcoin/script/Script;
    .param p4, "opCount"    # I
    .param p5, "lastCodeSepLocation"    # I
    .param p6, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "I",
            "Lcom/google/bitcoin/script/Script;",
            "Ljava/util/LinkedList",
            "<[B>;III)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 1133
    .local p3, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1134
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < 2"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1135
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    invoke-static/range {v17 .. v17}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 1136
    .local v11, "pubKeyCount":I
    if-ltz v11, :cond_1

    const/16 v17, 0x14

    move/from16 v0, v17

    if-le v11, v0, :cond_2

    .line 1137
    :cond_1
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "OP_CHECKMULTISIG(VERIFY) with pubkey count out of range"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1138
    :cond_2
    add-int p4, p4, v11

    .line 1139
    const/16 v17, 0xc9

    move/from16 v0, p4

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 1140
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "Total op count > 201 during OP_CHECKMULTISIG(VERIFY)"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1141
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->size()I

    move-result v17

    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1142
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < num_of_pubkeys + 2"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1144
    :cond_4
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1145
    .local v12, "pubkeys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_5

    .line 1146
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1147
    .local v10, "pubKey":[B
    invoke-virtual {v12, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1145
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1150
    .end local v10    # "pubKey":[B
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    invoke-static/range {v17 .. v17}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    .line 1151
    .local v14, "sigCount":I
    if-ltz v14, :cond_6

    if-le v14, v11, :cond_7

    .line 1152
    :cond_6
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "OP_CHECKMULTISIG(VERIFY) with sig count out of range"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1153
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->size()I

    move-result v17

    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1154
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < num_of_pubkeys + num_of_signatures + 3"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1156
    :cond_8
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 1157
    .local v15, "sigs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_9

    .line 1158
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 1159
    .local v13, "sig":[B
    invoke-virtual {v15, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1162
    .end local v13    # "sig":[B
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v9

    .line 1163
    .local v9, "prog":[B
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, p5

    move/from16 v1, v17

    invoke-static {v9, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1165
    .local v3, "connectedScript":[B
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 1166
    .restart local v13    # "sig":[B
    new-instance v8, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1168
    .local v8, "outStream":Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;
    :try_start_0
    invoke-static {v8, v13}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    invoke-virtual {v8}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/bitcoin/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object v3

    .line 1173
    goto :goto_2

    .line 1169
    :catch_0
    move-exception v4

    .line 1170
    .local v4, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1175
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "outStream":Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;
    .end local v13    # "sig":[B
    :cond_a
    const/16 v16, 0x1

    .line 1176
    .local v16, "valid":Z
    :cond_b
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-lez v17, :cond_d

    .line 1177
    invoke-virtual {v12}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1181
    .restart local v10    # "pubKey":[B
    :try_start_1
    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/google/bitcoin/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v13

    .line 1182
    .local v13, "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    iget v0, v13, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BB)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    .line 1183
    .local v5, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10}, Lcom/google/bitcoin/core/ECKey;->verify([BLcom/google/bitcoin/core/ECKey$ECDSASignature;[B)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1184
    invoke-virtual {v15}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1190
    .end local v5    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v13    # "sig":Lcom/google/bitcoin/crypto/TransactionSignature;
    :cond_c
    :goto_3
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v17

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 1191
    const/16 v16, 0x0

    .line 1197
    .end local v10    # "pubKey":[B
    :cond_d
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 1199
    const/16 v17, 0xae

    move/from16 v0, p6

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 1200
    if-eqz v16, :cond_f

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput-byte v19, v17, v18

    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_e
    return p4

    .line 1200
    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v17, v18

    goto :goto_4

    .line 1201
    :cond_10
    const/16 v17, 0xaf

    move/from16 v0, p6

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1202
    if-nez v16, :cond_e

    .line 1203
    new-instance v17, Lcom/google/bitcoin/core/ScriptException;

    const-string v18, "Script failed OP_CHECKMULTISIGVERIFY"

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1185
    .restart local v10    # "pubKey":[B
    :catch_1
    move-exception v17

    goto :goto_3
.end method

.method private static executeScript(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Ljava/util/LinkedList;)V
    .locals 63
    .param p0, "txContainingThis"    # Lcom/google/bitcoin/core/Transaction;
    .param p1, "index"    # J
    .param p3, "script"    # Lcom/google/bitcoin/script/Script;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "J",
            "Lcom/google/bitcoin/script/Script;",
            "Ljava/util/LinkedList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 590
    .local p4, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v12, 0x0

    .line 591
    .local v12, "opCount":I
    const/4 v6, 0x0

    .line 593
    .local v6, "lastCodeSepLocation":I
    new-instance v41, Ljava/util/LinkedList;

    invoke-direct/range {v41 .. v41}, Ljava/util/LinkedList;-><init>()V

    .line 594
    .local v41, "altstack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    new-instance v49, Ljava/util/LinkedList;

    invoke-direct/range {v49 .. v49}, Ljava/util/LinkedList;-><init>()V

    .line 596
    .local v49, "ifStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/google/bitcoin/script/ScriptChunk;

    .line 597
    .local v42, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v60, 0x1

    .line 599
    .local v60, "shouldExecute":Z
    :goto_1
    invoke-virtual/range {v42 .. v42}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    move-object/from16 v0, v42

    iget-object v2, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x208

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 601
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted to push a data string larger than 520 bytes"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v60    # "shouldExecute":Z
    :cond_1
    const/16 v60, 0x0

    goto :goto_1

    .line 603
    .restart local v60    # "shouldExecute":Z
    :cond_2
    if-eqz v60, :cond_0

    .line 606
    move-object/from16 v0, v42

    iget-object v2, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_3
    :goto_2
    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 1087
    :cond_4
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Stack size exceeded range"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_5
    move-object/from16 v0, v42

    iget-object v2, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v7, v2, 0xff

    .line 609
    .local v7, "opcode":I
    const/16 v2, 0x60

    if-le v7, v2, :cond_6

    .line 610
    add-int/lit8 v12, v12, 0x1

    .line 611
    const/16 v2, 0xc9

    if-le v12, v2, :cond_6

    .line 612
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "More script operations than is allowed"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_6
    const/16 v2, 0x65

    if-eq v7, v2, :cond_7

    const/16 v2, 0x66

    if-ne v7, v2, :cond_8

    .line 616
    :cond_7
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Script included OP_VERIF or OP_VERNOTIF"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_8
    const/16 v2, 0x7e

    if-eq v7, v2, :cond_9

    const/16 v2, 0x7f

    if-eq v7, v2, :cond_9

    const/16 v2, 0x80

    if-eq v7, v2, :cond_9

    const/16 v2, 0x81

    if-eq v7, v2, :cond_9

    const/16 v2, 0x83

    if-eq v7, v2, :cond_9

    const/16 v2, 0x84

    if-eq v7, v2, :cond_9

    const/16 v2, 0x85

    if-eq v7, v2, :cond_9

    const/16 v2, 0x86

    if-eq v7, v2, :cond_9

    const/16 v2, 0x8d

    if-eq v7, v2, :cond_9

    const/16 v2, 0x8e

    if-eq v7, v2, :cond_9

    const/16 v2, 0x95

    if-eq v7, v2, :cond_9

    const/16 v2, 0x96

    if-eq v7, v2, :cond_9

    const/16 v2, 0x97

    if-eq v7, v2, :cond_9

    const/16 v2, 0x98

    if-eq v7, v2, :cond_9

    const/16 v2, 0x99

    if-ne v7, v2, :cond_a

    .line 622
    :cond_9
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Script included a disabled Script Op."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_a
    packed-switch v7, :pswitch_data_0

    .line 655
    :pswitch_1
    if-eqz v60, :cond_0

    .line 658
    packed-switch v7, :pswitch_data_1

    .line 1082
    :pswitch_2
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Script used a reserved opcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    :pswitch_3
    if-nez v60, :cond_b

    .line 627
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 630
    :cond_b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_c

    .line 631
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_IF on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 635
    :pswitch_4
    if-nez v60, :cond_d

    .line 636
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 639
    :cond_d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    .line 640
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_NOTIF on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_e
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .line 644
    :pswitch_5
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 645
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_ELSE without OP_IF/NOTIF"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_10
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 649
    :pswitch_6
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 650
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_ENDIF without OP_IF/NOTIF"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_12
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    goto/16 :goto_0

    .line 661
    :pswitch_7
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 679
    :pswitch_8
    invoke-static {v7}, Lcom/google/bitcoin/script/Script;->decodeFromOpN(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 684
    :pswitch_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_13

    .line 685
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_VERIFY on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_13
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 687
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "OP_VERIFY failed"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :pswitch_a
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Script called OP_RETURN"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    :pswitch_b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_14

    .line 693
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_TOALTSTACK on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_14
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 697
    :pswitch_c
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_15

    .line 698
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_TOALTSTACK on an empty altstack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    :cond_15
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 702
    :pswitch_d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_16

    .line 703
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_2DROP on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 704
    :cond_16
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 705
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    goto/16 :goto_2

    .line 708
    :pswitch_e
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    .line 709
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_2DUP on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    :cond_17
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v50

    .line 711
    .local v50, "it2DUP":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 712
    .local v15, "OP2DUPtmpChunk2":[B
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 713
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 716
    .end local v15    # "OP2DUPtmpChunk2":[B
    .end local v50    # "it2DUP":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :pswitch_f
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_18

    .line 717
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_3DUP on a stack with size < 3"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_18
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v52

    .line 719
    .local v52, "it3DUP":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    .line 720
    .local v28, "OP3DUPtmpChunk3":[B
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    .line 721
    .local v27, "OP3DUPtmpChunk2":[B
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 722
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 723
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 726
    .end local v27    # "OP3DUPtmpChunk2":[B
    .end local v28    # "OP3DUPtmpChunk3":[B
    .end local v52    # "it3DUP":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :pswitch_10
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_19

    .line 727
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_2OVER on a stack with size < 4"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 728
    :cond_19
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v51

    .line 729
    .local v51, "it2OVER":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 730
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    .line 732
    .local v16, "OP2OVERtmpChunk2":[B
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 733
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 736
    .end local v16    # "OP2OVERtmpChunk2":[B
    .end local v51    # "it2OVER":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :pswitch_11
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1a

    .line 737
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_2ROT on a stack with size < 6"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    .line 739
    .local v22, "OP2ROTtmpChunk6":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 740
    .local v21, "OP2ROTtmpChunk5":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 741
    .local v20, "OP2ROTtmpChunk4":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    .line 742
    .local v19, "OP2ROTtmpChunk3":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 743
    .local v18, "OP2ROTtmpChunk2":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 744
    .local v17, "OP2ROTtmpChunk1":[B
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 745
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 747
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 748
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 752
    .end local v17    # "OP2ROTtmpChunk1":[B
    .end local v18    # "OP2ROTtmpChunk2":[B
    .end local v19    # "OP2ROTtmpChunk3":[B
    .end local v20    # "OP2ROTtmpChunk4":[B
    .end local v21    # "OP2ROTtmpChunk5":[B
    .end local v22    # "OP2ROTtmpChunk6":[B
    :pswitch_12
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    .line 753
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_2SWAP on a stack with size < 4"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_1b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [B

    .line 755
    .local v26, "OP2SWAPtmpChunk4":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    .line 756
    .local v25, "OP2SWAPtmpChunk3":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    .line 757
    .local v24, "OP2SWAPtmpChunk2":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    .line 758
    .local v23, "OP2SWAPtmpChunk1":[B
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 759
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 760
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 761
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 764
    .end local v23    # "OP2SWAPtmpChunk1":[B
    .end local v24    # "OP2SWAPtmpChunk2":[B
    .end local v25    # "OP2SWAPtmpChunk3":[B
    .end local v26    # "OP2SWAPtmpChunk4":[B
    :pswitch_13
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1c

    .line 765
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_IFDUP on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_1c
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 767
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 770
    :pswitch_14
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 773
    :pswitch_15
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1d

    .line 774
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_DROP on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 775
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    goto/16 :goto_2

    .line 778
    :pswitch_16
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1e

    .line 779
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_DUP on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 783
    :pswitch_17
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1f

    .line 784
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_NIP on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    .line 786
    .local v29, "OPNIPtmpChunk":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 787
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 790
    .end local v29    # "OPNIPtmpChunk":[B
    :pswitch_18
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_20

    .line 791
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_OVER on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :cond_20
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v53

    .line 793
    .local v53, "itOVER":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 794
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 798
    .end local v53    # "itOVER":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :pswitch_19
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_21

    .line 799
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_PICK/OP_ROLL on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 800
    :cond_21
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v61

    .line 801
    .local v61, "val":J
    const-wide/16 v2, 0x0

    cmp-long v2, v61, v2

    if-ltz v2, :cond_22

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v61, v2

    if-ltz v2, :cond_23

    .line 802
    :cond_22
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "OP_PICK/OP_ROLL attempted to get data deeper than stack size"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :cond_23
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v54

    .line 804
    .local v54, "itPICK":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    const-wide/16 v46, 0x0

    .local v46, "i":J
    :goto_5
    cmp-long v2, v46, v61

    if-gez v2, :cond_24

    .line 805
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 804
    const-wide/16 v2, 0x1

    add-long v46, v46, v2

    goto :goto_5

    .line 806
    :cond_24
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [B

    .line 807
    .local v32, "OPROLLtmpChunk":[B
    const/16 v2, 0x7a

    if-ne v7, v2, :cond_25

    .line 808
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->remove()V

    .line 809
    :cond_25
    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 812
    .end local v32    # "OPROLLtmpChunk":[B
    .end local v46    # "i":J
    .end local v54    # "itPICK":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v61    # "val":J
    :pswitch_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_26

    .line 813
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_ROT on a stack with size < 3"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_26
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 815
    .local v35, "OPROTtmpChunk3":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    .line 816
    .local v34, "OPROTtmpChunk2":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    .line 817
    .local v33, "OPROTtmpChunk1":[B
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 818
    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 819
    move-object/from16 v0, p4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 823
    .end local v33    # "OPROTtmpChunk1":[B
    .end local v34    # "OPROTtmpChunk2":[B
    .end local v35    # "OPROTtmpChunk3":[B
    :pswitch_1b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_27

    .line 824
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_SWAP on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 825
    :cond_27
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [B

    .line 826
    .local v37, "OPSWAPtmpChunk2":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [B

    .line 827
    .local v36, "OPSWAPtmpChunk1":[B
    move-object/from16 v0, p4

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 829
    const/16 v2, 0x7d

    if-ne v7, v2, :cond_3

    .line 830
    move-object/from16 v0, p4

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 836
    .end local v36    # "OPSWAPtmpChunk1":[B
    .end local v37    # "OPSWAPtmpChunk2":[B
    :pswitch_1c
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted to use disabled Script Op."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    :pswitch_1d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_28

    .line 839
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_SIZE on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 840
    :cond_28
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 846
    :pswitch_1e
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted to use disabled Script Op."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :pswitch_1f
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_29

    .line 849
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_EQUALVERIFY on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    :cond_29
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    :goto_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2a
    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    goto :goto_6

    .line 853
    :pswitch_20
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2b

    .line 854
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_EQUALVERIFY on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 855
    :cond_2b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 856
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "OP_EQUALVERIFY: non-equal data"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :pswitch_21
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2c

    .line 865
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted a numeric op on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_2c
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v55

    .line 868
    .local v55, "numericOPnum":Ljava/math/BigInteger;
    packed-switch v7, :pswitch_data_2

    .line 895
    :pswitch_22
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unreachable"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 870
    :pswitch_23
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v55

    .line 898
    :cond_2d
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, v55

    invoke-static {v0, v2}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 873
    :pswitch_24
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v55

    .line 874
    goto :goto_7

    .line 876
    :pswitch_25
    invoke-virtual/range {v55 .. v55}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v55

    .line 877
    goto :goto_7

    .line 879
    :pswitch_26
    invoke-virtual/range {v55 .. v55}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_2d

    .line 880
    invoke-virtual/range {v55 .. v55}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v55

    goto :goto_7

    .line 883
    :pswitch_27
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 884
    sget-object v55, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_7

    .line 886
    :cond_2e
    sget-object v55, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 887
    goto :goto_7

    .line 889
    :pswitch_28
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 890
    sget-object v55, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_7

    .line 892
    :cond_2f
    sget-object v55, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 893
    goto :goto_7

    .line 902
    .end local v55    # "numericOPnum":Ljava/math/BigInteger;
    :pswitch_29
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted to use disabled Script Op."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :pswitch_2a
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_30

    .line 916
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted a numeric op on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    :cond_30
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v57

    .line 918
    .local v57, "numericOPnum2":Ljava/math/BigInteger;
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v56

    .line 921
    .local v56, "numericOPnum1":Ljava/math/BigInteger;
    packed-switch v7, :pswitch_data_3

    .line 989
    :pswitch_2b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Opcode switched at runtime?"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 923
    :pswitch_2c
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v58

    .line 992
    .local v58, "numericOPresult":Ljava/math/BigInteger;
    :goto_8
    const/4 v2, 0x0

    move-object/from16 v0, v58

    invoke-static {v0, v2}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 926
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_2d
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v58

    .line 927
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 929
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_2e
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 930
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 932
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_31
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 933
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 935
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_2f
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 936
    :cond_32
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 938
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_33
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 939
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 941
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_30
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 942
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 944
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_34
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 945
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 947
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_31
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 948
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 950
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_35
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 951
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 953
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_32
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_36

    .line 954
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 956
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_36
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 957
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 959
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_33
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_37

    .line 960
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 962
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_37
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 963
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto :goto_8

    .line 965
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_34
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_38

    .line 966
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 968
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_38
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 969
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 971
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_35
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_39

    .line 972
    sget-object v58, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 974
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_39
    sget-object v58, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 975
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 977
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_36
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3a

    .line 978
    move-object/from16 v58, v56

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 980
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_3a
    move-object/from16 v58, v57

    .line 981
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 983
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_37
    invoke-virtual/range {v56 .. v57}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_3b

    .line 984
    move-object/from16 v58, v56

    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 986
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :cond_3b
    move-object/from16 v58, v57

    .line 987
    .restart local v58    # "numericOPresult":Ljava/math/BigInteger;
    goto/16 :goto_8

    .line 999
    .end local v56    # "numericOPnum1":Ljava/math/BigInteger;
    .end local v57    # "numericOPnum2":Ljava/math/BigInteger;
    .end local v58    # "numericOPresult":Ljava/math/BigInteger;
    :pswitch_38
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted to use disabled Script Op."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1001
    :pswitch_39
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3c

    .line 1002
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_NUMEQUALVERIFY on a stack with size < 2"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1003
    :cond_3c
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v31

    .line 1004
    .local v31, "OPNUMEQUALVERIFYnum2":Ljava/math/BigInteger;
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v30

    .line 1006
    .local v30, "OPNUMEQUALVERIFYnum1":Ljava/math/BigInteger;
    invoke-virtual/range {v30 .. v31}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1007
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "OP_NUMEQUALVERIFY failed"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1010
    .end local v30    # "OPNUMEQUALVERIFYnum1":Ljava/math/BigInteger;
    .end local v31    # "OPNUMEQUALVERIFYnum2":Ljava/math/BigInteger;
    :pswitch_3a
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3d

    .line 1011
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_WITHIN on a stack with size < 3"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1012
    :cond_3d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v40

    .line 1013
    .local v40, "OPWITHINnum3":Ljava/math/BigInteger;
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v39

    .line 1014
    .local v39, "OPWITHINnum2":Ljava/math/BigInteger;
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v38

    .line 1015
    .local v38, "OPWITHINnum1":Ljava/math/BigInteger;
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_3e

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3e

    .line 1016
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1018
    :cond_3e
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1021
    .end local v38    # "OPWITHINnum1":Ljava/math/BigInteger;
    .end local v39    # "OPWITHINnum2":Ljava/math/BigInteger;
    .end local v40    # "OPWITHINnum3":Ljava/math/BigInteger;
    :pswitch_3b
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3f

    .line 1022
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_RIPEMD160 on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1023
    :cond_3f
    new-instance v44, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct/range {v44 .. v44}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 1024
    .local v44, "digest":Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [B

    .line 1025
    .local v43, "dataToHash":[B
    const/4 v2, 0x0

    move-object/from16 v0, v43

    array-length v3, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    .line 1026
    const/16 v2, 0x14

    new-array v0, v2, [B

    move-object/from16 v59, v0

    .line 1027
    .local v59, "ripmemdHash":[B
    const/4 v2, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    .line 1028
    move-object/from16 v0, p4

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1031
    .end local v43    # "dataToHash":[B
    .end local v44    # "digest":Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
    .end local v59    # "ripmemdHash":[B
    :pswitch_3c
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_40

    .line 1032
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_SHA1 on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_40
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1035
    :catch_0
    move-exception v45

    .line 1036
    .local v45, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v45

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1040
    .end local v45    # "e":Ljava/security/NoSuchAlgorithmException;
    :pswitch_3d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_41

    .line 1041
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_SHA256 on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_41
    :try_start_1
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1044
    :catch_1
    move-exception v45

    .line 1045
    .restart local v45    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v45

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1049
    .end local v45    # "e":Ljava/security/NoSuchAlgorithmException;
    :pswitch_3e
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_42

    .line 1050
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_HASH160 on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_42
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->sha256hash160([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1054
    :pswitch_3f
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_43

    .line 1055
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "Attempted OP_SHA256 on an empty stack"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1056
    :cond_43
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1059
    :pswitch_40
    invoke-virtual/range {v42 .. v42}, Lcom/google/bitcoin/script/ScriptChunk;->getStartLocationInProgram()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 1060
    goto/16 :goto_2

    .line 1063
    :pswitch_41
    move-wide/from16 v0, p1

    long-to-int v3, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lcom/google/bitcoin/script/Script;->executeCheckSig(Lcom/google/bitcoin/core/Transaction;ILcom/google/bitcoin/script/Script;Ljava/util/LinkedList;II)V

    goto/16 :goto_2

    .line 1067
    :pswitch_42
    move-wide/from16 v0, p1

    long-to-int v9, v0

    move-object/from16 v8, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v13, v6

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/google/bitcoin/script/Script;->executeMultiSig(Lcom/google/bitcoin/core/Transaction;ILcom/google/bitcoin/script/Script;Ljava/util/LinkedList;III)I

    move-result v12

    .line 1068
    goto/16 :goto_2

    .line 1090
    .end local v7    # "opcode":I
    .end local v42    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v60    # "shouldExecute":Z
    :cond_44
    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1091
    new-instance v2, Lcom/google/bitcoin/core/ScriptException;

    const-string v3, "OP_IF/OP_NOTIF without OP_ENDIF"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1092
    :cond_45
    return-void

    .line 624
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_2
        :pswitch_2
        :pswitch_21
        :pswitch_21
        :pswitch_29
        :pswitch_29
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_2a
        :pswitch_2a
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_39
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_41
        :pswitch_42
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 868
    :pswitch_data_2
    .packed-switch 0x8b
        :pswitch_23
        :pswitch_24
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch

    .line 921
    :pswitch_data_3
    .packed-switch 0x93
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_2b
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method

.method public static getP2SHSigOpCount([B)J
    .locals 5
    .param p0, "scriptSig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v1, Lcom/google/bitcoin/script/Script;

    invoke-direct {v1}, Lcom/google/bitcoin/script/Script;-><init>()V

    .line 452
    .local v1, "script":Lcom/google/bitcoin/script/Script;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/google/bitcoin/script/Script;->parse([B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    iget-object v3, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 457
    iget-object v3, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/script/ScriptChunk;

    invoke-virtual {v3}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    new-instance v2, Lcom/google/bitcoin/script/Script;

    invoke-direct {v2}, Lcom/google/bitcoin/script/Script;-><init>()V

    .line 459
    .local v2, "subScript":Lcom/google/bitcoin/script/Script;
    iget-object v3, v1, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v3, v3, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-direct {v2, v3}, Lcom/google/bitcoin/script/Script;->parse([B)V

    .line 460
    iget-object v3, v2, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/bitcoin/script/Script;->getSigOpCount(Ljava/util/List;Z)I

    move-result v3

    int-to-long v3, v3

    .line 462
    .end local v2    # "subScript":Lcom/google/bitcoin/script/Script;
    :goto_2
    return-wide v3

    .line 456
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 462
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 453
    .end local v0    # "i":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getQuickProgram()[B
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->program:[B

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->program:[B

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getSigOpCount(Ljava/util/List;Z)I
    .locals 7
    .param p1, "accurate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/ScriptChunk;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "chunks":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/ScriptChunk;>;"
    const/4 v4, 0x0

    .line 381
    .local v4, "sigOps":I
    const/16 v2, 0xff

    .line 382
    .local v2, "lastOpCode":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    .line 383
    .local v0, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    iget-object v5, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .line 385
    .local v3, "opcode":I
    packed-switch v3, :pswitch_data_0

    .line 400
    :goto_1
    move v2, v3

    goto :goto_0

    .line 388
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 389
    goto :goto_1

    .line 392
    :pswitch_1
    if-eqz p1, :cond_1

    const/16 v5, 0x51

    if-lt v2, v5, :cond_1

    const/16 v5, 0x60

    if-gt v2, v5, :cond_1

    .line 393
    invoke-static {v2}, Lcom/google/bitcoin/script/Script;->decodeFromOpN(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 395
    :cond_1
    add-int/lit8 v4, v4, 0x14

    .line 396
    goto :goto_1

    .line 403
    .end local v0    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v3    # "opcode":I
    :cond_2
    return v4

    .line 385
    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getSigOpCount([B)I
    .locals 3
    .param p0, "program"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/google/bitcoin/script/Script;

    invoke-direct {v0}, Lcom/google/bitcoin/script/Script;-><init>()V

    .line 439
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/google/bitcoin/script/Script;->parse([B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    iget-object v1, v0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/bitcoin/script/Script;->getSigOpCount(Ljava/util/List;Z)I

    move-result v1

    return v1

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private parse([B)V
    .locals 18
    .param p1, "program"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    .line 169
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 171
    .local v9, "initialSize":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    if-lez v13, :cond_d

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    sub-int v12, v9, v13

    .line 173
    .local v12, "startLocationInProgram":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    .line 175
    .local v11, "opcode":I
    const-wide/16 v6, -0x1

    .line 176
    .local v6, "dataToRead":J
    if-ltz v11, :cond_2

    const/16 v13, 0x4c

    if-ge v11, v13, :cond_2

    .line 178
    int-to-long v6, v11

    .line 194
    :cond_0
    :goto_1
    const-wide/16 v13, -0x1

    cmp-long v13, v6, v13

    if-nez v13, :cond_8

    .line 195
    new-instance v4, Lcom/google/bitcoin/script/ScriptChunk;

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    int-to-byte v0, v11

    move/from16 v16, v0

    aput-byte v16, v14, v15

    invoke-direct {v4, v13, v14, v12}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[BI)V

    .line 205
    .local v4, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    :goto_2
    sget-object v13, Lcom/google/bitcoin/script/Script;->INTERN_TABLE:[Lcom/google/bitcoin/script/ScriptChunk;

    if-eqz v13, :cond_c

    .line 206
    sget-object v1, Lcom/google/bitcoin/script/Script;->INTERN_TABLE:[Lcom/google/bitcoin/script/ScriptChunk;

    .local v1, "arr$":[Lcom/google/bitcoin/script/ScriptChunk;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_c

    aget-object v3, v1, v8

    .line 207
    .local v3, "c":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v3, v4}, Lcom/google/bitcoin/script/ScriptChunk;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v4, v3

    .line 206
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 179
    .end local v1    # "arr$":[Lcom/google/bitcoin/script/ScriptChunk;
    .end local v3    # "c":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v4    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    :cond_2
    const/16 v13, 0x4c

    if-ne v11, v13, :cond_4

    .line 180
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    new-instance v13, Lcom/google/bitcoin/core/ScriptException;

    const-string v14, "Unexpected end of script"

    invoke-direct {v13, v14}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 181
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    int-to-long v6, v13

    goto :goto_1

    .line 182
    :cond_4
    const/16 v13, 0x4d

    if-ne v11, v13, :cond_6

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_5

    new-instance v13, Lcom/google/bitcoin/core/ScriptException;

    const-string v14, "Unexpected end of script"

    invoke-direct {v13, v14}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 185
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    int-to-long v6, v13

    goto :goto_1

    .line 186
    :cond_6
    const/16 v13, 0x4e

    if-ne v11, v13, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_7

    new-instance v13, Lcom/google/bitcoin/core/ScriptException;

    const-string v14, "Unexpected end of script"

    invoke-direct {v13, v14}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 190
    :cond_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    int-to-long v15, v15

    const/16 v17, 0x8

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    int-to-long v15, v15

    const/16 v17, 0x10

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    int-to-long v15, v15

    const/16 v17, 0x18

    shl-long v15, v15, v17

    or-long v6, v13, v15

    goto/16 :goto_1

    .line 197
    :cond_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v6, v13

    if-lez v13, :cond_9

    .line 198
    new-instance v13, Lcom/google/bitcoin/core/ScriptException;

    const-string v14, "Push of data element that is larger than remaining data"

    invoke-direct {v13, v14}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 199
    :cond_9
    long-to-int v13, v6

    new-array v5, v13, [B

    .line 200
    .local v5, "data":[B
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    long-to-int v14, v6

    invoke-virtual {v2, v5, v13, v14}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v13, v6

    if-nez v13, :cond_b

    :cond_a
    const/4 v13, 0x1

    :goto_4
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 201
    new-instance v4, Lcom/google/bitcoin/script/ScriptChunk;

    const/4 v13, 0x0

    invoke-direct {v4, v13, v5, v12}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[BI)V

    .restart local v4    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    goto/16 :goto_2

    .line 200
    .end local v4    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    :cond_b
    const/4 v13, 0x0

    goto :goto_4

    .line 210
    .end local v5    # "data":[B
    .restart local v4    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 212
    .end local v4    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v6    # "dataToRead":J
    .end local v11    # "opcode":I
    .end local v12    # "startLocationInProgram":I
    :cond_d
    return-void
.end method

.method public static removeAllInstancesOf([B[B)[B
    .locals 10
    .param p0, "inputScript"    # [B
    .param p1, "chunkToRemove"    # [B

    .prologue
    const/16 v9, 0x4c

    .line 529
    new-instance v1, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    array-length v7, p0

    invoke-direct {v1, v7}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 531
    .local v1, "bos":Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;
    const/4 v2, 0x0

    .line 532
    .local v2, "cursor":I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_5

    .line 533
    invoke-static {p0, v2, p1}, Lcom/google/bitcoin/script/Script;->equalsRange([BI[B)Z

    move-result v6

    .line 535
    .local v6, "skip":Z
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "cursor":I
    .local v3, "cursor":I
    aget-byte v7, p0, v2

    and-int/lit16 v5, v7, 0xff

    .line 536
    .local v5, "opcode":I
    const/4 v0, 0x0

    .line 537
    .local v0, "additionalBytes":I
    if-ltz v5, :cond_2

    if-ge v5, v9, :cond_2

    .line 538
    move v0, v5

    .line 550
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 552
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 553
    add-int v7, v3, v0

    invoke-static {p0, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_1
    add-int v2, v3, v0

    .line 559
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    goto :goto_0

    .line 539
    .end local v2    # "cursor":I
    .restart local v3    # "cursor":I
    :cond_2
    if-ne v5, v9, :cond_3

    .line 540
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v0, v7, 0x1

    goto :goto_1

    .line 541
    :cond_3
    const/16 v7, 0x4d

    if-ne v5, v7, :cond_4

    .line 542
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x2

    goto :goto_1

    .line 544
    :cond_4
    const/16 v7, 0x4e

    if-ne v5, v7, :cond_0

    .line 545
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x4

    goto :goto_1

    .line 554
    :catch_0
    move-exception v4

    .line 555
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 560
    .end local v0    # "additionalBytes":I
    .end local v3    # "cursor":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "opcode":I
    .end local v6    # "skip":Z
    .restart local v2    # "cursor":I
    :cond_5
    invoke-virtual {v1}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static removeAllInstancesOfOp([BI)[B
    .locals 3
    .param p0, "inputScript"    # [B
    .param p1, "opCode"    # I

    .prologue
    .line 567
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/bitcoin/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeBytes(Ljava/io/OutputStream;[B)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4c

    .line 315
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 316
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 317
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 330
    :goto_0
    return-void

    .line 318
    :cond_0
    array-length v0, p1

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 319
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 320
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 321
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 322
    :cond_1
    array-length v0, p1

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    .line 323
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 324
    array-length v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 325
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 326
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 328
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public correctlySpends(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Z)V
    .locals 11
    .param p1, "txContainingThis"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "scriptSigIndex"    # J
    .param p4, "scriptPubKey"    # Lcom/google/bitcoin/script/Script;
    .param p5, "enforceP2SH"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 1221
    :try_start_0
    new-instance v7, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local p1    # "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    .local v7, "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x2710

    if-gt v8, v9, :cond_0

    invoke-virtual {p4}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x2710

    if-le v8, v9, :cond_1

    .line 1226
    :cond_0
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    const-string v9, "Script larger than 10,000 bytes"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1222
    .end local v7    # "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    .restart local p1    # "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v1

    .line 1223
    .local v1, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1228
    .end local v1    # "e":Lcom/google/bitcoin/core/ProtocolException;
    .end local p1    # "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    .restart local v7    # "txContainingThis":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1229
    .local v6, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v3, 0x0

    .line 1231
    .local v3, "p2shStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-static {v7, p2, p3, p0, v6}, Lcom/google/bitcoin/script/Script;->executeScript(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Ljava/util/LinkedList;)V

    .line 1232
    if-eqz p5, :cond_2

    .line 1233
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "p2shStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-direct {v3, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1234
    .restart local v3    # "p2shStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    :cond_2
    invoke-static {v7, p2, p3, p4, v6}, Lcom/google/bitcoin/script/Script;->executeScript(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Ljava/util/LinkedList;)V

    .line 1236
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 1237
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    const-string v9, "Stack empty at end of script execution."

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1239
    :cond_3
    invoke-virtual {v6}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1240
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Script resulted in a non-true stack: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1255
    :cond_4
    if-eqz p5, :cond_8

    invoke-virtual {p4}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1256
    iget-object v8, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    .line 1257
    .local v0, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x60

    if-le v8, v9, :cond_5

    .line 1258
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    const-string v9, "Attempted to spend a P2SH scriptPubKey with a script that contained script ops"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1260
    .end local v0    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1261
    .local v4, "scriptPubKeyBytes":[B
    new-instance v5, Lcom/google/bitcoin/script/Script;

    invoke-direct {v5, v4}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 1263
    .local v5, "scriptPubKeyP2SH":Lcom/google/bitcoin/script/Script;
    invoke-static {v7, p2, p3, v5, v3}, Lcom/google/bitcoin/script/Script;->executeScript(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Ljava/util/LinkedList;)V

    .line 1265
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_7

    .line 1266
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    const-string v9, "P2SH stack empty at end of script execution."

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1268
    :cond_7
    invoke-virtual {v3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/google/bitcoin/script/Script;->castToBool([B)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1269
    new-instance v8, Lcom/google/bitcoin/core/ScriptException;

    const-string v9, "P2SH script execution resulted in a non-true stack"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1271
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "scriptPubKeyBytes":[B
    .end local v5    # "scriptPubKeyP2SH":Lcom/google/bitcoin/script/Script;
    :cond_8
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1282
    instance-of v1, p1, Lcom/google/bitcoin/script/Script;

    if-nez v1, :cond_0

    .line 1283
    const/4 v1, 0x0

    .line 1285
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1284
    check-cast v0, Lcom/google/bitcoin/script/Script;

    .line 1285
    .local v0, "s":Lcom/google/bitcoin/script/Script;
    invoke-direct {p0}, Lcom/google/bitcoin/script/Script;->getQuickProgram()[B

    move-result-object v1

    invoke-direct {v0}, Lcom/google/bitcoin/script/Script;->getQuickProgram()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/ScriptChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimeSeconds()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/bitcoin/script/Script;->creationTimeSeconds:J

    return-wide v0
.end method

.method public getFromAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcom/google/bitcoin/core/Address;

    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->getPubKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->sha256hash160([B)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public getProgram()[B
    .locals 6

    .prologue
    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/script/Script;->program:[B

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/google/bitcoin/script/Script;->program:[B

    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->program:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 134
    :goto_0
    return-object v4

    .line 129
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/script/ScriptChunk;

    .line 131
    .local v1, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v1, v0}, Lcom/google/bitcoin/script/ScriptChunk;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/bitcoin/script/Script;->program:[B

    .line 134
    iget-object v4, p0, Lcom/google/bitcoin/script/Script;->program:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getPubKey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 273
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script not of right size, expecting 2 but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 277
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    .line 280
    :goto_0
    return-object v0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-le v0, v2, :cond_2

    .line 280
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script did not match expected form: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPubKeyHash()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    .line 258
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    const-string v1, "Script not in the standard scriptPubKey form"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/google/bitcoin/core/Address;

    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 303
    :goto_0
    return-object v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {p1, p0}, Lcom/google/bitcoin/core/Address;->fromP2SHScript(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/script/Script;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    const-string v1, "Cannot cast this script to a pay-to-address type"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/google/bitcoin/script/Script;->getQuickProgram()[B

    move-result-object v0

    .line 1291
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    return v1
.end method

.method public isPayToScriptHash()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    .line 483
    .local v0, "program":[B
    array-length v3, v0

    const/16 v4, 0x17

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    const/16 v3, 0x16

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x87

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isSentToAddress()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v3, 0x76

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v3, 0xa9

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v3, 0x88

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isSentToMultiSig()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 493
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x4

    if-ge v5, v8, :cond_0

    move v5, v6

    .line 512
    :goto_0
    return v5

    .line 494
    :cond_0
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    iget-object v8, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    .line 496
    .local v0, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 497
    :cond_1
    const/16 v5, 0xae

    invoke-virtual {v0, v5}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xaf

    invoke-virtual {v0, v5}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    .line 500
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    iget-object v8, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/script/ScriptChunk;

    .line 501
    .local v3, "m":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v3}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    goto :goto_0

    .line 502
    :cond_3
    iget-object v5, v3, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v8, 0x0

    aget-byte v5, v5, v8

    invoke-static {v5}, Lcom/google/bitcoin/script/Script;->decodeFromOpN(B)I

    move-result v4

    .line 503
    .local v4, "numKeys":I
    if-lt v4, v7, :cond_4

    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v8, v4, 0x3

    if-eq v5, v8, :cond_5

    :cond_4
    move v5, v6

    goto :goto_0

    .line 504
    :cond_5
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_7

    .line 505
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/script/ScriptChunk;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_0

    .line 504
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    :cond_7
    iget-object v5, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v5, v5, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v8, 0x0

    aget-byte v5, v5, v8

    invoke-static {v5}, Lcom/google/bitcoin/script/Script;->decodeFromOpN(B)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ge v5, v7, :cond_8

    move v5, v6

    goto/16 :goto_0

    .line 509
    .end local v2    # "i":I
    .end local v3    # "m":Lcom/google/bitcoin/script/ScriptChunk;
    .end local v4    # "numKeys":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    move v5, v6

    .line 510
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "i":I
    .restart local v3    # "m":Lcom/google/bitcoin/script/ScriptChunk;
    .restart local v4    # "numKeys":I
    :cond_8
    move v5, v7

    .line 512
    goto/16 :goto_0
.end method

.method public isSentToP2SH()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v0

    return v0
.end method

.method public isSentToRawPubKey()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/script/ScriptChunk;

    iget-object v0, v0, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setCreationTimeSeconds(J)V
    .locals 0
    .param p1, "creationTimeSeconds"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/google/bitcoin/script/Script;->creationTimeSeconds:J

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/bitcoin/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/script/ScriptChunk;

    .line 110
    .local v1, "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    invoke-virtual {v1}, Lcom/google/bitcoin/script/ScriptChunk;->isOpCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, v1, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/google/bitcoin/script/ScriptOpCodes;->getOpCodeName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_0
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, v1, Lcom/google/bitcoin/script/ScriptChunk;->data:[B

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v1    # "chunk":Lcom/google/bitcoin/script/ScriptChunk;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
