.class public final Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;"
    }
.end annotation


# instance fields
.field private amount_:J

.field private bitField0_:I

.field private script_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 509
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    .line 348
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->maybeForceBuilderInitialization()V

    .line 349
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 509
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    .line 354
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->maybeForceBuilderInitialization()V

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    .line 388
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$Output;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 391
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 5

    .prologue
    .line 395
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$Output;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/protocols/payments/Protos$Output;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 396
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$Output;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 397
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 398
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 399
    or-int/lit8 v2, v2, 0x1

    .line 401
    :cond_0
    iget-wide v3, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->amount_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/protocols/payments/Protos$Output;->access$702(Lorg/bitcoin/protocols/payments/Protos$Output;J)J

    .line 402
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 403
    or-int/lit8 v2, v2, 0x2

    .line 405
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Output;->access$802(Lorg/bitcoin/protocols/payments/Protos$Output;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 406
    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->access$902(Lorg/bitcoin/protocols/payments/Protos$Output;I)I

    .line 407
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->onBuilt()V

    .line 408
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 366
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->amount_:J

    .line 367
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 368
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    .line 369
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 370
    return-object p0
.end method

.method public clearAmount()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->amount_:J

    .line 504
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->onChanged()V

    .line 505
    return-object p0
.end method

.method public clearScript()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 555
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    .line 556
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->onChanged()V

    .line 557
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

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
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->amount_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 469
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScript()Z
    .locals 2

    .prologue
    .line 518
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

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
    .line 341
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Output;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->hasScript()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
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
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

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
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v2, 0x0

    .line 446
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$Output;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 455
    :cond_0
    return-object p0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    move-object v2, v0

    .line 449
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 412
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object p0

    .line 416
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    :goto_0
    return-object p0

    .line 415
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 421
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 429
    :goto_0
    return-object p0

    .line 422
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasAmount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 425
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 428
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 489
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 490
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->amount_:J

    .line 491
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->onChanged()V

    .line 492
    return-object p0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 541
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->bitField0_:I

    .line 542
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->script_:Lcom/google/protobuf/ByteString;

    .line 543
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->onChanged()V

    .line 544
    return-object p0
.end method
