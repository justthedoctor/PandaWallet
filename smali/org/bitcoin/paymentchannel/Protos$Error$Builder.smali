.class public final Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private expectedValue_:J

.field private explanation_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8345
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8381
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8226
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->maybeForceBuilderInitialization()V

    .line 8227
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8231
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8345
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8381
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8232
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->maybeForceBuilderInitialization()V

    .line 8233
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 8209
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10200()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8239
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8214
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 8235
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8237
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 2

    .prologue
    .line 8267
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    .line 8268
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$Error;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8269
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8271
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 5

    .prologue
    .line 8275
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 8276
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$Error;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8277
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 8278
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8279
    or-int/lit8 v2, v2, 0x1

    .line 8281
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10602(Lorg/bitcoin/paymentchannel/Protos$Error;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8282
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8283
    or-int/lit8 v2, v2, 0x2

    .line 8285
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10702(Lorg/bitcoin/paymentchannel/Protos$Error;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8286
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8287
    or-int/lit8 v2, v2, 0x4

    .line 8289
    :cond_2
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10802(Lorg/bitcoin/paymentchannel/Protos$Error;J)J

    .line 8290
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10902(Lorg/bitcoin/paymentchannel/Protos$Error;I)I

    .line 8291
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onBuilt()V

    .line 8292
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .prologue
    .line 8243
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8244
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8245
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8246
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8247
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    .line 8249
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8250
    return-object p0
.end method

.method public clearCode()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8374
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8375
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8376
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8377
    return-object p0
.end method

.method public clearExpectedValue()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .prologue
    .line 8521
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    .line 8523
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8524
    return-object p0
.end method

.method public clearExplanation()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8455
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8456
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8457
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8458
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .prologue
    .line 8254
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .prologue
    .line 8356
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8209
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .prologue
    .line 8263
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8259
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedValue()J
    .locals 2

    .prologue
    .line 8498
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    return-wide v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8400
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8401
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8402
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8404
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8407
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getExplanationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8419
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8420
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8421
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8424
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8427
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8350
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpectedValue()Z
    .locals 2

    .prologue
    .line 8488
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

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

.method public hasExplanation()Z
    .locals 2

    .prologue
    .line 8390
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 8219
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$10000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8322
    const/4 v0, 0x1

    return v0
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
    .line 8209
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8209
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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
    .line 8209
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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
    .line 8209
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8209
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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
    .line 8209
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8329
    const/4 v2, 0x0

    .line 8331
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$Error;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8336
    if-eqz v2, :cond_0

    .line 8337
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 8340
    :cond_0
    return-object p0

    .line 8332
    :catch_0
    move-exception v1

    .line 8333
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    move-object v2, v0

    .line 8334
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8336
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8337
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 8296
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$Error;

    if-eqz v0, :cond_0

    .line 8297
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Error;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p0

    .line 8300
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    :goto_0
    return-object p0

    .line 8299
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 8305
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8318
    :goto_0
    return-object p0

    .line 8306
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8307
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 8309
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8310
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8311
    invoke-static {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$10700(Lorg/bitcoin/paymentchannel/Protos$Error;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8312
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8314
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExpectedValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8315
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExpectedValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 8317
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .prologue
    .line 8362
    if-nez p1, :cond_0

    .line 8363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8365
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8366
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8367
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8368
    return-object p0
.end method

.method public setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 8508
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8509
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    .line 8510
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8511
    return-object p0
.end method

.method public setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8439
    if-nez p1, :cond_0

    .line 8440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8442
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8443
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8444
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8445
    return-object p0
.end method

.method public setExplanationBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 8469
    if-nez p1, :cond_0

    .line 8470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8472
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 8473
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 8474
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 8475
    return-object p0
.end method
