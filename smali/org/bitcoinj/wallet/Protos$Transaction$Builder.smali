.class public final Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private blockHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blockRelativityOffsets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private hash_:Lcom/google/protobuf/ByteString;

.field private lockTime_:I

.field private pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transactionInput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transactionOutput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private updatedAt_:J

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7929
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 7965
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 8367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 8607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 8714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 8780
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8933
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 7574
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->maybeForceBuilderInitialization()V

    .line 7575
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7579
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7929
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 7965
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 8367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 8607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 8714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 8780
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8933
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 7580
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->maybeForceBuilderInitialization()V

    .line 7581
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 7557
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8800()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7590
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBlockHashIsMutable()V
    .locals 2

    .prologue
    .line 8609
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 8610
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 8611
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8613
    :cond_0
    return-void
.end method

.method private ensureBlockRelativityOffsetsIsMutable()V
    .locals 2

    .prologue
    .line 8716
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 8717
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 8718
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8720
    :cond_0
    return-void
.end method

.method private ensureTransactionInputIsMutable()V
    .locals 2

    .prologue
    .line 8130
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 8131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 8132
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8134
    :cond_0
    return-void
.end method

.method private ensureTransactionOutputIsMutable()V
    .locals 2

    .prologue
    .line 8370
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 8371
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 8372
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8374
    :cond_0
    return-void
.end method

.method private getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8921
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8922
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 8927
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8929
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7562
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8354
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8355
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 8361
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 8363
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 8355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8594
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8595
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 8601
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 8603
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 8595
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 7583
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7584
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7585
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7586
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7588
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBlockHash(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .prologue
    .line 8693
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 8694
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8695
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8696
    return-object p0
.end method

.method public addAllBlockRelativityOffsets(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .prologue
    .line 8764
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 8765
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8766
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8767
    return-object p0
.end method

.method public addAllTransactionInput(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .prologue
    .line 8266
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$TransactionInput;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8267
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8268
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8269
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8273
    :goto_0
    return-object p0

    .line 8271
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllTransactionOutput(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;"
        }
    .end annotation

    .prologue
    .line 8506
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$TransactionOutput;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8507
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8508
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8509
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8513
    :goto_0
    return-object p0

    .line 8511
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8675
    if-nez p1, :cond_0

    .line 8676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8678
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 8679
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8680
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8681
    return-object p0
.end method

.method public addBlockRelativityOffsets(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 8754
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 8755
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8756
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8757
    return-object p0
.end method

.method public addTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .prologue
    .line 8252
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8253
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8254
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8255
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8259
    :goto_0
    return-object p0

    .line 8257
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .prologue
    .line 8221
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8222
    if-nez p2, :cond_0

    .line 8223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8225
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8226
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8227
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8231
    :goto_0
    return-object p0

    .line 8229
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .prologue
    .line 8238
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8239
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8240
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8241
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8245
    :goto_0
    return-object p0

    .line 8243
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .prologue
    .line 8204
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8205
    if-nez p1, :cond_0

    .line 8206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8208
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8209
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8210
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8214
    :goto_0
    return-object p0

    .line 8212
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionInputBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .prologue
    .line 8333
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object v0
.end method

.method public addTransactionInputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 8341
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object v0
.end method

.method public addTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .prologue
    .line 8492
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8493
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8494
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8495
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8499
    :goto_0
    return-object p0

    .line 8497
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .prologue
    .line 8461
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8462
    if-nez p2, :cond_0

    .line 8463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8465
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8466
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8467
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8471
    :goto_0
    return-object p0

    .line 8469
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .prologue
    .line 8478
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8479
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8480
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8481
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8485
    :goto_0
    return-object p0

    .line 8483
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .prologue
    .line 8444
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8445
    if-nez p1, :cond_0

    .line 8446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8448
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8449
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8450
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8454
    :goto_0
    return-object p0

    .line 8452
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionOutputBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .prologue
    .line 8573
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object v0
.end method

.method public addTransactionOutputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 8581
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 2

    .prologue
    .line 7646
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    .line 7647
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$Transaction;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7648
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7650
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 5

    .prologue
    .line 7654
    new-instance v1, Lorg/bitcoinj/wallet/Protos$Transaction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 7655
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$Transaction;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7656
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 7657
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7658
    or-int/lit8 v2, v2, 0x1

    .line 7660
    :cond_0
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9202(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    .line 7661
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7662
    or-int/lit8 v2, v2, 0x2

    .line 7664
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9302(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 7665
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7666
    or-int/lit8 v2, v2, 0x4

    .line 7668
    :cond_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9402(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 7669
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7670
    or-int/lit8 v2, v2, 0x8

    .line 7672
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9502(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    .line 7673
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7674
    or-int/lit8 v2, v2, 0x10

    .line 7676
    :cond_4
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9602(Lorg/bitcoinj/wallet/Protos$Transaction;J)J

    .line 7677
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 7678
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 7679
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 7680
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7682
    :cond_5
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9702(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 7686
    :goto_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_c

    .line 7687
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 7688
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 7689
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7691
    :cond_6
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9802(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 7695
    :goto_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 7696
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 7697
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7699
    :cond_7
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9902(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 7700
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 7701
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 7702
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7704
    :cond_8
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10002(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    .line 7705
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 7706
    or-int/lit8 v2, v2, 0x20

    .line 7708
    :cond_9
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_d

    .line 7709
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 7713
    :goto_2
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 7714
    or-int/lit8 v2, v2, 0x40

    .line 7716
    :cond_a
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10202(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 7717
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I

    .line 7718
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onBuilt()V

    .line 7719
    return-object v1

    .line 7684
    :cond_b
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9702(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 7693
    :cond_c
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9802(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 7711
    :cond_d
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7595
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 7596
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7597
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 7598
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7599
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 7600
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7601
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    .line 7602
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    .line 7604
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7605
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 7606
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 7607
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7611
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 7612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 7613
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7617
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 7618
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 7620
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7621
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 7622
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 7626
    :goto_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7627
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 7628
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7629
    return-object p0

    .line 7609
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 7615
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 7624
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2
.end method

.method public clearBlockHash()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 8708
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8709
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8710
    return-object p0
.end method

.method public clearBlockRelativityOffsets()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 8774
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8775
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8776
    return-object p0
.end method

.method public clearConfidence()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8876
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8877
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8878
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8882
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8883
    return-object p0

    .line 8880
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearHash()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7958
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7959
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 7960
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7961
    return-object p0
.end method

.method public clearLockTime()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8071
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8072
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    .line 8073
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8074
    return-object p0
.end method

.method public clearPool()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8022
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8023
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8024
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8025
    return-object p0
.end method

.method public clearPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8962
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8963
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8964
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8965
    return-object p0
.end method

.method public clearTransactionInput()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8279
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 8281
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8282
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8286
    :goto_0
    return-object p0

    .line 8284
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTransactionOutput()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 8519
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 8521
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8526
    :goto_0
    return-object p0

    .line 8524
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearUpdatedAt()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .prologue
    .line 8120
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    .line 8122
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8123
    return-object p0
.end method

.method public clearVersion()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7922
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7923
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 7924
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7925
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .prologue
    .line 7633
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->create()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHash(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8646
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBlockHashCount()I
    .locals 1

    .prologue
    .line 8635
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8624
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockRelativityOffsets(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8738
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBlockRelativityOffsetsCount()I
    .locals 1

    .prologue
    .line 8732
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockRelativityOffsetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8726
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .prologue
    .line 8801
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8802
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_0
.end method

.method public getConfidenceBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 8893
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8894
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8895
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidenceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    return-object v0
.end method

.method public getConfidenceOrBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
    .locals 1

    .prologue
    .line 8905
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 8906
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;

    .line 8908
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .prologue
    .line 7642
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7638
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7940
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .prologue
    .line 8048
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    return v0
.end method

.method public getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .prologue
    .line 7990
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method

.method public getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .prologue
    .line 8944
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method

.method public getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8163
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8164
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .line 8166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    goto :goto_0
.end method

.method public getTransactionInputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8306
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    return-object v0
.end method

.method public getTransactionInputBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8349
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionInputCount()I
    .locals 1

    .prologue
    .line 8153
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8154
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTransactionInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8143
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8144
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactionInputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8313
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8314
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;

    .line 8315
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;

    goto :goto_0
.end method

.method public getTransactionInputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8323
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 8324
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 8326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8403
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8404
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .line 8406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    goto :goto_0
.end method

.method public getTransactionOutputBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8546
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    return-object v0
.end method

.method public getTransactionOutputBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8589
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOutputCount()I
    .locals 1

    .prologue
    .line 8393
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8394
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTransactionOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8383
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8384
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactionOutputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8553
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8554
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;

    .line 8555
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;

    goto :goto_0
.end method

.method public getTransactionOutputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8563
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 8564
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 8566
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 8097
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 7899
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 8791
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHash()Z
    .locals 2

    .prologue
    .line 7934
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLockTime()Z
    .locals 2

    .prologue
    .line 8038
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPool()Z
    .locals 2

    .prologue
    .line 7977
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPurpose()Z
    .locals 2

    .prologue
    .line 8938
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdatedAt()Z
    .locals 2

    .prologue
    .line 8087
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7889
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 7567
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Transaction;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7831
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasVersion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7857
    :cond_0
    :goto_0
    return v1

    .line 7835
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasHash()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7840
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7839
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7845
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 7846
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7845
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7851
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7852
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7857
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    .line 8853
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 8854
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8856
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8861
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8865
    :goto_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8866
    return-object p0

    .line 8859
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    goto :goto_0

    .line 8863
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7557
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7557
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7557
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7557
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7557
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7557
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7864
    const/4 v2, 0x0

    .line 7866
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$Transaction;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7871
    if-eqz v2, :cond_0

    .line 7872
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7875
    :cond_0
    return-object p0

    .line 7867
    :catch_0
    move-exception v1

    .line 7868
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    move-object v2, v0

    .line 7869
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7871
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7872
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7723
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    if-eqz v0, :cond_0

    .line 7724
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Transaction;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object p0

    .line 7727
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    :goto_0
    return-object p0

    .line 7726
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 4
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    const/4 v1, 0x0

    .line 7732
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7827
    :goto_0
    return-object p0

    .line 7733
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7734
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7736
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7737
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7739
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPool()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7740
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7742
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasLockTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7743
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getLockTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7745
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasUpdatedAt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7746
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7748
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 7749
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7750
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7751
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 7752
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7757
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7774
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_11

    .line 7775
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7776
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7777
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 7778
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7783
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7800
    :cond_7
    :goto_4
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9900(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7801
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7802
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9900(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    .line 7803
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7808
    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7810
    :cond_8
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10000(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7811
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7812
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10000(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    .line 7813
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7818
    :goto_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7820
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7821
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7823
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPurpose()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7824
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 7826
    :cond_b
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 7754
    :cond_c
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 7755
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 7760
    :cond_d
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7761
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7762
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 7763
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7764
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    .line 7765
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7766
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10400()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionInputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    goto :goto_7

    .line 7770
    :cond_f
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 7780
    :cond_10
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 7781
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 7786
    :cond_11
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7787
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7788
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 7789
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 7790
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    .line 7791
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7792
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10500()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->getTransactionOutputFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 7796
    :cond_13
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 7805
    :cond_14
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 7806
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$9900(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 7815
    :cond_15
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 7816
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->access$10000(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public removeTransactionInput(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8292
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8293
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8294
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8295
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8299
    :goto_0
    return-object p0

    .line 8297
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8532
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8533
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8534
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8535
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8539
    :goto_0
    return-object p0

    .line 8537
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setBlockHash(ILcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8658
    if-nez p2, :cond_0

    .line 8659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8661
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockHashIsMutable()V

    .line 8662
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8663
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8664
    return-object p0
.end method

.method public setBlockRelativityOffsets(II)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 8745
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureBlockRelativityOffsetsIsMutable()V

    .line 8746
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8747
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8748
    return-object p0
.end method

.method public setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .prologue
    .line 8836
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8837
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8838
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8842
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8843
    return-object p0

    .line 8840
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    .line 8815
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 8816
    if-nez p1, :cond_0

    .line 8817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8819
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 8820
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8824
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8825
    return-object p0

    .line 8822
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->confidenceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 7946
    if-nez p1, :cond_0

    .line 7947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7949
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7950
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->hash_:Lcom/google/protobuf/ByteString;

    .line 7951
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7952
    return-object p0
.end method

.method public setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8058
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8059
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->lockTime_:I

    .line 8060
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8061
    return-object p0
.end method

.method public setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .prologue
    .line 8003
    if-nez p1, :cond_0

    .line 8004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8006
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8007
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8008
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8009
    return-object p0
.end method

.method public setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .prologue
    .line 8950
    if-nez p1, :cond_0

    .line 8951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8953
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8954
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8955
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8956
    return-object p0
.end method

.method public setTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .prologue
    .line 8191
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8192
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8193
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8194
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8198
    :goto_0
    return-object p0

    .line 8196
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTransactionInput(ILorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .prologue
    .line 8174
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8175
    if-nez p2, :cond_0

    .line 8176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8178
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionInputIsMutable()V

    .line 8179
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8180
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8184
    :goto_0
    return-object p0

    .line 8182
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionInputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .prologue
    .line 8431
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 8432
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8433
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8434
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8438
    :goto_0
    return-object p0

    .line 8436
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTransactionOutput(ILorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .prologue
    .line 8414
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 8415
    if-nez p2, :cond_0

    .line 8416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8418
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->ensureTransactionOutputIsMutable()V

    .line 8419
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8420
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8424
    :goto_0
    return-object p0

    .line 8422
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->transactionOutputBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 8107
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 8108
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->updatedAt_:J

    .line 8109
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 8110
    return-object p0
.end method

.method public setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7909
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->bitField0_:I

    .line 7910
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->version_:I

    .line 7911
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->onChanged()V

    .line 7912
    return-object p0
.end method
