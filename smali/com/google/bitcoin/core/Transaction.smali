.class public Lcom/google/bitcoin/core/Transaction;
.super Lcom/google/bitcoin/core/ChildMessage;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/Transaction$SigHash;,
        Lcom/google/bitcoin/core/Transaction$Purpose;
    }
.end annotation


# static fields
.field public static final LOCKTIME_THRESHOLD:I = 0x1dcd6500

.field public static final MAX_STANDARD_TX_SIZE:I = 0x19000

.field public static final MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

.field public static final REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

.field public static final SIGHASH_ANYONECANPAY_VALUE:B = -0x80t

.field public static final SORT_TX_BY_HEIGHT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x76e60a909d7baa44L


# instance fields
.field private appearsInHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private confidence:Lcom/google/bitcoin/core/TransactionConfidence;

.field private transient hash:Lcom/google/bitcoin/core/Sha256Hash;

.field private inputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/bitcoin/core/TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private lockTime:J

.field private transient optimalEncodingMessageSize:I

.field private outputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

.field private updatedAt:Ljava/util/Date;

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/bitcoin/core/Transaction$1;

    invoke-direct {v0}, Lcom/google/bitcoin/core/Transaction$1;-><init>()V

    sput-object v0, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    .line 66
    new-instance v0, Lcom/google/bitcoin/core/Transaction$2;

    invoke-direct {v0}, Lcom/google/bitcoin/core/Transaction$2;-><init>()V

    sput-object v0, Lcom/google/bitcoin/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    .line 74
    const-class v0, Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    .line 87
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition;->DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    .line 94
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition;->DUST_LIMIT:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 150
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/bitcoin/core/Transaction;->version:J

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 154
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;ILcom/google/bitcoin/core/Sha256Hash;)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "version"    # I
    .param p3, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 159
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/bitcoin/core/Transaction;->version:J

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 162
    iput-object p3, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 164
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "parent"    # Lcom/google/bitcoin/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "parseLazy"    # Z
    .param p6, "parseRetain"    # Z
    .param p7, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct/range {p0 .. p7}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BLcom/google/bitcoin/core/Message;ZZI)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "parent"    # Lcom/google/bitcoin/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "parseLazy"    # Z
    .param p5, "parseRetain"    # Z
    .param p6, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 146
    sget-object v0, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 206
    return-void
.end method

.method protected static calcLength([BI)I
    .locals 15
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 484
    add-int/lit8 v0, p1, 0x4

    .line 489
    .local v0, "cursor":I
    new-instance v8, Lcom/google/bitcoin/core/VarInt;

    invoke-direct {v8, p0, v0}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 490
    .local v8, "varint":Lcom/google/bitcoin/core/VarInt;
    iget-wide v4, v8, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 491
    .local v4, "txInCount":J
    invoke-virtual {v8}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v9

    add-int/2addr v0, v9

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    int-to-long v9, v1

    cmp-long v9, v9, v4

    if-gez v9, :cond_0

    .line 495
    add-int/lit8 v0, v0, 0x24

    .line 496
    new-instance v8, Lcom/google/bitcoin/core/VarInt;

    .end local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    invoke-direct {v8, p0, v0}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 497
    .restart local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    iget-wide v2, v8, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 499
    .local v2, "scriptLen":J
    int-to-long v9, v0

    const-wide/16 v11, 0x4

    add-long/2addr v11, v2

    invoke-virtual {v8}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    long-to-int v0, v9

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "scriptLen":J
    :cond_0
    new-instance v8, Lcom/google/bitcoin/core/VarInt;

    .end local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    invoke-direct {v8, p0, v0}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 503
    .restart local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    iget-wide v6, v8, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 504
    .local v6, "txOutCount":J
    invoke-virtual {v8}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v9

    add-int/2addr v0, v9

    .line 506
    const/4 v1, 0x0

    :goto_1
    int-to-long v9, v1

    cmp-long v9, v9, v6

    if-gez v9, :cond_1

    .line 508
    add-int/lit8 v0, v0, 0x8

    .line 509
    new-instance v8, Lcom/google/bitcoin/core/VarInt;

    .end local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    invoke-direct {v8, p0, v0}, Lcom/google/bitcoin/core/VarInt;-><init>([BI)V

    .line 510
    .restart local v8    # "varint":Lcom/google/bitcoin/core/VarInt;
    iget-wide v2, v8, Lcom/google/bitcoin/core/VarInt;->value:J

    .line 511
    .restart local v2    # "scriptLen":J
    int-to-long v9, v0

    invoke-virtual {v8}, Lcom/google/bitcoin/core/VarInt;->getOriginalSizeInBytes()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v11, v2

    add-long/2addr v9, v11

    long-to-int v0, v9

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 514
    .end local v2    # "scriptLen":J
    :cond_1
    sub-int v9, v0, p1

    add-int/lit8 v9, v9, 0x4

    return v9
.end method

.method public static parseLockTimeStr(Ljava/lang/String;)J
    .locals 6
    .param p0, "lockTimeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1261
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1262
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1264
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1266
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1175
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1176
    return-void
.end method


# virtual methods
.method public addBlockAppearance(Lcom/google/bitcoin/core/Sha256Hash;I)V
    .locals 2
    .param p1, "blockHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "relativityOffset"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->appearsInHashes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->appearsInHashes:Ljava/util/Map;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->appearsInHashes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;
    .locals 2
    .param p1, "input"    # Lcom/google/bitcoin/core/TransactionInput;

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unCache()V

    .line 704
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/TransactionInput;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 705
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lcom/google/bitcoin/core/TransactionInput;->length:I

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Transaction;->adjustLength(II)V

    .line 707
    return-object p1
.end method

.method public addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;
    .locals 2
    .param p1, "from"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 696
    new-instance v0, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionOutput;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 2
    .param p1, "to"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unCache()V

    .line 761
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/TransactionOutput;->setParent(Lcom/google/bitcoin/core/Message;)V

    .line 762
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lcom/google/bitcoin/core/TransactionOutput;->length:I

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/core/Transaction;->adjustLength(II)V

    .line 764
    return-object p1
.end method

.method public addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "address"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 771
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "pubkey"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 779
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "script"    # Lcom/google/bitcoin/script/Script;

    .prologue
    .line 787
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {p2}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public addSignedInput(Lcom/google/bitcoin/core/TransactionOutPoint;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/core/TransactionInput;
    .locals 6
    .param p1, "prevOut"    # Lcom/google/bitcoin/core/TransactionOutPoint;
    .param p2, "scriptPubKey"    # Lcom/google/bitcoin/script/Script;
    .param p3, "sigKey"    # Lcom/google/bitcoin/core/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 739
    sget-object v4, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Transaction;->addSignedInput(Lcom/google/bitcoin/core/TransactionOutPoint;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public addSignedInput(Lcom/google/bitcoin/core/TransactionOutPoint;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/TransactionInput;
    .locals 7
    .param p1, "prevOut"    # Lcom/google/bitcoin/core/TransactionOutPoint;
    .param p2, "scriptPubKey"    # Lcom/google/bitcoin/script/Script;
    .param p3, "sigKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p4, "sigHash"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p5, "anyoneCanPay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 720
    new-instance v2, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v2, v4, p0, v5, p1}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BLcom/google/bitcoin/core/TransactionOutPoint;)V

    .line 721
    .local v2, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 722
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, p2, p4, p5}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(ILcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 723
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {p3, v1}, Lcom/google/bitcoin/core/ECKey;->sign(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v0

    .line 724
    .local v0, "ecSig":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    new-instance v3, Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-direct {v3, v0, p4, p5}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Lcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V

    .line 725
    .local v3, "txSig":Lcom/google/bitcoin/crypto/TransactionSignature;
    invoke-virtual {p2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
    invoke-static {v3}, Lcom/google/bitcoin/script/ScriptBuilder;->createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;)Lcom/google/bitcoin/script/Script;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    .line 731
    :goto_0
    return-object v2

    .line 727
    :cond_0
    invoke-virtual {p2}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    invoke-static {v3, p3}, Lcom/google/bitcoin/script/ScriptBuilder;->createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    goto :goto_0

    .line 730
    :cond_1
    new-instance v4, Lcom/google/bitcoin/core/ScriptException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t know how to sign for this kind of scriptPubKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-wide v3, p0, Lcom/google/bitcoin/core/Transaction;->version:J

    invoke-static {v3, v4, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 1079
    new-instance v3, Lcom/google/bitcoin/core/VarInt;

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v3}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1080
    iget-object v3, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 1081
    .local v1, "in":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/TransactionInput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 1082
    .end local v1    # "in":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    new-instance v3, Lcom/google/bitcoin/core/VarInt;

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v3}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1083
    iget-object v3, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1084
    .local v2, "out":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 1085
    .end local v2    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_1
    iget-wide v3, p0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    invoke-static {v3, v4, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 1086
    return-void
.end method

.method public declared-synchronized calculateSignature(ILcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;
    .locals 3
    .param p1, "inputIndex"    # I
    .param p2, "key"    # Lcom/google/bitcoin/core/ECKey;
    .param p3, "connectedPubKeyScript"    # Lcom/google/bitcoin/script/Script;
    .param p4, "hashType"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p5, "anyoneCanPay"    # Z

    .prologue
    .line 928
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4, p5}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BLcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 929
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    new-instance v1, Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-virtual {p2, v0}, Lcom/google/bitcoin/core/ECKey;->sign(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v2

    invoke-direct {v1, v2, p4, p5}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Lcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 928
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized calculateSignature(ILcom/google/bitcoin/core/ECKey;Lorg/spongycastle/crypto/params/KeyParameter;[BLcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;
    .locals 3
    .param p1, "inputIndex"    # I
    .param p2, "key"    # Lcom/google/bitcoin/core/ECKey;
    .param p3, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "connectedPubKeyScript"    # [B
    .param p5, "hashType"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p6, "anyoneCanPay"    # Z

    .prologue
    .line 910
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BLcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    .line 911
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    new-instance v1, Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-virtual {p2, v0, p3}, Lcom/google/bitcoin/core/ECKey;->sign(Lcom/google/bitcoin/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v2

    invoke-direct {v1, v2, p5, p6}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Lcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 910
    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearInputs()V
    .locals 3

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unCache()V

    .line 681
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 682
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/TransactionInput;->setParent(Lcom/google/bitcoin/core/Message;)V

    goto :goto_0

    .line 684
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 686
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 687
    return-void
.end method

.method public clearOutputs()V
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unCache()V

    .line 748
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 749
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/TransactionOutput;->setParent(Lcom/google/bitcoin/core/Message;)V

    goto :goto_0

    .line 751
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 753
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 754
    return-void
.end method

.method disconnectInputs()Z
    .locals 4

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "disconnected":Z
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 380
    iget-object v3, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionInput;

    .line 381
    .local v2, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionInput;->disconnect()Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 383
    .end local v2    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 1157
    instance-of v1, p1, Lcom/google/bitcoin/core/Transaction;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1160
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1158
    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 1160
    .local v0, "t":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public estimateLockTime(Lcom/google/bitcoin/core/AbstractBlockChain;)Ljava/util/Date;
    .locals 5
    .param p1, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;

    .prologue
    .line 1274
    iget-wide v0, p0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    const-wide/32 v2, 0x1dcd6500

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/AbstractBlockChain;->estimateBlockTime(I)Ljava/util/Date;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getAppearsInHashes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->appearsInHashes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->appearsInHashes:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;
    .locals 1

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->confidence:Lcom/google/bitcoin/core/TransactionConfidence;

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/core/TransactionConfidence;-><init>(Lcom/google/bitcoin/core/Transaction;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->confidence:Lcom/google/bitcoin/core/TransactionConfidence;

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->confidence:Lcom/google/bitcoin/core/TransactionConfidence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v0

    .line 214
    .local v0, "bits":[B
    new-instance v1, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->reverseBytes([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    iput-object v1, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 216
    .end local v0    # "bits":[B
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v1
.end method

.method public getHashAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInput(I)Lcom/google/bitcoin/core/TransactionInput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1135
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionInput;

    return-object v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/TransactionInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1123
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()J
    .locals 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1097
    iget-wide v0, p0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    return-wide v0
.end method

.method public getOptimalEncodingMessageSize()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 561
    :goto_0
    return v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 558
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_1

    .line 559
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getMessageSize()I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 561
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    goto :goto_0
.end method

.method public getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1140
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionOutput;

    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1129
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPurpose()Lcom/google/bitcoin/core/Transaction$Purpose;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    return-object v0
.end method

.method public getSigOpCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1183
    const/4 v3, 0x0

    .line 1184
    .local v3, "sigOps":I
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 1185
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/script/Script;->getSigOpCount([B)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1186
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1187
    .local v2, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/script/Script;->getSigOpCount([B)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1188
    .end local v2    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_1
    return v3
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;
    .locals 5
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 350
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 351
    .local v3, "v":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionInput;

    .line 354
    .local v2, "input":Lcom/google/bitcoin/core/TransactionInput;
    iget-object v4, p1, Lcom/google/bitcoin/core/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    .line 355
    .local v0, "connected":Lcom/google/bitcoin/core/TransactionOutput;
    if-nez v0, :cond_1

    .line 356
    iget-object v4, p1, Lcom/google/bitcoin/core/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    .line 357
    :cond_1
    if-nez v0, :cond_2

    .line 358
    iget-object v4, p1, Lcom/google/bitcoin/core/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    .line 359
    :cond_2
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMineOrWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 366
    goto :goto_0

    .line 367
    .end local v0    # "connected":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v2    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_3
    return-object v3
.end method

.method public getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;Z)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method getValueSentToMe(Lcom/google/bitcoin/core/Wallet;Z)Ljava/math/BigInteger;
    .locals 4
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "includeSpent"    # Z

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 240
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 241
    .local v2, "v":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 242
    .local v1, "o":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMineOrWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    if-nez p2, :cond_1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    :cond_1
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 246
    .end local v1    # "o":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_2
    return-object v2
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1117
    iget-wide v0, p0, Lcom/google/bitcoin/core/Transaction;->version:J

    return-wide v0
.end method

.method public declared-synchronized hasConfidence()Z
    .locals 2

    .prologue
    .line 1152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->confidence:Lcom/google/bitcoin/core/TransactionConfidence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->confidence:Lcom/google/bitcoin/core/TransactionConfidence;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hashForSignature(ILcom/google/bitcoin/script/Script;Lcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 3
    .param p1, "inputIndex"    # I
    .param p2, "connectedScript"    # Lcom/google/bitcoin/script/Script;
    .param p3, "type"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p4, "anyoneCanPay"    # Z

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    invoke-static {p3, p4}, Lcom/google/bitcoin/crypto/TransactionSignature;->calcSigHashValue(Lcom/google/bitcoin/core/Transaction$SigHash;Z)I

    move-result v0

    .line 965
    .local v0, "sigHash":I
    invoke-virtual {p2}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v1

    int-to-byte v2, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BB)Lcom/google/bitcoin/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 964
    .end local v0    # "sigHash":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hashForSignature(I[BB)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 15
    .param p1, "inputIndex"    # I
    .param p2, "connectedScript"    # [B
    .param p3, "sigHashType"    # B

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v6, v10, [[B

    .line 985
    .local v6, "inputScripts":[[B
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [J

    .line 986
    .local v7, "inputSequenceNumbers":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 987
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v10

    aput-object v10, v6, v4

    .line 988
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v10}, Lcom/google/bitcoin/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v10

    aput-wide v10, v7, v4

    .line 989
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    sget-object v11, Lcom/google/bitcoin/core/TransactionInput;->EMPTY_ARRAY:[B

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/TransactionInput;->setScriptBytes([B)V

    .line 986
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 999
    :cond_0
    const/16 v10, 0xab

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/bitcoin/script/Script;->removeAllInstancesOfOp([BI)[B

    move-result-object p2

    .line 1004
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/TransactionInput;

    .line 1005
    .local v5, "input":Lcom/google/bitcoin/core/TransactionInput;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/google/bitcoin/core/TransactionInput;->setScriptBytes([B)V

    .line 1007
    iget-object v9, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 1008
    .local v9, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    and-int/lit8 v10, p3, 0x1f

    sget-object v11, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_2

    .line 1010
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 1012
    const/4 v4, 0x0

    :goto_1
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 1013
    move/from16 v0, p1

    if-eq v4, v0, :cond_1

    .line 1014
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 1012
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1015
    :cond_2
    and-int/lit8 v10, p3, 0x1f

    sget-object v11, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1017
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v0, p1

    if-lt v0, v10, :cond_4

    .line 1026
    const/4 v4, 0x0

    :goto_2
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 1027
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/TransactionInput;->setScriptBytes([B)V

    .line 1028
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    aget-wide v11, v7, v4

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 1026
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1030
    :cond_3
    iput-object v9, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 1033
    new-instance v3, Lcom/google/bitcoin/core/Sha256Hash;

    const-string v10, "0100000000000000000000000000000000000000000000000000000000000000"

    invoke-direct {v3, v10}, Lcom/google/bitcoin/core/Sha256Hash;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :goto_3
    monitor-exit p0

    return-object v3

    .line 1037
    :cond_4
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    const/4 v12, 0x0

    add-int/lit8 v13, p1, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 1038
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, p1

    if-ge v4, v0, :cond_5

    .line 1039
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v12, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v13, Lcom/google/bitcoin/core/Utils;->NEGATIVE_ONE:Ljava/math/BigInteger;

    const/4 v14, 0x0

    new-array v14, v14, [B

    invoke-direct {v11, v12, p0, v13, v14}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1038
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1041
    :cond_5
    const/4 v4, 0x0

    :goto_5
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 1042
    move/from16 v0, p1

    if-eq v4, v0, :cond_6

    .line 1043
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 1041
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1046
    :cond_7
    iget-object v8, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 1047
    .local v8, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionInput;>;"
    and-int/lit8 v10, p3, -0x80

    const/16 v11, -0x80

    if-ne v10, v11, :cond_8

    .line 1050
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 1051
    iget-object v10, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_8
    new-instance v1, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    iget v10, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_9

    const/16 v10, 0x100

    :goto_6
    invoke-direct {v1, v10}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1055
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 1057
    move/from16 v0, p3

    and-int/lit16 v10, v0, 0xff

    int-to-long v10, v10

    invoke-static {v10, v11, v1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 1060
    new-instance v3, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 1061
    .local v3, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1064
    iput-object v8, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 1065
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_a

    .line 1066
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Lcom/google/bitcoin/core/TransactionInput;->setScriptBytes([B)V

    .line 1067
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/TransactionInput;

    aget-wide v11, v7, v4

    invoke-virtual {v10, v11, v12}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1054
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_9
    iget v10, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    add-int/lit8 v10, v10, 0x4

    goto :goto_6

    .line 1069
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_a
    iput-object v9, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1071
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v4    # "i":I
    .end local v5    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v6    # "inputScripts":[[B
    .end local v7    # "inputSequenceNumbers":[J
    .end local v8    # "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionInput;>;"
    .end local v9    # "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    :catch_0
    move-exception v2

    .line 1072
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 984
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized hashForSignature(I[BLcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2
    .param p1, "inputIndex"    # I
    .param p2, "connectedScript"    # [B
    .param p3, "type"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p4, "anyoneCanPay"    # Z

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    invoke-static {p3, p4}, Lcom/google/bitcoin/crypto/TransactionSignature;->calcSigHashValue(Lcom/google/bitcoin/core/Transaction$SigHash;Z)I

    move-result v1

    int-to-byte v0, v1

    .line 947
    .local v0, "sigHashType":B
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Transaction;->hashForSignature(I[BB)Lcom/google/bitcoin/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 946
    .end local v0    # "sigHashType":B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isAnyOutputSpent()Z
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 403
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 404
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const/4 v2, 0x1

    .line 407
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCoinBase()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 572
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionInput;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method isConsistent(Lcom/google/bitcoin/core/Wallet;Z)Z
    .locals 6
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "isSpent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v1, 0x1

    .line 255
    .local v1, "isActuallySpent":Z
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionOutput;

    .line 256
    .local v2, "o":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    invoke-virtual {v2, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMineOrWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 258
    :cond_1
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 259
    sget-object v4, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v5, "isAvailableForSpending != spentBy"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 269
    .end local v2    # "o":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_2
    :goto_0
    return v3

    .line 263
    .restart local v2    # "o":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_3
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v4

    if-nez v4, :cond_0

    .line 264
    sget-object v4, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v5, "isAvailableForSpending != spentBy"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v2    # "o":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_4
    if-ne v1, p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEveryOutputSpent()Z
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 391
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 392
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 395
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEveryOwnedOutputSpent(Lcom/google/bitcoin/core/Wallet;)Z
    .locals 3
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 416
    iget-object v2, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 417
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMineOrWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v2, 0x0

    .line 420
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isFinal(IJ)Z
    .locals 5
    .param p1, "height"    # I
    .param p2, "blockTimeSeconds"    # J

    .prologue
    const/4 v2, 0x1

    .line 1248
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v0

    .line 1249
    .local v0, "time":J
    const-wide/32 v3, 0x1dcd6500

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    int-to-long p2, p1

    .end local p2    # "blockTimeSeconds":J
    :cond_0
    cmp-long v3, v0, p2

    if-gez v3, :cond_2

    .line 1253
    :cond_1
    :goto_0
    return v2

    .line 1251
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->isTimeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMature()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    sget-object v3, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v2

    iget-object v3, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeLocked()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1230
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v2

    .line 1232
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 1233
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionInput;->hasSequence()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1234
    const/4 v2, 0x1

    goto :goto_0
.end method

.method parse()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/bitcoin/core/Transaction;->parsed:Z

    if-eqz v3, :cond_0

    .line 552
    :goto_0
    return-void

    .line 522
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->offset:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->readUint32()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/bitcoin/core/Transaction;->version:J

    .line 525
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->readVarInt()J

    move-result-wide v11

    .line 529
    .local v11, "numInputs":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    invoke-static {v11, v12}, Lcom/google/bitcoin/core/VarInt;->sizeOf(J)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 530
    new-instance v3, Ljava/util/ArrayList;

    long-to-int v4, v11

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 531
    const-wide/16 v9, 0x0

    .local v9, "i":J
    :goto_1
    cmp-long v3, v9, v11

    if-gez v3, :cond_1

    .line 532
    new-instance v1, Lcom/google/bitcoin/core/TransactionInput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/core/Transaction;->bytes:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/bitcoin/core/Transaction;->parseLazy:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/bitcoin/core/Transaction;->parseRetain:Z

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BIZZ)V

    .line 533
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const/16 v3, 0x24

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Transaction;->readVarInt(I)J

    move-result-wide v15

    .line 535
    .local v15, "scriptLen":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    int-to-long v3, v3

    invoke-static/range {v15 .. v16}, Lcom/google/bitcoin/core/VarInt;->sizeOf(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    int-to-long v5, v5

    add-long/2addr v5, v15

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 536
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    int-to-long v3, v3

    const-wide/16 v5, 0x4

    add-long/2addr v5, v15

    add-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    .line 531
    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    goto :goto_1

    .line 539
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v15    # "scriptLen":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->readVarInt()J

    move-result-wide v13

    .line 540
    .local v13, "numOutputs":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    invoke-static {v13, v14}, Lcom/google/bitcoin/core/VarInt;->sizeOf(J)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 541
    new-instance v3, Ljava/util/ArrayList;

    long-to-int v4, v13

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 542
    const-wide/16 v9, 0x0

    :goto_2
    cmp-long v3, v9, v13

    if-gez v3, :cond_2

    .line 543
    new-instance v2, Lcom/google/bitcoin/core/TransactionOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/core/Transaction;->bytes:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/bitcoin/core/Transaction;->parseLazy:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/bitcoin/core/Transaction;->parseRetain:Z

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BIZZ)V

    .line 544
    .local v2, "output":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/core/Transaction;->readVarInt(I)J

    move-result-wide v15

    .line 546
    .restart local v15    # "scriptLen":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    int-to-long v3, v3

    invoke-static/range {v15 .. v16}, Lcom/google/bitcoin/core/VarInt;->sizeOf(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    add-long/2addr v5, v15

    add-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 547
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    int-to-long v3, v3

    add-long/2addr v3, v15

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    .line 542
    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    goto :goto_2

    .line 549
    .end local v2    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v15    # "scriptLen":J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->readUint32()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    .line 550
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->optimalEncodingMessageSize:I

    .line 551
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/bitcoin/core/Transaction;->offset:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/bitcoin/core/Transaction;->length:I

    goto/16 :goto_0
.end method

.method protected parseLite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/google/bitcoin/core/Transaction;->parseLazy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->bytes:[B

    iget v1, p0, Lcom/google/bitcoin/core/Transaction;->offset:I

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Transaction;->calcLength([BI)I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    .line 477
    iget v0, p0, Lcom/google/bitcoin/core/Transaction;->offset:I

    iget v1, p0, Lcom/google/bitcoin/core/Transaction;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/Transaction;->cursor:I

    .line 479
    :cond_0
    return-void
.end method

.method public setBlockAppearance(Lcom/google/bitcoin/core/StoredBlock;ZI)V
    .locals 8
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "bestChain"    # Z
    .param p3, "relativityOffset"    # I

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 313
    .local v0, "blockTime":J
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 314
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/google/bitcoin/core/Transaction;->addBlockAppearance(Lcom/google/bitcoin/core/Sha256Hash;I)V

    .line 319
    if-eqz p2, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    .line 323
    .local v3, "transactionConfidence":Lcom/google/bitcoin/core/TransactionConfidence;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence;->setWorkDone(Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence;->setAppearedAtChainHeight(I)V

    .line 330
    .end local v3    # "transactionConfidence":Lcom/google/bitcoin/core/TransactionConfidence;
    :cond_2
    return-void

    .line 324
    .restart local v3    # "transactionConfidence":Lcom/google/bitcoin/core/TransactionConfidence;
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method setHash(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 0
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 227
    return-void
.end method

.method public setLockTime(J)V
    .locals 0
    .param p1, "lockTime"    # J

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unCache()V

    .line 1109
    iput-wide p1, p0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    .line 1110
    return-void
.end method

.method public setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V
    .locals 0
    .param p1, "purpose"    # Lcom/google/bitcoin/core/Transaction$Purpose;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/google/bitcoin/core/Transaction;->purpose:Lcom/google/bitcoin/core/Transaction$Purpose;

    .line 1294
    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/util/Date;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/bitcoin/core/Transaction;->updatedAt:Ljava/util/Date;

    .line 437
    return-void
.end method

.method public declared-synchronized signInputs(Lcom/google/bitcoin/core/Transaction$SigHash;Lcom/google/bitcoin/core/Wallet;)V
    .locals 1
    .param p1, "hashType"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 801
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/bitcoin/core/Transaction;->signInputs(Lcom/google/bitcoin/core/Transaction$SigHash;Lcom/google/bitcoin/core/Wallet;Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    monitor-exit p0

    return-void

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized signInputs(Lcom/google/bitcoin/core/Transaction$SigHash;Lcom/google/bitcoin/core/Wallet;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 13
    .param p1, "hashType"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "aesKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 814
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 815
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 818
    sget-object v0, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    const-string v1, "Only SIGHASH_ALL is currently supported"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Lcom/google/bitcoin/crypto/TransactionSignature;

    .line 828
    .local v11, "signatures":[Lcom/google/bitcoin/crypto/TransactionSignature;
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v12, v0, [Lcom/google/bitcoin/core/ECKey;

    .line 829
    .local v12, "signingKeys":[Lcom/google/bitcoin/core/ECKey;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_7

    .line 830
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/TransactionInput;

    .line 832
    .local v9, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    if-nez v0, :cond_3

    .line 833
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v1, "Missing connected output, assuming input {} is already signed."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 814
    .end local v8    # "i":I
    .end local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v11    # "signatures":[Lcom/google/bitcoin/crypto/TransactionSignature;
    .end local v12    # "signingKeys":[Lcom/google/bitcoin/core/ECKey;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 818
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 840
    .restart local v8    # "i":I
    .restart local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v11    # "signatures":[Lcom/google/bitcoin/crypto/TransactionSignature;
    .restart local v12    # "signingKeys":[Lcom/google/bitcoin/core/ECKey;
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    int-to-long v2, v8

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/script/Script;->correctlySpends(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Z)V

    .line 841
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v1, "Input {} already correctly spends output, assuming SIGHASH type used will be safe and skipping signing."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 843
    :catch_0
    move-exception v0

    .line 846
    :try_start_2
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 847
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v1, "Re-signing an already signed transaction! Be sure this is what you want."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 849
    :cond_4
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedKey(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v2

    .line 851
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    const-string v0, "Transaction exists in wallet that we cannot redeem: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    aput-object v2, v12, v8

    .line 855
    const/4 v6, 0x0

    .line 856
    .local v6, "anyoneCanPay":Z
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedPubKeyScript()[B

    move-result-object v4

    .line 857
    .local v4, "connectedPubKeyScript":[B
    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->hasPrivKey()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v0, p0

    move v1, v8

    move-object/from16 v3, p3

    move-object v5, p1

    .line 858
    invoke-virtual/range {v0 .. v6}, Lcom/google/bitcoin/core/Transaction;->calculateSignature(ILcom/google/bitcoin/core/ECKey;Lorg/spongycastle/crypto/params/KeyParameter;[BLcom/google/bitcoin/core/Transaction$SigHash;Z)Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v0

    aput-object v0, v11, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 814
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v4    # "connectedPubKeyScript":[B
    .end local v6    # "anyoneCanPay":Z
    .end local v8    # "i":I
    .end local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v11    # "signatures":[Lcom/google/bitcoin/crypto/TransactionSignature;
    .end local v12    # "signingKeys":[Lcom/google/bitcoin/core/ECKey;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 863
    .restart local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    .restart local v4    # "connectedPubKeyScript":[B
    .restart local v6    # "anyoneCanPay":Z
    .restart local v8    # "i":I
    .restart local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v11    # "signatures":[Lcom/google/bitcoin/crypto/TransactionSignature;
    .restart local v12    # "signingKeys":[Lcom/google/bitcoin/core/ECKey;
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/google/bitcoin/crypto/TransactionSignature;->dummy()Lcom/google/bitcoin/crypto/TransactionSignature;

    move-result-object v0

    aput-object v0, v11, v8

    goto/16 :goto_4

    .line 872
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v4    # "connectedPubKeyScript":[B
    .end local v6    # "anyoneCanPay":Z
    .end local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_7
    const/4 v8, 0x0

    :goto_5
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_b

    .line 873
    aget-object v0, v11, v8

    if-nez v0, :cond_8

    .line 872
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 875
    :cond_8
    iget-object v0, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/TransactionInput;

    .line 876
    .restart local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v7

    .line 877
    .local v7, "connectedOutput":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v10

    .line 879
    .local v10, "scriptPubKey":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v10}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 880
    aget-object v0, v11, v8

    aget-object v1, v12, v8

    invoke-static {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    goto :goto_6

    .line 881
    :cond_9
    invoke-virtual {v10}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 882
    aget-object v0, v11, v8

    invoke-static {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/bitcoin/core/TransactionInput;->setScriptSig(Lcom/google/bitcoin/script/Script;)V

    goto :goto_6

    .line 886
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not understand script type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    .end local v7    # "connectedOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v9    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v10    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :cond_b
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/Transaction;->toString(Lcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;
    .locals 18
    .param p1, "chain"    # Lcom/google/bitcoin/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v7, "s":Ljava/lang/StringBuilder;
    const-string v13, "  %s: %s%n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->isTimeLocked()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    const-wide/32 v15, 0x1dcd6500

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    .line 603
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "block "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, "time":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 605
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (estimated to be reached at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    long-to-int v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/bitcoin/core/AbstractBlockChain;->estimateBlockTime(I)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 611
    :cond_0
    :goto_0
    const-string v13, "  time locked until %s%n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .end local v12    # "time":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 614
    const-string v13, "  INCOMPLETE: No inputs!%n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 672
    :goto_1
    return-object v13

    .line 609
    :cond_2
    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/bitcoin/core/Transaction;->lockTime:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "time":Ljava/lang/String;
    goto :goto_0

    .line 617
    .end local v12    # "time":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 621
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v13}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/script/Script;->toString()Ljava/lang/String;

    move-result-object v8

    .line 622
    .local v8, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual {v13}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/script/Script;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 627
    .local v9, "script2":Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     == COINBASE TXN (scriptSig "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")  (scriptPubKey "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 623
    .end local v8    # "script":Ljava/lang/String;
    .end local v9    # "script2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Lcom/google/bitcoin/core/ScriptException;
    const-string v8, "???"

    .line 625
    .restart local v8    # "script":Ljava/lang/String;
    const-string v9, "???"

    .restart local v9    # "script2":Ljava/lang/String;
    goto :goto_2

    .line 630
    .end local v2    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v8    # "script":Ljava/lang/String;
    .end local v9    # "script2":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionInput;

    .line 631
    .local v4, "in":Lcom/google/bitcoin/core/TransactionInput;
    const-string v13, "     "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v13, "in   "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :try_start_1
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v11

    .line 636
    .local v11, "scriptSig":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    const-string v13, "\n          "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v13, "outpoint:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v6

    .line 640
    .local v6, "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionOutPoint;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    .line 642
    .local v1, "connectedOutput":Lcom/google/bitcoin/core/TransactionOutput;
    if-eqz v1, :cond_5

    .line 643
    const-string v13, " hash160:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    .end local v1    # "connectedOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v6    # "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    .end local v11    # "scriptSig":Lcom/google/bitcoin/script/Script;
    :cond_5
    :goto_4
    const-string v13, "%n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 646
    :catch_1
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "[exception: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 651
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Lcom/google/bitcoin/core/TransactionInput;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/TransactionOutput;

    .line 652
    .local v5, "out":Lcom/google/bitcoin/core/TransactionOutput;
    const-string v13, "     "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v13, "out  "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :try_start_2
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v10

    .line 656
    .local v10, "scriptPubKey":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-static {v13}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v13, " PND"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v13

    if-nez v13, :cond_7

    .line 661
    const-string v13, " Spent"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_7
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 664
    const-string v13, " by "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/core/TransactionInput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 670
    .end local v10    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :cond_8
    :goto_6
    const-string v13, "%n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 667
    :catch_2
    move-exception v2

    .line 668
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "[exception: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "out":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method protected unCache()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lcom/google/bitcoin/core/ChildMessage;->unCache()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/Transaction;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 457
    return-void
.end method

.method public verify()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1198
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->maybeParse()V

    .line 1199
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1200
    :cond_0
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction had no inputs or no outputs."

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getMessageSize()I

    move-result v4

    const v5, 0xf4240

    if-le v4, v5, :cond_2

    .line 1202
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction larger than MAX_BLOCK_SIZE"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1204
    :cond_2
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1205
    .local v3, "valueOut":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/TransactionOutput;

    .line 1206
    .local v2, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_3

    .line 1207
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Transaction output negative"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1208
    :cond_3
    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 1210
    .end local v2    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_4
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->params:Lcom/google/bitcoin/core/NetworkParameters;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_5

    .line 1211
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Total transaction output value greater than possible"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1214
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    .line 1215
    :cond_6
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Coinbase script size out of range"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1217
    :cond_7
    iget-object v4, p0, Lcom/google/bitcoin/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 1218
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionInput;->isCoinBase()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1219
    new-instance v4, Lcom/google/bitcoin/core/VerificationException;

    const-string v5, "Coinbase input as input in non-coinbase transaction"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1221
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_9
    return-void
.end method
