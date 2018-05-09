.class public Lcom/google/bitcoin/core/Block;
.super Lcom/google/bitcoin/core/Message;
.source "Block.java"


# static fields
.field static final ALLOWED_TIME_DRIFT:J = 0x1c20L

.field public static final EASIEST_DIFFICULTY_TARGET:J = 0x207fffffL

.field static final EMPTY_BYTES:[B

.field public static final HEADER_SIZE:I = 0x50

.field private static LARGEST_HASH:Ljava/math/BigInteger; = null

.field public static final MAX_BLOCK_SIGOPS:I = 0x4e20

.field public static final MAX_BLOCK_SIZE:I = 0xf4240

.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x260258973c159151L

.field private static txCounter:I


# instance fields
.field private difficultyTarget:J

.field private transient hash:Lcom/google/bitcoin/core/Sha256Hash;

.field private transient headerBytesValid:Z

.field private transient headerParsed:Z

.field private merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

.field private nonce:J

.field private transient optimalEncodingMessageSize:I

.field private prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

.field private transient scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

.field private time:J

.field private transient transactionBytesValid:Z

.field transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private transient transactionsParsed:Z

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/google/bitcoin/core/Block;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Block;->log:Lorg/slf4j/Logger;

    .line 559
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Block;->LARGEST_HASH:Ljava/math/BigInteger;

    .line 1017
    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 107
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->version:J

    .line 108
    const-wide/32 v0, 0x1d07fff8

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->time:J

    .line 110
    sget-object v0, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 112
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Sha256Hash;JJJLjava/util/List;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "version"    # J
    .param p4, "prevBlockHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p5, "merkleRoot"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p6, "time"    # J
    .param p8, "difficultyTarget"    # J
    .param p10, "nonce"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "J",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "JJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p12, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 151
    iput-wide p2, p0, Lcom/google/bitcoin/core/Block;->version:J

    .line 152
    iput-object p4, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 153
    iput-object p5, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 154
    iput-wide p6, p0, Lcom/google/bitcoin/core/Block;->time:J

    .line 155
    iput-wide p8, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    .line 156
    iput-wide p10, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .param p3, "parseLazy"    # Z
    .param p4, "parseRetain"    # Z
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 134
    return-void
.end method

.method private buildMerkleTree()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 761
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V

    .line 762
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v12, "tree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/core/Transaction;

    .line 765
    .local v11, "t":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    .end local v11    # "t":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    const/4 v8, 0x0

    .line 769
    .local v8, "levelOffset":I
    iget-object v4, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "levelSize":I
    :goto_1
    const/4 v4, 0x1

    if-le v9, v4, :cond_2

    .line 771
    const/4 v7, 0x0

    .local v7, "left":I
    :goto_2
    if-ge v7, v9, :cond_1

    .line 774
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v5, v9, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 775
    .local v10, "right":I
    add-int v4, v8, v7

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    .line 776
    .local v0, "leftBytes":[B
    add-int v4, v8, v10

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    .local v3, "rightBytes":[B
    move v4, v1

    move v5, v2

    .line 777
    invoke-static/range {v0 .. v5}, Lcom/google/bitcoin/core/Utils;->doubleDigestTwoBuffers([BII[BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 780
    .end local v0    # "leftBytes":[B
    .end local v3    # "rightBytes":[B
    .end local v10    # "right":I
    :cond_1
    add-int/2addr v8, v9

    .line 769
    add-int/lit8 v4, v9, 0x1

    div-int/lit8 v9, v4, 0x2

    goto :goto_1

    .line 782
    .end local v7    # "left":I
    :cond_2
    return-object v12
.end method

.method private calculateHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 4

    .prologue
    .line 507
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 508
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 509
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 510
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private calculateMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 3

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->buildMerkleTree()Ljava/util/List;

    move-result-object v0

    .line 727
    .local v0, "tree":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    return-object v2
.end method

.method private calculateScryptHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 4

    .prologue
    .line 517
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 518
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 519
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->scryptDigest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 520
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkMerkleRoot()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->calculateMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 719
    .local v0, "calculatedRoot":Lcom/google/bitcoin/core/Sha256Hash;
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    sget-object v1, Lcom/google/bitcoin/core/Block;->log:Lorg/slf4j/Logger;

    const-string v2, "Merkle tree did not verify"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 721
    new-instance v1, Lcom/google/bitcoin/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merkle hashes do not match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_0
    return-void
.end method

.method private checkProofOfWork(Z)Z
    .locals 5
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 673
    sget v3, Lcom/google/bitcoin/core/CoinDefinition;->blockHeight:I

    if-nez v3, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v2

    .line 676
    :cond_1
    sget v3, Lcom/google/bitcoin/core/CoinDefinition;->blockHeight:I

    const v4, 0x213b2

    if-ge v3, v4, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 682
    .local v1, "target":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 685
    .local v0, "h":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getScryptHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 687
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_0

    .line 689
    if-eqz p1, :cond_2

    .line 690
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash is higher than target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getScryptHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSigOps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, "sigOps":I
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 711
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getSigOpCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 713
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    const/16 v3, 0x4e20

    if-le v1, v3, :cond_1

    .line 714
    new-instance v3, Lcom/google/bitcoin/core/VerificationException;

    const-string v4, "Block had too many Signature Operations"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 715
    :cond_1
    return-void
.end method

.method private checkTimestamp()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 701
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    .line 702
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/google/bitcoin/core/Block;->time:J

    const-wide/16 v4, 0x1c20

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 703
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Block too far in future"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 704
    :cond_0
    return-void
.end method

.method private checkTransactions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    new-instance v1, Lcom/google/bitcoin/core/VerificationException;

    const-string v2, "First tx is not coinbase"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    new-instance v1, Lcom/google/bitcoin/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is coinbase when it should not be."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_2
    return-void
.end method

.method private guessTransactionsLength()I
    .locals 5

    .prologue
    .line 461
    iget-boolean v3, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    if-eqz v3, :cond_1

    .line 462
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    array-length v3, v3

    add-int/lit8 v1, v3, -0x50

    .line 470
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v3, :cond_2

    .line 464
    const/4 v1, 0x0

    goto :goto_0

    .line 465
    :cond_2
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v1

    .line 466
    .local v1, "len":I
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 468
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    iget v3, v2, Lcom/google/bitcoin/core/Transaction;->length:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_3

    const/16 v3, 0xff

    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_3
    iget v3, v2, Lcom/google/bitcoin/core/Transaction;->length:I

    goto :goto_2
.end method

.method private maybeParseHeader()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->parseHeader()V

    .line 279
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    if-nez v1, :cond_0

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v1, Lcom/google/bitcoin/core/Message$LazyParseException;

    const-string v2, "ProtocolException caught during lazy parse.  For safe access to fields call ensureParsed before attempting read or write access"

    invoke-direct {v1, v2, v0}, Lcom/google/bitcoin/core/Message$LazyParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeParseTransactions()V
    .locals 3

    .prologue
    .line 289
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    if-nez v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->parseTransactions()V

    .line 293
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    .line 295
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v1, Lcom/google/bitcoin/core/Message$LazyParseException;

    const-string v2, "ProtocolException caught during lazy parse.  For safe access to fields call ensureParsed before attempting read or write access"

    invoke-direct {v1, v2, v0}, Lcom/google/bitcoin/core/Message$LazyParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/core/Block;->offset:I

    iput v0, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    .line 188
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->version:J

    .line 189
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 190
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 191
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->time:J

    .line 192
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    .line 193
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    .line 195
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    iget v2, p0, Lcom/google/bitcoin/core/Block;->offset:I

    iget v3, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    invoke-static {v1, v2, v3}, Lcom/google/bitcoin/core/Utils;->doubleDigest([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    .line 198
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    goto :goto_0
.end method

.method private parseTransactions()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 202
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v1, p0, Lcom/google/bitcoin/core/Block;->offset:I

    add-int/lit8 v1, v1, 0x50

    iput v1, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    .line 206
    const/16 v1, 0x50

    iput v1, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    .line 207
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    if-ne v1, v2, :cond_1

    .line 209
    iput-boolean v10, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->readVarInt()J

    move-result-wide v1

    long-to-int v9, v1

    .line 215
    .local v9, "numTransactions":I
    iget v1, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    invoke-static {v9}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    .line 217
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 218
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    iget-boolean v5, p0, Lcom/google/bitcoin/core/Block;->parseLazy:Z

    iget-boolean v6, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    const/high16 v7, -0x80000000

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 220
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v1

    sget-object v2, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    .line 221
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget v1, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getMessageSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    .line 223
    iget v1, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getOptimalEncodingMessageSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    iput-boolean v10, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    .line 228
    iget-boolean v1, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    iput-boolean v1, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 181
    return-void
.end method

.method private unCacheHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    .line 482
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    if-nez v0, :cond_0

    .line 483
    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    .line 484
    :cond_0
    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 485
    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->checksum:[B

    .line 486
    return-void
.end method

.method private unCacheTransactions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    .line 491
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    if-nez v0, :cond_0

    .line 492
    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 498
    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 499
    return-void
.end method

.method private writeTransactions(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    if-eqz v2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/bitcoin/core/Block;->offset:I

    iget v4, p0, Lcom/google/bitcoin/core/Block;->length:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 401
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Block;->offset:I

    add-int/lit8 v3, v3, 0x50

    iget v4, p0, Lcom/google/bitcoin/core/Block;->length:I

    add-int/lit8 v4, v4, -0x50

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 406
    new-instance v2, Lcom/google/bitcoin/core/VarInt;

    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 407
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 408
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method addCoinbaseTransaction([BLjava/math/BigInteger;)V
    .locals 7
    .param p1, "pubKeyTo"    # [B
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheTransactions()V

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    .line 1002
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1008
    .local v0, "coinbase":Lcom/google/bitcoin/core/Transaction;
    new-instance v1, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    sget v5, Lcom/google/bitcoin/core/Block;->txCounter:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/google/bitcoin/core/Block;->txCounter:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/google/bitcoin/core/Block;->txCounter:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-direct {v1, v2, v0, v3}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[B)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 1009
    new-instance v1, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    new-instance v3, Lcom/google/bitcoin/core/ECKey;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    invoke-static {v3}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v3

    invoke-direct {v1, v2, v0, p2, v3}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1011
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/Transaction;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 1013
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 1014
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/google/bitcoin/core/Transaction;->length:I

    invoke-virtual {p0, v1, v2}, Lcom/google/bitcoin/core/Block;->adjustLength(II)V

    .line 1015
    return-void
.end method

.method public addTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "t"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;Z)V

    .line 883
    return-void
.end method

.method addTransaction(Lcom/google/bitcoin/core/Transaction;Z)V
    .locals 3
    .param p1, "t"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "runSanityChecks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 887
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheTransactions()V

    .line 888
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    .line 891
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/Transaction;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 892
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a non-coinbase transaction as the first transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a coinbase transaction when there already is one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/google/bitcoin/core/Transaction;->length:I

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Block;->adjustLength(II)V

    .line 899
    iput-object v2, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 900
    iput-object v2, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 901
    return-void
.end method

.method public bitcoinSerialize()[B
    .locals 6

    .prologue
    .line 421
    iget-boolean v2, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    const-string v3, "Bytes should never be null if headerBytesValid && transactionBytesValid"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget v2, p0, Lcom/google/bitcoin/core/Block;->length:I

    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    .line 442
    :goto_0
    return-object v0

    .line 427
    :cond_0
    iget v2, p0, Lcom/google/bitcoin/core/Block;->length:I

    new-array v0, v2, [B

    .line 428
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/Block;->offset:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/bitcoin/core/Block;->length:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 435
    .end local v0    # "buf":[B
    :cond_1
    new-instance v1, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    iget v2, p0, Lcom/google/bitcoin/core/Block;->length:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->guessTransactionsLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    :goto_1
    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 437
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 438
    invoke-direct {p0, v1}, Lcom/google/bitcoin/core/Block;->writeTransactions(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 435
    .end local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iget v2, p0, Lcom/google/bitcoin/core/Block;->length:I

    goto :goto_1

    .line 439
    .restart local v1    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Block;->writeTransactions(Ljava/io/OutputStream;)V

    .line 450
    return-void
.end method

.method public cloneAsHeader()Lcom/google/bitcoin/core/Block;
    .locals 3

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 577
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 578
    .local v0, "block":Lcom/google/bitcoin/core/Block;
    iget-wide v1, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/Block;->nonce:J

    .line 579
    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->duplicate()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    iput-object v1, v0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 580
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->duplicate()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    iput-object v1, v0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 581
    iget-wide v1, p0, Lcom/google/bitcoin/core/Block;->version:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/Block;->version:J

    .line 582
    iget-wide v1, p0, Lcom/google/bitcoin/core/Block;->time:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/Block;->time:J

    .line 583
    iget-wide v1, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    iput-wide v1, v0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    .line 584
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    .line 585
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->duplicate()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    iput-object v1, v0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 586
    return-object v0
.end method

.method public createNextBlock(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/Block;
    .locals 2
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1085
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public createNextBlock(Lcom/google/bitcoin/core/Address;J)Lcom/google/bitcoin/core/Block;
    .locals 7
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;
    .param p2, "time"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1024
    const/4 v2, 0x0

    sget-object v5, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;)Lcom/google/bitcoin/core/Block;
    .locals 7
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prevOut"    # Lcom/google/bitcoin/core/TransactionOutPoint;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1075
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    sget-object v5, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;
    .locals 9
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prevOut"    # Lcom/google/bitcoin/core/TransactionOutPoint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "time"    # J
    .param p5, "pubKey"    # [B
    .param p6, "coinbaseValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v8, 0x0

    .line 1033
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v5, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v5}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1034
    .local v0, "b":Lcom/google/bitcoin/core/Block;
    iget-wide v5, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    invoke-virtual {v0, v5, v6}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 1035
    invoke-virtual {v0, p5, p6}, Lcom/google/bitcoin/core/Block;->addCoinbaseTransaction([BLjava/math/BigInteger;)V

    .line 1037
    if-eqz p1, :cond_0

    .line 1039
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    iget-object v5, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 1040
    .local v4, "t":Lcom/google/bitcoin/core/Transaction;
    new-instance v5, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v6, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/16 v7, 0x32

    invoke-static {v7, v8}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7, p1}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 1043
    if-nez p2, :cond_1

    .line 1044
    new-instance v3, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v5, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v6, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    sget-object v7, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    invoke-static {v6, v7}, Lcom/google/bitcoin/script/Script;->createInputScript([B[B)[B

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[B)V

    .line 1047
    .local v3, "input":Lcom/google/bitcoin/core/TransactionInput;
    const/16 v5, 0x20

    new-array v1, v5, [B

    .line 1048
    .local v1, "counter":[B
    sget v5, Lcom/google/bitcoin/core/Block;->txCounter:I

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    .line 1049
    const/4 v5, 0x1

    sget v6, Lcom/google/bitcoin/core/Block;->txCounter:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/google/bitcoin/core/Block;->txCounter:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1050
    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v5

    new-instance v6, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-direct {v6, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/core/TransactionOutPoint;->setHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1054
    .end local v1    # "counter":[B
    :goto_0
    invoke-virtual {v4, v3}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 1055
    invoke-virtual {v0, v4}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 1058
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v4    # "t":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/bitcoin/core/Block;->setPrevBlockHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 1060
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-ltz v5, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 1064
    :goto_1
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->solve()V

    .line 1066
    :try_start_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->verifyHeader()V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    return-object v0

    .line 1052
    .restart local v4    # "t":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    new-instance v3, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v5, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v6, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    sget-object v7, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    invoke-static {v6, v7}, Lcom/google/bitcoin/script/Script;->createInputScript([B[B)[B

    move-result-object v6

    invoke-direct {v3, v5, v4, v6, p2}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BLcom/google/bitcoin/core/TransactionOutPoint;)V

    .restart local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    goto :goto_0

    .line 1063
    .end local v3    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v4    # "t":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v2

    .line 1068
    .local v2, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public createNextBlock(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)Lcom/google/bitcoin/core/Block;
    .locals 7
    .param p1, "to"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1080
    const/4 v2, 0x0

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    sget-object v5, Lcom/google/bitcoin/core/Block;->EMPTY_BYTES:[B

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method createNextBlockWithCoinbase([B)Lcom/google/bitcoin/core/Block;
    .locals 7
    .param p1, "pubKey"    # [B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1099
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    const/16 v0, 0x32

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public createNextBlockWithCoinbase([BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;
    .locals 7
    .param p1, "pubKey"    # [B
    .param p2, "coinbaseValue"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1090
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeSeconds()J

    move-result-wide v3

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Block;->createNextBlock(Lcom/google/bitcoin/core/Address;Lcom/google/bitcoin/core/TransactionOutPoint;J[BLjava/math/BigInteger;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public ensureParsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 327
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V
    :try_end_0
    .catch Lcom/google/bitcoin/core/Message$LazyParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lcom/google/bitcoin/core/Message$LazyParseException;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/bitcoin/core/ProtocolException;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ProtocolException;

    throw v1

    .line 331
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public ensureParsedHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V
    :try_end_0
    .catch Lcom/google/bitcoin/core/Message$LazyParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/google/bitcoin/core/Message$LazyParseException;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/bitcoin/core/ProtocolException;

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ProtocolException;

    throw v1

    .line 351
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public ensureParsedTransactions()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V
    :try_end_0
    .catch Lcom/google/bitcoin/core/Message$LazyParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Lcom/google/bitcoin/core/Message$LazyParseException;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/bitcoin/core/ProtocolException;

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message$LazyParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ProtocolException;

    throw v1

    .line 371
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/ProtocolException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 847
    instance-of v1, p1, Lcom/google/bitcoin/core/Block;

    if-nez v1, :cond_0

    .line 848
    const/4 v1, 0x0

    .line 850
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 849
    check-cast v0, Lcom/google/bitcoin/core/Block;

    .line 850
    .local v0, "other":Lcom/google/bitcoin/core/Block;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBlockInflation(I)Ljava/math/BigInteger;
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 173
    invoke-static {p1}, Lcom/google/bitcoin/core/CoinDefinition;->GetBlockReward(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDifficultyTarget()J
    .locals 2

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 958
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    return-wide v0
.end method

.method public getDifficultyTargetAsInteger()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 653
    iget-wide v1, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 654
    .local v0, "target":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/Block;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v1, v1, Lcom/google/bitcoin/core/NetworkParameters;->proofOfWorkLimit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 655
    :cond_0
    new-instance v1, Lcom/google/bitcoin/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Difficulty target is bad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_1
    return-object v0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->calculateHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getHashAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 863
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 868
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->calculateMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 975
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    return-wide v0
.end method

.method public getOptimalEncodingMessageSize()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V

    .line 241
    iget v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_1

    .line 242
    iget v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getMessageSize()I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    .line 244
    iget v0, p0, Lcom/google/bitcoin/core/Block;->optimalEncodingMessageSize:I

    goto :goto_0
.end method

.method public getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 914
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getScryptHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->calculateScryptHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method

.method public getScryptHashAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getScryptHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 937
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeSeconds()J
    .locals 2

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 930
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->time:J

    return-wide v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V

    .line 989
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 906
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->version:J

    return-wide v0
.end method

.method public getWork()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 571
    .local v0, "target":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/bitcoin/core/Block;->LARGEST_HASH:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method isHeaderBytesValid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    return v0
.end method

.method isParsedHeader()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    return v0
.end method

.method isParsedTransactions()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    return v0
.end method

.method isTransactionBytesValid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    return v0
.end method

.method protected maybeParse()V
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lcom/google/bitcoin/core/Message$LazyParseException;

    const-string v1, "checkParse() should never be called on a Block.  Instead use checkParseHeader() and checkParseTransactions()"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Message$LazyParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->parseHeader()V

    .line 233
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->parseTransactions()V

    .line 234
    iget v0, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    iget v1, p0, Lcom/google/bitcoin/core/Block;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    .line 235
    return-void
.end method

.method protected parseLite()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x50

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    iget v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 251
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->parseLazy:Z

    const-string v3, "Performing lite parse of block transaction as block was initialised from byte array without providing length.  This should never need to happen."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 254
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->parseTransactions()V

    .line 255
    iget v0, p0, Lcom/google/bitcoin/core/Block;->cursor:I

    iget v3, p0, Lcom/google/bitcoin/core/Block;->offset:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    .line 259
    :goto_0
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerParsed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    if-lt v0, v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    .line 260
    return-void

    .line 257
    :cond_2
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionsParsed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->parseRetain:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/bitcoin/core/Block;->length:I

    if-le v0, v4, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/bitcoin/core/Block;->transactionBytesValid:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setDifficultyTarget(J)V
    .locals 1
    .param p1, "compactForm"    # J

    .prologue
    const/4 v0, 0x0

    .line 963
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 964
    iput-wide p1, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    .line 965
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 966
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 967
    return-void
.end method

.method setMerkleRoot(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 1
    .param p1, "value"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 876
    iput-object p1, p0, Lcom/google/bitcoin/core/Block;->merkleRoot:Lcom/google/bitcoin/core/Sha256Hash;

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 878
    return-void
.end method

.method public setNonce(J)V
    .locals 1
    .param p1, "nonce"    # J

    .prologue
    const/4 v0, 0x0

    .line 980
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 981
    iput-wide p1, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    .line 982
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 983
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 984
    return-void
.end method

.method setPrevBlockHash(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 1
    .param p1, "prevBlockHash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    const/4 v0, 0x0

    .line 918
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 919
    iput-object p1, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 920
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 921
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 922
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 941
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheHeader()V

    .line 942
    iput-wide p1, p0, Lcom/google/bitcoin/core/Block;->time:J

    .line 943
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 944
    iput-object v0, p0, Lcom/google/bitcoin/core/Block;->scryptHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 945
    return-void
.end method

.method public solve()V
    .locals 5

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 636
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/bitcoin/core/Block;->checkProofOfWork(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getNonce()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/bitcoin/core/Block;->setNonce(J)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "v"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "s":Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lcom/google/bitcoin/core/Block;->version:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    const-string v3, " block: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v3, "   previous block: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getPrevBlockHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v3, "   merkle root: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v3, "   time: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-wide v3, p0, Lcom/google/bitcoin/core/Block;->time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/bitcoin/core/Block;->time:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v3, "   difficulty target (nBits): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-wide v3, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 611
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v3, "   nonce: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-wide v3, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 614
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 616
    const-string v3, "   with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transaction(s):\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-object v3, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Transaction;

    .line 618
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 621
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected unCache()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->unCacheTransactions()V

    .line 477
    return-void
.end method

.method public verify()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->verifyHeader()V

    .line 842
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->verifyTransactions()V

    .line 843
    return-void
.end method

.method public verifyHeader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 811
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/Block;->checkProofOfWork(Z)Z

    .line 812
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->checkTimestamp()V

    .line 813
    return-void
.end method

.method public verifyTransactions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Block had no transactions"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseTransactions()V

    .line 828
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getOptimalEncodingMessageSize()I

    move-result v2

    const v3, 0xf4240

    if-le v2, v3, :cond_1

    .line 829
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Block larger than MAX_BLOCK_SIZE"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_1
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->checkTransactions()V

    .line 831
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->checkMerkleRoot()V

    .line 832
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->checkSigOps()V

    .line 833
    iget-object v2, p0, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 834
    .local v1, "transaction":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->verify()V

    goto :goto_0

    .line 835
    .end local v1    # "transaction":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    return-void
.end method

.method writeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Block;->headerBytesValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/bitcoin/core/Block;->offset:I

    add-int/lit8 v1, v1, 0x50

    if-lt v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->bytes:[B

    iget v1, p0, Lcom/google/bitcoin/core/Block;->offset:I

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/core/Block;->maybeParseHeader()V

    .line 384
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->version:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 385
    iget-object v0, p0, Lcom/google/bitcoin/core/Block;->prevBlockHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 386
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Block;->getMerkleRoot()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 387
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->time:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 388
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->difficultyTarget:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 389
    iget-wide v0, p0, Lcom/google/bitcoin/core/Block;->nonce:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    goto :goto_0
.end method
