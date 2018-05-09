.class public final Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Initiate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private expireTimeSecs_:J

.field private minAcceptedChannelSize_:J

.field private minPayment_:J

.field private multisigKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4408
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4266
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->maybeForceBuilderInitialization()V

    .line 4267
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4271
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4408
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4272
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->maybeForceBuilderInitialization()V

    .line 4273
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 4249
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4200()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4279
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4254
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4275
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4277
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 2

    .prologue
    .line 4309
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    .line 4310
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4311
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4313
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 5

    .prologue
    .line 4317
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 4318
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4319
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4320
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4321
    or-int/lit8 v2, v2, 0x1

    .line 4323
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4602(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4324
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4325
    or-int/lit8 v2, v2, 0x2

    .line 4327
    :cond_1
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4702(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    .line 4328
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4329
    or-int/lit8 v2, v2, 0x4

    .line 4331
    :cond_2
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4802(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    .line 4332
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4333
    or-int/lit8 v2, v2, 0x8

    .line 4335
    :cond_3
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$4902(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J

    .line 4336
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->access$5002(Lorg/bitcoin/paymentchannel/Protos$Initiate;I)I

    .line 4337
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onBuilt()V

    .line 4338
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4283
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4284
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4285
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4286
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    .line 4287
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4288
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    .line 4289
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4290
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    .line 4291
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4292
    return-object p0
.end method

.method public clearExpireTimeSecs()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .prologue
    .line 4595
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4596
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    .line 4597
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4598
    return-object p0
.end method

.method public clearMinAcceptedChannelSize()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .prologue
    .line 4522
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4523
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    .line 4524
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4525
    return-object p0
.end method

.method public clearMinPayment()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .prologue
    .line 4664
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    .line 4666
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4667
    return-object p0
.end method

.method public clearMultisigKey()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4461
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4462
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4463
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4464
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .prologue
    .line 4296
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .prologue
    .line 4305
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4301
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpireTimeSecs()J
    .locals 2

    .prologue
    .line 4560
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    return-wide v0
.end method

.method public getMinAcceptedChannelSize()J
    .locals 2

    .prologue
    .line 4493
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    return-wide v0
.end method

.method public getMinPayment()J
    .locals 2

    .prologue
    .line 4631
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    return-wide v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4431
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasExpireTimeSecs()Z
    .locals 2

    .prologue
    .line 4544
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMinAcceptedChannelSize()Z
    .locals 2

    .prologue
    .line 4480
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMinPayment()Z
    .locals 2

    .prologue
    .line 4616
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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

.method public hasMultisigKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4419
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

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
    .line 4259
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4369
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMultisigKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4385
    :cond_0
    :goto_0
    return v0

    .line 4373
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMinAcceptedChannelSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4377
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasExpireTimeSecs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4381
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->hasMinPayment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4385
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
    .line 4249
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4249
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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
    .line 4249
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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
    .line 4249
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4249
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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
    .line 4249
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4392
    const/4 v2, 0x0

    .line 4394
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$Initiate;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4399
    if-eqz v2, :cond_0

    .line 4400
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4403
    :cond_0
    return-object p0

    .line 4395
    :catch_0
    move-exception v1

    .line 4396
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-object v2, v0

    .line 4397
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4399
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4400
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4342
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    if-eqz v0, :cond_0

    .line 4343
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p0

    .line 4346
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    :goto_0
    return-object p0

    .line 4345
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .prologue
    .line 4351
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4365
    :goto_0
    return-object p0

    .line 4352
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMultisigKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4353
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4355
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinAcceptedChannelSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4356
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4358
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasExpireTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4359
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4361
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinPayment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4362
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4364
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4576
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4577
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->expireTimeSecs_:J

    .line 4578
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4579
    return-object p0
.end method

.method public setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4506
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4507
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minAcceptedChannelSize_:J

    .line 4508
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4509
    return-object p0
.end method

.method public setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4646
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4647
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->minPayment_:J

    .line 4648
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4649
    return-object p0
.end method

.method public setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4443
    if-nez p1, :cond_0

    .line 4444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4446
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->bitField0_:I

    .line 4447
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4448
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->onChanged()V

    .line 4449
    return-object p0
.end method
