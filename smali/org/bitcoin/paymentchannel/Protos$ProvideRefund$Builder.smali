.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private tx_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5053
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5170
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5226
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5054
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->maybeForceBuilderInitialization()V

    .line 5055
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5059
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5170
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5226
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5060
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->maybeForceBuilderInitialization()V

    .line 5061
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 5037
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5400()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5067
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5042
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5063
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$5600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5065
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 2

    .prologue
    .line 5093
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    .line 5094
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5095
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5097
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 5

    .prologue
    .line 5101
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5102
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5103
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 5104
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5105
    or-int/lit8 v2, v2, 0x1

    .line 5107
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$5802(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5108
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5109
    or-int/lit8 v2, v2, 0x2

    .line 5111
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$5902(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5112
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->access$6002(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;I)I

    .line 5113
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onBuilt()V

    .line 5114
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5071
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5072
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5073
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5074
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5075
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5076
    return-object p0
.end method

.method public clearMultisigKey()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5219
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5220
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5221
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    .line 5222
    return-object p0
.end method

.method public clearTx()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5299
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5300
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5301
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    .line 5302
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 2

    .prologue
    .line 5080
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5037
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .prologue
    .line 5089
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5085
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5191
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5259
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMultisigKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5180
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTx()Z
    .locals 2

    .prologue
    .line 5242
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

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
    .line 5047
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5139
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->hasMultisigKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5147
    :cond_0
    :goto_0
    return v0

    .line 5143
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->hasTx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5147
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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5037
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5037
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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
    .line 5037
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5154
    const/4 v2, 0x0

    .line 5156
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5161
    if-eqz v2, :cond_0

    .line 5162
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5165
    :cond_0
    return-object p0

    .line 5157
    :catch_0
    move-exception v1

    .line 5158
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-object v2, v0

    .line 5159
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5161
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5162
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5118
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    if-eqz v0, :cond_0

    .line 5119
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p0

    .line 5122
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    :goto_0
    return-object p0

    .line 5121
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .prologue
    .line 5127
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5135
    :goto_0
    return-object p0

    .line 5128
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasMultisigKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5129
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5131
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasTx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5132
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5134
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5202
    if-nez p1, :cond_0

    .line 5203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5205
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5206
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5207
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    .line 5208
    return-object p0
.end method

.method public setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5276
    if-nez p1, :cond_0

    .line 5277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5279
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->bitField0_:I

    .line 5280
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 5281
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->onChanged()V

    .line 5282
    return-object p0
.end method
