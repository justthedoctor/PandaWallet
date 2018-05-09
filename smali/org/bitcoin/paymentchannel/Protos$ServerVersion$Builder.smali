.class public final Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private major_:I

.field private minor_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3554
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3555
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->maybeForceBuilderInitialization()V

    .line 3556
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3560
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3561
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->maybeForceBuilderInitialization()V

    .line 3562
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 3538
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3200()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3568
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3543
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3564
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3566
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 2

    .prologue
    .line 3594
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    .line 3595
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3596
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3598
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 5

    .prologue
    .line 3602
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 3603
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3604
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3605
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3606
    or-int/lit8 v2, v2, 0x1

    .line 3608
    :cond_0
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3602(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    .line 3609
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3610
    or-int/lit8 v2, v2, 0x2

    .line 3612
    :cond_1
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3702(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    .line 3613
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->access$3802(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I

    .line 3614
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onBuilt()V

    .line 3615
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3572
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3573
    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3574
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3575
    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    .line 3576
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3577
    return-object p0
.end method

.method public clearMajor()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3693
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3694
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3695
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    .line 3696
    return-object p0
.end method

.method public clearMinor()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3726
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3727
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    .line 3728
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    .line 3729
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2

    .prologue
    .line 3581
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .prologue
    .line 3590
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3586
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 3678
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 3711
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    return v0
.end method

.method public hasMajor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3672
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinor()Z
    .locals 2

    .prologue
    .line 3705
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

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
    .line 3548
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3640
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->hasMajor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3642
    const/4 v0, 0x0

    .line 3644
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
    .line 3538
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3538
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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
    .line 3538
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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
    .line 3538
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3538
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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
    .line 3538
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3651
    const/4 v2, 0x0

    .line 3653
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3658
    if-eqz v2, :cond_0

    .line 3659
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3662
    :cond_0
    return-object p0

    .line 3654
    :catch_0
    move-exception v1

    .line 3655
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-object v2, v0

    .line 3656
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3658
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3659
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3619
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    if-eqz v0, :cond_0

    .line 3620
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p0

    .line 3623
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    :goto_0
    return-object p0

    .line 3622
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .prologue
    .line 3628
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3636
    :goto_0
    return-object p0

    .line 3629
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3630
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3632
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3633
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3635
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3684
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3685
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->major_:I

    .line 3686
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    .line 3687
    return-object p0
.end method

.method public setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3717
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->bitField0_:I

    .line 3718
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->minor_:I

    .line 3719
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->onChanged()V

    .line 3720
    return-object p0
.end method
