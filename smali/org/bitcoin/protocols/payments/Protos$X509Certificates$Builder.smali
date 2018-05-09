.class public final Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private certificate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3588
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3589
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->maybeForceBuilderInitialization()V

    .line 3590
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3594
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3595
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->maybeForceBuilderInitialization()V

    .line 3596
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 3572
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4200()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3602
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCertificateIsMutable()V
    .locals 2

    .prologue
    .line 3696
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3697
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3698
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3700
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3577
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3598
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3600
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCertificate(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;"
        }
    .end annotation

    .prologue
    .line 3774
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3775
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3776
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3777
    return-object p0
.end method

.method public addCertificate(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3757
    if-nez p1, :cond_0

    .line 3758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3760
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3761
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3762
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3763
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 2

    .prologue
    .line 3626
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    .line 3627
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3628
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3630
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 4

    .prologue
    .line 3634
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 3635
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3636
    .local v0, "from_bitField0_":I
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3637
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3638
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3640
    :cond_0
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4602(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;Ljava/util/List;)Ljava/util/List;

    .line 3641
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onBuilt()V

    .line 3642
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3606
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3608
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3609
    return-object p0
.end method

.method public clearCertificate()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3787
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3788
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3789
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3790
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2

    .prologue
    .line 3613
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3730
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCertificateCount()I
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3710
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .prologue
    .line 3622
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3618
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 3582
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3671
    const/4 v0, 0x1

    return v0
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
    .line 3572
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3572
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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
    .line 3572
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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
    .line 3572
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3572
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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
    .line 3572
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3678
    const/4 v2, 0x0

    .line 3680
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3685
    if-eqz v2, :cond_0

    .line 3686
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    .line 3689
    :cond_0
    return-object p0

    .line 3681
    :catch_0
    move-exception v1

    .line 3682
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-object v2, v0

    .line 3683
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3685
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3686
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3646
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    if-eqz v0, :cond_0

    .line 3647
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p0

    .line 3650
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    :goto_0
    return-object p0

    .line 3649
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .prologue
    .line 3655
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3667
    :goto_0
    return-object p0

    .line 3656
    :cond_0
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3657
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3658
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    .line 3659
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->bitField0_:I

    .line 3664
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3666
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 3661
    :cond_2
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3662
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setCertificate(ILcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3741
    if-nez p2, :cond_0

    .line 3742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3744
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->ensureCertificateIsMutable()V

    .line 3745
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3746
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->onChanged()V

    .line 3747
    return-object p0
.end method
