.class public final Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Settlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private tx_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7440
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7544
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 7441
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->maybeForceBuilderInitialization()V

    .line 7442
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7446
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7544
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 7447
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->maybeForceBuilderInitialization()V

    .line 7448
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 7424
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$9300()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7454
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7429
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 7450
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->access$9500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7452
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 2

    .prologue
    .line 7478
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    .line 7479
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$Settlement;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7480
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7482
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 5

    .prologue
    .line 7486
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 7487
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$Settlement;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    .line 7488
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 7489
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7490
    or-int/lit8 v2, v2, 0x1

    .line 7492
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->access$9702(Lorg/bitcoin/paymentchannel/Protos$Settlement;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 7493
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->access$9802(Lorg/bitcoin/paymentchannel/Protos$Settlement;I)I

    .line 7494
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->onBuilt()V

    .line 7495
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7458
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7459
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 7460
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    .line 7461
    return-object p0
.end method

.method public clearTx()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7593
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    .line 7594
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 7595
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->onChanged()V

    .line 7596
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 2

    .prologue
    .line 7465
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7424
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .prologue
    .line 7474
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7470
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7565
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasTx()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7554
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

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
    .line 7434
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7517
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->hasTx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7519
    const/4 v0, 0x0

    .line 7521
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
    .line 7424
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7424
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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
    .line 7424
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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
    .line 7424
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7424
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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
    .line 7424
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7528
    const/4 v2, 0x0

    .line 7530
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$Settlement;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7535
    if-eqz v2, :cond_0

    .line 7536
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 7539
    :cond_0
    return-object p0

    .line 7531
    :catch_0
    move-exception v1

    .line 7532
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-object v2, v0

    .line 7533
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7535
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7536
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 7499
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    if-eqz v0, :cond_0

    .line 7500
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object p0

    .line 7503
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    :goto_0
    return-object p0

    .line 7502
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .prologue
    .line 7508
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7513
    :goto_0
    return-object p0

    .line 7509
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->hasTx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7510
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 7512
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 7576
    if-nez p1, :cond_0

    .line 7577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7579
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->bitField0_:I

    .line 7580
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 7581
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->onChanged()V

    .line 7582
    return-object p0
.end method
