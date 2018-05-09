.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5653
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5806
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5526
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->maybeForceBuilderInitialization()V

    .line 5527
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5531
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5653
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5806
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5532
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->maybeForceBuilderInitialization()V

    .line 5533
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 5509
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6300()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5540
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5514
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5794
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5795
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 5800
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5802
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5535
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5536
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5538
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 2

    .prologue
    .line 5570
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    .line 5571
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5572
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5574
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 5

    .prologue
    .line 5578
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 5579
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5580
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 5581
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5582
    or-int/lit8 v2, v2, 0x1

    .line 5584
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 5585
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5589
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5590
    or-int/lit8 v2, v2, 0x2

    .line 5592
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6802(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5593
    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6902(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;I)I

    .line 5594
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onBuilt()V

    .line 5595
    return-object v1

    .line 5587
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5544
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5545
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5546
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5550
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5551
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5552
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5553
    return-object p0

    .line 5548
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5880
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5881
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5882
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5883
    return-object p0
.end method

.method public clearPayment()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5749
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5750
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5751
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5755
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5756
    return-object p0

    .line 5753
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2

    .prologue
    .line 5557
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5509
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .prologue
    .line 5566
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5562
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5825
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5826
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5827
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5829
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5832
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

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5844
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5845
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5846
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5849
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5852
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

.method public getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .prologue
    .line 5674
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5675
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5677
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0
.end method

.method public getPaymentBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 5766
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5767
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5768
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    return-object v0
.end method

.method public getPaymentOrBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
    .locals 1

    .prologue
    .line 5778
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 5779
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;

    .line 5781
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0
.end method

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 5815
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

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

.method public hasPayment()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5664
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

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
    .line 5519
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5622
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->hasPayment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5630
    :cond_0
    :goto_0
    return v0

    .line 5626
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5630
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
    .line 5509
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5509
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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
    .line 5509
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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
    .line 5509
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5509
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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
    .line 5509
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5637
    const/4 v2, 0x0

    .line 5639
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5644
    if-eqz v2, :cond_0

    .line 5645
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 5648
    :cond_0
    return-object p0

    .line 5640
    :catch_0
    move-exception v1

    .line 5641
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-object v2, v0

    .line 5642
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5644
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5645
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5599
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    if-eqz v0, :cond_0

    .line 5600
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p0

    .line 5603
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    :goto_0
    return-object p0

    .line 5602
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .prologue
    .line 5608
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5618
    :goto_0
    return-object p0

    .line 5609
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasPayment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5610
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergePayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 5612
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5613
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5614
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->access$6800(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5615
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5617
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergePayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 5726
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5727
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5729
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5734
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5738
    :goto_1
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5739
    return-object p0

    .line 5732
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    goto :goto_0

    .line 5736
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5864
    if-nez p1, :cond_0

    .line 5865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5867
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5868
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5869
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5870
    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5894
    if-nez p1, :cond_0

    .line 5895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5897
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5898
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->memo_:Ljava/lang/Object;

    .line 5899
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5900
    return-object p0
.end method

.method public setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .prologue
    .line 5709
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5710
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5711
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5715
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5716
    return-object p0

    .line 5713
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 5688
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5689
    if-nez p1, :cond_0

    .line 5690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5692
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5693
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->onChanged()V

    .line 5697
    :goto_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->bitField0_:I

    .line 5698
    return-object p0

    .line 5695
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->paymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
