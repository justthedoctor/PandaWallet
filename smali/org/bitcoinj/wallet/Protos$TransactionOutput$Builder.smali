.class public final Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionHash_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionIndex_:I

.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4480
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4532
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4313
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->maybeForceBuilderInitialization()V

    .line 4314
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4318
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4480
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4532
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4319
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->maybeForceBuilderInitialization()V

    .line 4320
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 4296
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6000()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4326
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4301
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4322
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4324
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 2

    .prologue
    .line 4356
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    .line 4357
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4358
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4360
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 5

    .prologue
    .line 4364
    new-instance v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 4365
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4366
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4367
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4368
    or-int/lit8 v2, v2, 0x1

    .line 4370
    :cond_0
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6402(Lorg/bitcoinj/wallet/Protos$TransactionOutput;J)J

    .line 4371
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4372
    or-int/lit8 v2, v2, 0x2

    .line 4374
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6502(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4375
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4376
    or-int/lit8 v2, v2, 0x4

    .line 4378
    :cond_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6602(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4379
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4380
    or-int/lit8 v2, v2, 0x8

    .line 4382
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6702(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I

    .line 4383
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->access$6802(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I

    .line 4384
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onBuilt()V

    .line 4385
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .prologue
    .line 4330
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 4332
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4333
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4334
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4335
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4336
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4337
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    .line 4338
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4339
    return-object p0
.end method

.method public clearScriptBytes()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4525
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4526
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4527
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4528
    return-object p0
.end method

.method public clearSpentByTransactionHash()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4577
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4578
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4579
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4580
    return-object p0
.end method

.method public clearSpentByTransactionIndex()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4626
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4627
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    .line 4628
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4629
    return-object p0
.end method

.method public clearValue()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .prologue
    .line 4473
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 4475
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4476
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .prologue
    .line 4343
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .prologue
    .line 4352
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4348
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4499
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4551
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionIndex()I
    .locals 1

    .prologue
    .line 4603
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 4458
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .prologue
    .line 4489
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasSpentByTransactionHash()Z
    .locals 2

    .prologue
    .line 4541
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasSpentByTransactionIndex()Z
    .locals 2

    .prologue
    .line 4593
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4452
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

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
    .line 4306
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4416
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->hasValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4424
    :cond_0
    :goto_0
    return v0

    .line 4420
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->hasScriptBytes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4424
    const/4 v0, 0x1

    goto :goto_0
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
    .line 4296
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4296
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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
    .line 4296
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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
    .line 4296
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4296
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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
    .line 4296
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4431
    const/4 v2, 0x0

    .line 4433
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4438
    if-eqz v2, :cond_0

    .line 4439
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 4442
    :cond_0
    return-object p0

    .line 4434
    :catch_0
    move-exception v1

    .line 4435
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-object v2, v0

    .line 4436
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4438
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4439
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4389
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    if-eqz v0, :cond_0

    .line 4390
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p0

    .line 4393
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    :goto_0
    return-object p0

    .line 4392
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .prologue
    .line 4398
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4412
    :goto_0
    return-object p0

    .line 4399
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4400
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 4402
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasScriptBytes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4403
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 4405
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionHash()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4406
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 4408
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionIndex()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4409
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 4411
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4509
    if-nez p1, :cond_0

    .line 4510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4512
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4513
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4515
    return-object p0
.end method

.method public setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4561
    if-nez p1, :cond_0

    .line 4562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4564
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4565
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4566
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4567
    return-object p0
.end method

.method public setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4613
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4614
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->spentByTransactionIndex_:I

    .line 4615
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4616
    return-object p0
.end method

.method public setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4464
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->bitField0_:I

    .line 4465
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->value_:J

    .line 4466
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->onChanged()V

    .line 4467
    return-object p0
.end method
