.class public final Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X509Certificates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

.field private static final serialVersionUID:J


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3405
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    .line 3797
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .line 3798
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->initFields()V

    .line 3799
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 3350
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3458
    iput-byte v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3476
    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3351
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->initFields()V

    .line 3352
    const/4 v2, 0x0

    .line 3353
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3356
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3357
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3358
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3359
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3364
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3366
    const/4 v0, 0x1

    goto :goto_0

    .line 3361
    :sswitch_0
    const/4 v0, 0x1

    .line 3362
    goto :goto_0

    .line 3371
    :sswitch_1
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v7, :cond_1

    .line 3372
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3373
    or-int/lit8 v2, v2, 0x1

    .line 3375
    :cond_1
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3380
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3381
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3386
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 3387
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3389
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3390
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->makeExtensionsImmutable()V

    throw v5

    .line 3386
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v7, :cond_4

    .line 3387
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3389
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3390
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->makeExtensionsImmutable()V

    .line 3392
    return-void

    .line 3382
    :catch_1
    move-exception v1

    .line 3383
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3359
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/protocols/payments/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3322
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$Builder;, "Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 3327
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3458
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3476
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3328
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 3322
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3330
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3458
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3476
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3330
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 3322
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .prologue
    .line 3322
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4602(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3322
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .prologue
    .line 3334
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3395
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3456
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3457
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3556
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->access$4200()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .prologue
    .line 3559
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3536
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3542
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3506
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3512
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3547
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3553
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3526
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3532
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3516
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3522
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method


# virtual methods
.method public getCertificate(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3452
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCertificateCount()I
    .locals 1

    .prologue
    .line 3442
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

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
    .line 3432
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .prologue
    .line 3338
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3417
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3478
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3479
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 3493
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 3481
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 3483
    const/4 v0, 0x0

    .line 3484
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3485
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 3484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3488
    :cond_1
    add-int/2addr v2, v0

    .line 3489
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3491
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 3492
    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    move v3, v2

    .line 3493
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 3400
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3460
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3461
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3464
    :goto_0
    return v1

    .line 3461
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3463
    :cond_1
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3322
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3557
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3566
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 3567
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3322
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3469
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getSerializedSize()I

    .line 3470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3471
    const/4 v2, 0x1

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3473
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3474
    return-void
.end method
