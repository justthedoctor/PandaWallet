.class public final Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$PeerAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ipAddress_:Lcom/google/protobuf/ByteString;

.field private port_:I

.field private services_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 355
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->maybeForceBuilderInitialization()V

    .line 356
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 361
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->maybeForceBuilderInitialization()V

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    .line 397
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 400
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 5

    .prologue
    .line 404
    new-instance v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 405
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 406
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 407
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 408
    or-int/lit8 v2, v2, 0x1

    .line 410
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$702(Lorg/bitcoinj/wallet/Protos$PeerAddress;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 411
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 412
    or-int/lit8 v2, v2, 0x2

    .line 414
    :cond_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$802(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I

    .line 415
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 416
    or-int/lit8 v2, v2, 0x4

    .line 418
    :cond_2
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$902(Lorg/bitcoinj/wallet/Protos$PeerAddress;J)J

    .line 419
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->access$1002(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I

    .line 420
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onBuilt()V

    .line 421
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .prologue
    .line 372
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 373
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 374
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    .line 376
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    .line 378
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 379
    return-object p0
.end method

.method public clearIpAddress()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 514
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 515
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 516
    return-object p0
.end method

.method public clearPort()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    .line 548
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 549
    return-object p0
.end method

.method public clearServices()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .prologue
    .line 579
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    .line 581
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 582
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->create()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    return v0
.end method

.method public getServices()J
    .locals 2

    .prologue
    .line 564
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    return-wide v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 489
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 525
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

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

.method public hasServices()Z
    .locals 2

    .prologue
    .line 558
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const-class v2, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasIpAddress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->hasServices()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
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
    .line 338
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 470
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 479
    :cond_0
    return-object p0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-object v2, v0

    .line 473
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 476
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 425
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p0

    .line 429
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    :goto_0
    return-object p0

    .line 428
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .prologue
    .line 434
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 445
    :goto_0
    return-object p0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 438
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 441
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getServices()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 444
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 504
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 505
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 506
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 507
    return-object p0
.end method

.method public setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 537
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 538
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->port_:I

    .line 539
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 540
    return-object p0
.end method

.method public setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 570
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->bitField0_:I

    .line 571
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->services_:J

    .line 572
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->onChanged()V

    .line 573
    return-object p0
.end method
