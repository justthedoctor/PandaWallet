.class public Lcom/google/bitcoin/core/TransactionInput;
.super Lcom/google/bitcoin/core/ChildMessage;
.source "TransactionInput.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/TransactionInput$ConnectMode;,
        Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[B

.field public static final NO_SEQUENCE:J = 0xffffffffL

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

.field private parentTransaction:Lcom/google/bitcoin/core/Transaction;

.field private scriptBytes:[B

.field private transient scriptSig:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;"
        }
    .end annotation
.end field

.field private sequence:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/bitcoin/core/TransactionInput;->EMPTY_ARRAY:[B

    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionOutput;)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parentTransaction"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "output"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 87
    invoke-virtual {p3}, Lcom/google/bitcoin/core/TransactionOutput;->getIndex()I

    move-result v2

    int-to-long v0, v2

    .line 88
    .local v0, "outputIndex":J
    new-instance v2, Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v3, p3, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/bitcoin/core/TransactionOutPoint;-><init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Transaction;)V

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    .line 89
    sget-object v2, Lcom/google/bitcoin/core/TransactionInput;->EMPTY_ARRAY:[B

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    .line 90
    const-wide v2, 0xffffffffL

    iput-wide v2, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    .line 91
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 93
    const/16 v2, 0x29

    iput v2, p0, Lcom/google/bitcoin/core/TransactionInput;->length:I

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[B)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parentTransaction"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "scriptBytes"    # [B

    .prologue
    const-wide v2, 0xffffffffL

    .line 64
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 65
    iput-object p3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    .line 66
    new-instance v1, Lcom/google/bitcoin/core/TransactionOutPoint;

    const/4 v0, 0x0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/google/bitcoin/core/TransactionOutPoint;-><init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Transaction;)V

    iput-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    .line 67
    iput-wide v2, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    .line 68
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 69
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/google/bitcoin/core/TransactionInput;->length:I

    .line 70
    return-void

    .line 69
    :cond_0
    array-length v0, p3

    invoke-static {v0}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v0

    array-length v1, p3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BI)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parentTransaction"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "payload"    # [B
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p3, p4}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 102
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BIZZ)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parentTransaction"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "msg"    # [B
    .param p4, "offset"    # I
    .param p5, "parseLazy"    # Z
    .param p6, "parseRetain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 120
    const/high16 v7, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 121
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BLcom/google/bitcoin/core/TransactionOutPoint;)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parentTransaction"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "scriptBytes"    # [B
    .param p4, "outpoint"    # Lcom/google/bitcoin/core/TransactionOutPoint;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 75
    iput-object p3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    .line 76
    iput-object p4, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    .line 77
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    .line 78
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 79
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/google/bitcoin/core/TransactionInput;->length:I

    .line 80
    return-void

    .line 79
    :cond_0
    array-length v0, p3

    invoke-static {v0}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v0

    array-length v1, p3

    add-int/2addr v0, v1

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
    .line 373
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 375
    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 142
    new-instance v0, Lcom/google/bitcoin/core/VarInt;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-wide v0, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 145
    return-void
.end method

.method public connect(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    .locals 4
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "mode"    # Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    .line 340
    :goto_0
    return-object v1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "Corrupt transaction"

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    .line 328
    .local v0, "out":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    iget-object v1, v0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v2, v2, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Transaction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    goto :goto_0

    .line 332
    :cond_1
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    if-ne p2, v1, :cond_3

    .line 333
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->markAsUnspent()V

    .line 339
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionInput;->connect(Lcom/google/bitcoin/core/TransactionOutput;)V

    .line 340
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->SUCCESS:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    goto :goto_0

    .line 334
    :cond_3
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    if-ne p2, v1, :cond_2

    .line 335
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v1, v0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    iput-object v1, v2, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 336
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    goto :goto_0
.end method

.method public connect(Ljava/util/Map;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;
    .locals 2
    .param p2, "mode"    # Lcom/google/bitcoin/core/TransactionInput$ConnectMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/TransactionInput$ConnectMode;",
            ")",
            "Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "transactions":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 308
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    if-nez v0, :cond_0

    .line 309
    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    .line 311
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/google/bitcoin/core/TransactionInput;->connect(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/TransactionInput$ConnectMode;)Lcom/google/bitcoin/core/TransactionInput$ConnectionResult;

    move-result-object v1

    goto :goto_0
.end method

.method public connect(Lcom/google/bitcoin/core/TransactionOutput;)V
    .locals 2
    .param p1, "out"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v0, p1, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    iput-object v0, v1, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 346
    invoke-virtual {p1, p0}, Lcom/google/bitcoin/core/TransactionOutput;->markAsSpent(Lcom/google/bitcoin/core/TransactionInput;)V

    .line 347
    return-void
.end method

.method public disconnect()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v2, v2, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    if-nez v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v2, v2, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    .line 358
    .local v0, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->markAsUnspent()V

    .line 360
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 361
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public duplicateDetached()Lcom/google/bitcoin/core/TransactionInput;
    .locals 5

    .prologue
    .line 429
    new-instance v0, Lcom/google/bitcoin/core/TransactionInput;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->bitcoinSerialize()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    if-ne p0, p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 437
    check-cast v0, Lcom/google/bitcoin/core/TransactionInput;

    .line 439
    .local v0, "input":Lcom/google/bitcoin/core/TransactionInput;
    iget-wide v3, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    iget-wide v5, v0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 440
    :cond_4
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/TransactionOutPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 441
    :cond_5
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 442
    :cond_6
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_7

    .line 443
    :cond_9
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getConnectedOutput()Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method getConnectedOutput(Ljava/util/Map;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)",
            "Lcom/google/bitcoin/core/TransactionOutput;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    .local p1, "transactions":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 287
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    if-nez v0, :cond_0

    .line 288
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    goto :goto_0
.end method

.method public getFromAddress()Lcom/google/bitcoin/core/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/google/bitcoin/core/ScriptException;

    const-string v1, "This is a coinbase transaction which generates new coins. It does not have a from address."

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/Script;->getFromAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 224
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    return-object v0
.end method

.method public getParentTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method public getScriptBytes()[B
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 235
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    return-object v0
.end method

.method public getScriptSig()Lcom/google/bitcoin/script/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 164
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    :goto_0
    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 166
    new-instance v0, Lcom/google/bitcoin/script/Script;

    .end local v0    # "script":Lcom/google/bitcoin/script/Script;
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    invoke-direct {v0, v2}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 167
    .restart local v0    # "script":Lcom/google/bitcoin/script/Script;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 170
    .end local v0    # "script":Lcom/google/bitcoin/script/Script;
    .local v1, "script":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 163
    .end local v1    # "script":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/Script;

    move-object v0, v2

    goto :goto_0

    .restart local v0    # "script":Lcom/google/bitcoin/script/Script;
    :cond_1
    move-object v1, v0

    .line 170
    .restart local v1    # "script":Ljava/lang/Object;
    goto :goto_1
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 203
    iget-wide v0, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    return-wide v0
.end method

.method public hasSequence()Z
    .locals 4

    .prologue
    .line 381
    iget-wide v0, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-wide v3, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    iget-wide v5, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 451
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/TransactionOutPoint;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 452
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 453
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 454
    return v0

    :cond_1
    move v1, v2

    .line 452
    goto :goto_0
.end method

.method public isCoinBase()Z
    .locals 4

    .prologue
    const-wide v2, 0xffffffffL

    .line 151
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->maybeParse()V

    .line 152
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutPoint;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->bytes:[B

    iget v3, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    iget-boolean v5, p0, Lcom/google/bitcoin/core/TransactionInput;->parseLazy:Z

    iget-boolean v6, p0, Lcom/google/bitcoin/core/TransactionInput;->parseRetain:Z

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/TransactionOutPoint;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZ)V

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    .line 133
    iget v0, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutPoint;->getMessageSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    .line 134
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->readVarInt()J

    move-result-wide v0

    long-to-int v7, v0

    .line 135
    .local v7, "scriptLen":I
    invoke-virtual {p0, v7}, Lcom/google/bitcoin/core/TransactionInput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    .line 136
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    .line 137
    return-void
.end method

.method protected parseLite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 125
    iget v0, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    .line 126
    .local v0, "curs":I
    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/TransactionInput;->readVarInt(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 127
    .local v1, "scriptLen":I
    iget v2, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    iget v3, p0, Lcom/google/bitcoin/core/TransactionInput;->offset:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/bitcoin/core/TransactionInput;->length:I

    .line 128
    iput v0, p0, Lcom/google/bitcoin/core/TransactionInput;->cursor:I

    .line 129
    return-void
.end method

.method setScriptBytes([B)V
    .locals 4
    .param p1, "scriptBytes"    # [B

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->unCache()V

    .line 243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    .line 244
    iget v1, p0, Lcom/google/bitcoin/core/TransactionInput;->length:I

    .line 245
    .local v1, "oldLength":I
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptBytes:[B

    .line 247
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v0, v2, 0x28

    .line 248
    .local v0, "newLength":I
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/core/TransactionInput;->adjustLength(I)V

    .line 249
    return-void

    .line 247
    .end local v0    # "newLength":I
    :cond_0
    array-length v2, p1

    invoke-static {v2}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public setScriptSig(Lcom/google/bitcoin/script/Script;)V
    .locals 2
    .param p1, "scriptSig"    # Lcom/google/bitcoin/script/Script;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    .line 177
    invoke-virtual {p1}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionInput;->setScriptBytes([B)V

    .line 178
    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 0
    .param p1, "sequence"    # J

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->unCache()V

    .line 215
    iput-wide p1, p0, Lcom/google/bitcoin/core/TransactionInput;->sequence:J

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->isCoinBase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "TxIn: COINBASE"

    .line 265
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TxIn for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionInput;->outpoint:Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v4

    iget-object v0, v4, Lcom/google/bitcoin/core/TransactionOutPoint;->fromTx:Lcom/google/bitcoin/core/Transaction;

    .line 391
    .local v0, "fromTx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v2

    .line 392
    .local v2, "spendingIndex":J
    const-string v4, "Not connected"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    long-to-int v4, v2

    invoke-virtual {v0, v4}, Lcom/google/bitcoin/core/Transaction;->getOutput(I)Lcom/google/bitcoin/core/TransactionOutput;

    move-result-object v1

    .line 394
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/TransactionInput;->verify(Lcom/google/bitcoin/core/TransactionOutput;)V

    .line 395
    return-void
.end method

.method public verify(Lcom/google/bitcoin/core/TransactionOutput;)V
    .locals 7
    .param p1, "output"    # Lcom/google/bitcoin/core/TransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p1, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    iget-object v1, p1, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "This input does not refer to the tx containing the output."

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getIndex()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Lcom/google/bitcoin/core/VerificationException;

    const-string v1, "This input refers to a different output on the given tx."

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v4

    .line 413
    .local v4, "pubKey":Lcom/google/bitcoin/script/Script;
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 414
    .local v6, "myIndex":I
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionInput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    int-to-long v2, v6

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/script/Script;->correctlySpends(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Z)V

    .line 415
    return-void
.end method
