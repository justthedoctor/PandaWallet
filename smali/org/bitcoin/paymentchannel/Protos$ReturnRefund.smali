.class public final Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReturnRefund"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5417
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    .line 5732
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 5733
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->initFields()V

    .line 5734
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

    .line 5368
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5452
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    .line 5474
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedSerializedSize:I

    .line 5369
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->initFields()V

    .line 5370
    const/4 v2, 0x0

    .line 5371
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 5374
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5375
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5376
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 5377
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5382
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5384
    const/4 v0, 0x1

    goto :goto_0

    .line 5379
    :sswitch_0
    const/4 v0, 0x1

    .line 5380
    goto :goto_0

    .line 5389
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

    .line 5390
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5395
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 5396
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5401
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5402
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->makeExtensionsImmutable()V

    throw v5

    .line 5401
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5402
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->makeExtensionsImmutable()V

    .line 5404
    return-void

    .line 5397
    :catch_1
    move-exception v1

    .line 5398
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

    .line 5377
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/paymentchannel/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5340
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5345
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5452
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    .line 5474
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedSerializedSize:I

    .line 5346
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5347
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 5340
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5348
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5452
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    .line 5474
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedSerializedSize:I

    .line 5348
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6600()Z
    .locals 1

    .prologue
    .line 5340
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6802(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5340
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6902(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .param p1, "x1"    # I

    .prologue
    .line 5340
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .prologue
    .line 5352
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5407
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5450
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;

    .line 5451
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5549
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->access$6400()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .prologue
    .line 5552
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5529
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5535
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5499
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5505
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5540
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5546
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5519
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5525
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5509
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5515
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .prologue
    .line 5356
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5429
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5476
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedSerializedSize:I

    .line 5477
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5486
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 5479
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 5480
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5481
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5484
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5485
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedSerializedSize:I

    move v1, v0

    .line 5486
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5446
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 5363
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5440
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

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
    .line 5412
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5454
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    .line 5455
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5462
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5455
    goto :goto_0

    .line 5457
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->hasSignature()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5458
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    move v1, v2

    .line 5459
    goto :goto_0

    .line 5461
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5340
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5550
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5559
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5560
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5340
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 5554
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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
    .line 5493
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5467
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSerializedSize()I

    .line 5468
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5469
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5471
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5472
    return-void
.end method
