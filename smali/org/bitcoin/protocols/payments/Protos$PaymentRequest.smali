.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_DETAILS_VERSION_FIELD_NUMBER:I = 0x1

.field public static final PKI_DATA_FIELD_NUMBER:I = 0x3

.field public static final PKI_TYPE_FIELD_NUMBER:I = 0x2

.field public static final SERIALIZED_PAYMENT_DETAILS_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private paymentDetailsVersion_:I

.field private pkiData_:Lcom/google/protobuf/ByteString;

.field private pkiType_:Ljava/lang/Object;

.field private serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2528
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 3283
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .line 3284
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->initFields()V

    .line 3285
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 2459
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2694
    iput-byte v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2728
    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2460
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->initFields()V

    .line 2461
    const/4 v2, 0x0

    .line 2462
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 2465
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 2466
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2467
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2468
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2473
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2475
    const/4 v0, 0x1

    goto :goto_0

    .line 2470
    :sswitch_0
    const/4 v0, 0x1

    .line 2471
    goto :goto_0

    .line 2480
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2481
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2506
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 2507
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2512
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2513
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->makeExtensionsImmutable()V

    throw v5

    .line 2485
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2486
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2508
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 2509
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2490
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2495
    :sswitch_4
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2500
    :sswitch_5
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2512
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2513
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->makeExtensionsImmutable()V

    .line 2515
    return-void

    .line 2468
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 2431
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2436
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2694
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2728
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2437
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2438
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 2431
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2439
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2694
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2728
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2439
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 2431
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3302(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # I

    .prologue
    .line 2431
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    return p1
.end method

.method static synthetic access$3400(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .prologue
    .line 2431
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2431
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2431
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2431
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3702(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2431
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3802(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "x1"    # I

    .prologue
    .line 2431
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .prologue
    .line 2443
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2518
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2688
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    .line 2689
    const-string v0, "none"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2690
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 2691
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 2692
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    .line 2693
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2819
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->access$2900()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .prologue
    .line 2822
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2799
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2805
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2769
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2775
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2810
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2816
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2789
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2795
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2779
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2785
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .prologue
    .line 2447
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2540
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaymentDetailsVersion()I
    .locals 1

    .prologue
    .line 2557
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    return v0
.end method

.method public getPkiData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPkiType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2581
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2582
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2583
    check-cast v1, Ljava/lang/String;

    .line 2591
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2587
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2588
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2589
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2591
    goto :goto_0
.end method

.method public getPkiTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2603
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2604
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2605
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2608
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2611
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

.method public getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2730
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2731
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2756
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2733
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2734
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2735
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2738
    :cond_1
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2739
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2742
    :cond_2
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 2743
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2746
    :cond_3
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 2747
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2750
    :cond_4
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2751
    const/4 v2, 0x5

    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2754
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2755
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 2756
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasPaymentDetailsVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2551
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPkiData()Z
    .locals 2

    .prologue
    .line 2626
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

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

.method public hasPkiType()Z
    .locals 2

    .prologue
    .line 2571
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

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

.method public hasSerializedPaymentDetails()Z
    .locals 2

    .prologue
    .line 2650
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .prologue
    .line 2674
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 2523
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2696
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2697
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2704
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2697
    goto :goto_0

    .line 2699
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2700
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 2701
    goto :goto_0

    .line 2703
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2431
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2820
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2829
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 2830
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2824
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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
    .line 2763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2709
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedSize()I

    .line 2710
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2711
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 2713
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2714
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2716
    :cond_1
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2717
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2719
    :cond_2
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2720
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2722
    :cond_3
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2723
    const/4 v0, 0x5

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2725
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2726
    return-void
.end method
