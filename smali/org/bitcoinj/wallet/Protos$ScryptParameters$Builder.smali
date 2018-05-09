.class public final Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$ScryptParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private n_:J

.field private p_:I

.field private r_:I

.field private salt_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 9433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 9564
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 9616
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 9665
    const/16 v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 9714
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 9434
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->maybeForceBuilderInitialization()V

    .line 9435
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9439
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 9564
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 9616
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 9665
    const/16 v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 9714
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 9440
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->maybeForceBuilderInitialization()V

    .line 9441
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 9417
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10900()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9447
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9422
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 9443
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9445
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 2

    .prologue
    .line 9477
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    .line 9478
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9479
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9481
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 5

    .prologue
    .line 9485
    new-instance v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 9486
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9487
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 9488
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9489
    or-int/lit8 v2, v2, 0x1

    .line 9491
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11302(Lorg/bitcoinj/wallet/Protos$ScryptParameters;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 9492
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9493
    or-int/lit8 v2, v2, 0x2

    .line 9495
    :cond_1
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11402(Lorg/bitcoinj/wallet/Protos$ScryptParameters;J)J

    .line 9496
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9497
    or-int/lit8 v2, v2, 0x4

    .line 9499
    :cond_2
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11502(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    .line 9500
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 9501
    or-int/lit8 v2, v2, 0x8

    .line 9503
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11602(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    .line 9504
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->access$11702(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I

    .line 9505
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onBuilt()V

    .line 9506
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .prologue
    .line 9451
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9452
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 9453
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9454
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 9455
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9456
    const/16 v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 9457
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9458
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 9459
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9460
    return-object p0
.end method

.method public clearN()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .prologue
    .line 9658
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9659
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 9660
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9661
    return-object p0
.end method

.method public clearP()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9756
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9757
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 9758
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9759
    return-object p0
.end method

.method public clearR()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9707
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9708
    const/16 v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 9709
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9710
    return-object p0
.end method

.method public clearSalt()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9609
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9610
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 9611
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9612
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .prologue
    .line 9464
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->create()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9417
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 9473
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9469
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 9635
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    return-wide v0
.end method

.method public getP()I
    .locals 1

    .prologue
    .line 9733
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    return v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 9684
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    return v0
.end method

.method public getSalt()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 9583
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasN()Z
    .locals 2

    .prologue
    .line 9625
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasP()Z
    .locals 2

    .prologue
    .line 9723
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .prologue
    .line 9674
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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

.method public hasSalt()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9573
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

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
    .line 9427
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9537
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->hasSalt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9539
    const/4 v0, 0x0

    .line 9541
    :goto_0
    return v0

    :cond_0
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
    .line 9417
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 9417
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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
    .line 9417
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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
    .line 9417
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 9417
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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
    .line 9417
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9548
    const/4 v2, 0x0

    .line 9550
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9555
    if-eqz v2, :cond_0

    .line 9556
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 9559
    :cond_0
    return-object p0

    .line 9551
    :catch_0
    move-exception v1

    .line 9552
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-object v2, v0

    .line 9553
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9555
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 9556
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 9510
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    if-eqz v0, :cond_0

    .line 9511
    check-cast p1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p0

    .line 9514
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    :goto_0
    return-object p0

    .line 9513
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 9519
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 9533
    :goto_0
    return-object p0

    .line 9520
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasSalt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9521
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 9523
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9524
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 9526
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9527
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getR()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setR(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 9529
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasP()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9530
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getP()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setP(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 9532
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 9645
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9646
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->n_:J

    .line 9647
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9648
    return-object p0
.end method

.method public setP(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9743
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9744
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->p_:I

    .line 9745
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9746
    return-object p0
.end method

.method public setR(I)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9694
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9695
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->r_:I

    .line 9696
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9697
    return-object p0
.end method

.method public setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 9593
    if-nez p1, :cond_0

    .line 9594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9596
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->bitField0_:I

    .line 9597
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->salt_:Lcom/google/protobuf/ByteString;

    .line 9598
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->onChanged()V

    .line 9599
    return-object p0
.end method
