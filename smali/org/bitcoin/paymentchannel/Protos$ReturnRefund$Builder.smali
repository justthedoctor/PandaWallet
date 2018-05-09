.class public final Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5589
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5693
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5590
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->maybeForceBuilderInitialization()V

    .line 5591
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5595
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5693
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5596
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->maybeForceBuilderInitialization()V

    .line 5597
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 5573
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6400()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5603
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5578
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5599
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5601
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 2

    .prologue
    .line 5627
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    .line 5628
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5629
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5631
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 5

    .prologue
    .line 5635
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5636
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5637
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 5638
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5639
    or-int/lit8 v2, v2, 0x1

    .line 5641
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$6802(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5642
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$6902(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;I)I

    .line 5643
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onBuilt()V

    .line 5644
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5607
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5608
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5609
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5610
    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5722
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5723
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5724
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onChanged()V

    .line 5725
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 2

    .prologue
    .line 5614
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .prologue
    .line 5623
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5619
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5704
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5698
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

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
    .line 5583
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5666
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5668
    const/4 v0, 0x0

    .line 5670
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
    .line 5573
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5573
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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
    .line 5573
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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
    .line 5573
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5573
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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
    .line 5573
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5677
    const/4 v2, 0x0

    .line 5679
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5684
    if-eqz v2, :cond_0

    .line 5685
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 5688
    :cond_0
    return-object p0

    .line 5680
    :catch_0
    move-exception v1

    .line 5681
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-object v2, v0

    .line 5682
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5684
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5685
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5648
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    if-eqz v0, :cond_0

    .line 5649
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p0

    .line 5652
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    :goto_0
    return-object p0

    .line 5651
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .prologue
    .line 5657
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5662
    :goto_0
    return-object p0

    .line 5658
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5659
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 5661
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5710
    if-nez p1, :cond_0

    .line 5711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5713
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5714
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5715
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onChanged()V

    .line 5716
    return-object p0
.end method
