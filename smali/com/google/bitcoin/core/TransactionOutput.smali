.class public Lcom/google/bitcoin/core/TransactionOutput;
.super Lcom/google/bitcoin/core/ChildMessage;
.source "TransactionOutput.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x83148434162edf8L


# instance fields
.field private availableForSpending:Z

.field parentTransaction:Lcom/google/bitcoin/core/Transaction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private scriptBytes:[B

.field private transient scriptLen:I

.field private transient scriptPubKey:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;"
        }
    .end annotation
.end field

.field private spentBy:Lcom/google/bitcoin/core/TransactionInput;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/math/BigInteger;
    .param p4, "to"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 97
    invoke-static {p4}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/ECKey;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/math/BigInteger;
    .param p4, "to"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 106
    invoke-static {p4}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/math/BigInteger;
    .param p4, "scriptBytes"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 113
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/google/bitcoin/core/Utils;->NEGATIVE_ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Negative values not allowed"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Values larger than MAX_MONEY not allowed"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 115
    iput-object p3, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    .line 116
    iput-object p4, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    .line 117
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 118
    iput-boolean v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    .line 119
    array-length v0, p4

    invoke-static {v0}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->length:I

    .line 120
    return-void

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BI)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "payload"    # [B
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p3, p4}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 68
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BIZZ)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "parent"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    .line 86
    const/high16 v7, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/ChildMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V

    .line 87
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    .line 89
    return-void
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
    .line 333
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->maybeParse()V

    .line 334
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 335
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
    .line 152
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 155
    new-instance v0, Lcom/google/bitcoin/core/VarInt;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lcom/google/bitcoin/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 157
    return-void
.end method

.method public duplicateDetached()Lcom/google/bitcoin/core/TransactionOutput;
    .locals 5

    .prologue
    .line 339
    new-instance v0, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    if-ne p0, p1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v1

    .line 345
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

    .line 347
    check-cast v0, Lcom/google/bitcoin/core/TransactionOutput;

    .line 349
    .local v0, "output":Lcom/google/bitcoin/core/TransactionOutput;
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 350
    :cond_4
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    if-nez v3, :cond_5

    .line 351
    :cond_7
    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    iget-object v4, v0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method getIndex()I
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    const-string v2, "This output is not attached to a parent transaction."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 181
    return v0

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Output linked to wrong parent transaction?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMinNonDustValue()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionOutput;->getMinNonDustValue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getMinNonDustValue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "feePerKbRequired"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->bitcoinSerialize()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit16 v2, v2, 0x94

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 207
    .local v1, "size":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 208
    .local v0, "nonDustAndRemainder":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v5

    :goto_0
    return-object v2

    :cond_0
    aget-object v2, v0, v5

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0
.end method

.method public getParentTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->parentTransaction:Lcom/google/bitcoin/core/Transaction;

    const-string v1, "Free-standing TransactionOutput"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method public getScriptBytes()[B
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->maybeParse()V

    .line 256
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    return-object v0
.end method

.method public getScriptPubKey()Lcom/google/bitcoin/script/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ScriptException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptPubKey:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 127
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    :goto_0
    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->maybeParse()V

    .line 129
    new-instance v0, Lcom/google/bitcoin/script/Script;

    .end local v0    # "script":Lcom/google/bitcoin/script/Script;
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-direct {v0, v2}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 130
    .restart local v0    # "script":Lcom/google/bitcoin/script/Script;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptPubKey:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 133
    .end local v0    # "script":Lcom/google/bitcoin/script/Script;
    .local v1, "script":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 126
    .end local v1    # "script":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptPubKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/script/Script;

    move-object v0, v2

    goto :goto_0

    .restart local v0    # "script":Lcom/google/bitcoin/script/Script;
    :cond_1
    move-object v1, v0

    .line 133
    .restart local v1    # "script":Ljava/lang/Object;
    goto :goto_1
.end method

.method public getSpentBy()Lcom/google/bitcoin/core/TransactionInput;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->spentBy:Lcom/google/bitcoin/core/TransactionInput;

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->maybeParse()V

    .line 165
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    .line 359
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 360
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 358
    goto :goto_0
.end method

.method public isAvailableForSpending()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    return v0
.end method

.method public isMine(Lcom/google/bitcoin/core/Wallet;)Z
    .locals 7
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v3

    .line 286
    .local v3, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->getPubKey()[B

    move-result-object v1

    .line 288
    .local v1, "pubkey":[B
    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Wallet;->isPubKeyMine([B)Z

    move-result v4

    .line 296
    .end local v1    # "pubkey":[B
    .end local v3    # "script":Lcom/google/bitcoin/script/Script;
    :goto_0
    return v4

    .line 290
    .restart local v3    # "script":Lcom/google/bitcoin/script/Script;
    :cond_0
    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v2

    .line 291
    .local v2, "pubkeyHash":[B
    invoke-virtual {p1, v2}, Lcom/google/bitcoin/core/Wallet;->isPubKeyHashMine([B)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 293
    .end local v2    # "pubkeyHash":[B
    .end local v3    # "script":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    sget-object v4, Lcom/google/bitcoin/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    const-string v5, "Could not parse tx output script: {}"

    invoke-virtual {v0}, Lcom/google/bitcoin/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isMineOrWatched(Lcom/google/bitcoin/core/Wallet;)Z
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isMine(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/TransactionOutput;->isWatched(Lcom/google/bitcoin/core/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWatched(Lcom/google/bitcoin/core/Wallet;)Z
    .locals 5
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v1

    .line 272
    .local v1, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {p1, v1}, Lcom/google/bitcoin/core/Wallet;->isWatchedScript(Lcom/google/bitcoin/script/Script;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    .end local v1    # "script":Lcom/google/bitcoin/script/Script;
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    sget-object v2, Lcom/google/bitcoin/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not parse tx output script: {}"

    invoke-virtual {v0}, Lcom/google/bitcoin/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public markAsSpent(Lcom/google/bitcoin/core/TransactionInput;)V
    .locals 1
    .param p1, "input"    # Lcom/google/bitcoin/core/TransactionInput;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    .line 228
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionOutput;->spentBy:Lcom/google/bitcoin/core/TransactionInput;

    .line 229
    return-void
.end method

.method public markAsUnspent()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->availableForSpending:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->spentBy:Lcom/google/bitcoin/core/TransactionInput;

    .line 237
    return-void
.end method

.method parse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptLen:I

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/TransactionOutput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptBytes:[B

    .line 148
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
    .line 140
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->readInt64()J

    move-result-wide v0

    .line 141
    .local v0, "outputValue":J
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    .line 142
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->readVarInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptLen:I

    .line 143
    iget v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->cursor:I

    iget v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->offset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->scriptLen:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->length:I

    .line 144
    return-void
.end method

.method public setValue(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->unCache()V

    .line 174
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TxOut of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/TransactionOutput;->value:Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/core/TransactionOutput;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/script/Script;->getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " script:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
