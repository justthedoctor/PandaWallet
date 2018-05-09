.class public final Lorg/bitcoinj/wallet/Protos$Extension$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private id_:Ljava/lang/Object;

.field private mandatory_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 10336
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10434
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 10205
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->maybeForceBuilderInitialization()V

    .line 10206
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10210
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 10336
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10434
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 10211
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->maybeForceBuilderInitialization()V

    .line 10212
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 10188
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12100()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10218
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10193
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 10214
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10216
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 2

    .prologue
    .line 10246
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    .line 10247
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$Extension;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10248
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10250
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 5

    .prologue
    .line 10254
    new-instance v1, Lorg/bitcoinj/wallet/Protos$Extension;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 10255
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$Extension;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10256
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 10257
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10258
    or-int/lit8 v2, v2, 0x1

    .line 10260
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12502(Lorg/bitcoinj/wallet/Protos$Extension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10261
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10262
    or-int/lit8 v2, v2, 0x2

    .line 10264
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12602(Lorg/bitcoinj/wallet/Protos$Extension;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 10265
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10266
    or-int/lit8 v2, v2, 0x4

    .line 10268
    :cond_2
    iget-boolean v3, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12702(Lorg/bitcoinj/wallet/Protos$Extension;Z)Z

    .line 10269
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12802(Lorg/bitcoinj/wallet/Protos$Extension;I)I

    .line 10270
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onBuilt()V

    .line 10271
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10222
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 10223
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10224
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10225
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 10226
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    .line 10228
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10229
    return-object p0
.end method

.method public clearData()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10463
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10464
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 10465
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10466
    return-object p0
.end method

.method public clearId()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10410
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10411
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10412
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10413
    return-object p0
.end method

.method public clearMandatory()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10520
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    .line 10522
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10523
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .prologue
    .line 10233
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 10445
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10188
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .prologue
    .line 10242
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10238
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10355
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10356
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10357
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10359
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10362
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10374
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10375
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10376
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10379
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10382
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

.method public getMandatory()Z
    .locals 1

    .prologue
    .line 10493
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    return v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 10439
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10345
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMandatory()Z
    .locals 2

    .prologue
    .line 10481
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

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
    .line 10198
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Extension;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10301
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10313
    :cond_0
    :goto_0
    return v0

    .line 10305
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10309
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasMandatory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10313
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
    .line 10188
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 10188
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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
    .line 10188
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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
    .line 10188
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 10188
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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
    .line 10188
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10320
    const/4 v2, 0x0

    .line 10322
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$Extension;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10327
    if-eqz v2, :cond_0

    .line 10328
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 10331
    :cond_0
    return-object p0

    .line 10323
    :catch_0
    move-exception v1

    .line 10324
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    move-object v2, v0

    .line 10325
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10327
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 10328
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 10275
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Extension;

    if-eqz v0, :cond_0

    .line 10276
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p0

    .line 10279
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    :goto_0
    return-object p0

    .line 10278
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 10284
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10297
    :goto_0
    return-object p0

    .line 10285
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10286
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10287
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->access$12500(Lorg/bitcoinj/wallet/Protos$Extension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10288
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10290
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10291
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 10293
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasMandatory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10294
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 10296
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10451
    if-nez p1, :cond_0

    .line 10452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10454
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10455
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 10456
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10457
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10394
    if-nez p1, :cond_0

    .line 10395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10397
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10398
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10399
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10400
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10424
    if-nez p1, :cond_0

    .line 10425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10427
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10428
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 10429
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10430
    return-object p0
.end method

.method public setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 10505
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 10506
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    .line 10507
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 10508
    return-object p0
.end method
