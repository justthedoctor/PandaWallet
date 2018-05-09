.class public final Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private sequence_:I

.field private transactionOutPointHash_:Lcom/google/protobuf/ByteString;

.field private transactionOutPointIndex_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3535
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3674
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3775
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3536
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->maybeForceBuilderInitialization()V

    .line 3537
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3541
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3674
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3775
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3542
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->maybeForceBuilderInitialization()V

    .line 3543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 3519
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4800()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3549
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3524
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3545
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3547
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 2

    .prologue
    .line 3579
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    .line 3580
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$TransactionInput;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3581
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3583
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 5

    .prologue
    .line 3587
    new-instance v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 3588
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$TransactionInput;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3589
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3590
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3591
    or-int/lit8 v2, v2, 0x1

    .line 3593
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5202(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3594
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3595
    or-int/lit8 v2, v2, 0x2

    .line 3597
    :cond_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5302(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    .line 3598
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3599
    or-int/lit8 v2, v2, 0x4

    .line 3601
    :cond_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5402(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3602
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3603
    or-int/lit8 v2, v2, 0x8

    .line 3605
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5502(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    .line 3606
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->access$5602(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I

    .line 3607
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onBuilt()V

    .line 3608
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3553
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3554
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3555
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3556
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    .line 3557
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3558
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3559
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3560
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    .line 3561
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3562
    return-object p0
.end method

.method public clearScriptBytes()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3820
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3821
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3822
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3823
    return-object p0
.end method

.method public clearSequence()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3869
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3870
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    .line 3871
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3872
    return-object p0
.end method

.method public clearTransactionOutPointHash()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3719
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3720
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3721
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3722
    return-object p0
.end method

.method public clearTransactionOutPointIndex()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3768
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3769
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    .line 3770
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3771
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .prologue
    .line 3566
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3519
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .prologue
    .line 3575
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3571
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3794
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 3846
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    return v0
.end method

.method public getTransactionOutPointHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3693
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionOutPointIndex()I
    .locals 1

    .prologue
    .line 3745
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    return v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .prologue
    .line 3784
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

.method public hasSequence()Z
    .locals 2

    .prologue
    .line 3836
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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

.method public hasTransactionOutPointHash()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3683
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransactionOutPointIndex()Z
    .locals 2

    .prologue
    .line 3735
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

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
    .line 3529
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3639
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasTransactionOutPointHash()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3651
    :cond_0
    :goto_0
    return v0

    .line 3643
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasTransactionOutPointIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3647
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->hasScriptBytes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3651
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
    .line 3519
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3519
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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
    .line 3519
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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
    .line 3519
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3519
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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
    .line 3519
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3658
    const/4 v2, 0x0

    .line 3660
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$TransactionInput;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3665
    if-eqz v2, :cond_0

    .line 3666
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 3669
    :cond_0
    return-object p0

    .line 3661
    :catch_0
    move-exception v1

    .line 3662
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-object v2, v0

    .line 3663
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3665
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3666
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3612
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    if-eqz v0, :cond_0

    .line 3613
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p0

    .line 3616
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    :goto_0
    return-object p0

    .line 3615
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .prologue
    .line 3621
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3635
    :goto_0
    return-object p0

    .line 3622
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3623
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 3625
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3626
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 3628
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasScriptBytes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3629
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 3631
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasSequence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3632
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSequence()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 3634
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3804
    if-nez p1, :cond_0

    .line 3805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3807
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3808
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3810
    return-object p0
.end method

.method public setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3856
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3857
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->sequence_:I

    .line 3858
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3859
    return-object p0
.end method

.method public setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3703
    if-nez p1, :cond_0

    .line 3704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3706
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3707
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3708
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3709
    return-object p0
.end method

.method public setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3755
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->bitField0_:I

    .line 3756
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->transactionOutPointIndex_:I

    .line 3757
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->onChanged()V

    .line 3758
    return-object p0
.end method
