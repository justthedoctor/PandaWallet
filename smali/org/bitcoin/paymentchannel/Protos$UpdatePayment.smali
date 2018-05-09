.class public final Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_CHANGE_VALUE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientChangeValue_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6687
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    .line 7156
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 7157
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->initFields()V

    .line 7158
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

    .line 6633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6763
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 6792
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 6634
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->initFields()V

    .line 6635
    const/4 v2, 0x0

    .line 6636
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 6639
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6640
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 6641
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 6642
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6647
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6649
    const/4 v0, 0x1

    goto :goto_0

    .line 6644
    :sswitch_0
    const/4 v0, 0x1

    .line 6645
    goto :goto_0

    .line 6654
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    .line 6655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6665
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 6666
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6671
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6672
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->makeExtensionsImmutable()V

    throw v5

    .line 6659
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    .line 6660
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6667
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 6668
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

    .line 6671
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6672
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->makeExtensionsImmutable()V

    .line 6674
    return-void

    .line 6642
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 6605
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 6610
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 6763
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 6792
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 6611
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 6605
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 6613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6763
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 6792
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 6613
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$8500()Z
    .locals 1

    .prologue
    .line 6605
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8702(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .param p1, "x1"    # J

    .prologue
    .line 6605
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    return-wide p1
.end method

.method static synthetic access$8802(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6605
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8902(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .param p1, "x1"    # I

    .prologue
    .line 6605
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 6617
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6677
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 6760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    .line 6761
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    .line 6762
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6871
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->access$8300()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 6874
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6851
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6857
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6821
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6827
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6862
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6868
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6841
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6847
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6831
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6837
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method


# virtual methods
.method public getClientChangeValue()J
    .locals 2

    .prologue
    .line 6726
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 6621
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6699
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6794
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 6795
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6808
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 6797
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 6798
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 6799
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6802
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 6803
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6806
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 6807
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    move v1, v0

    .line 6808
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 6756
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 6628
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientChangeValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6715
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignature()Z
    .locals 2

    .prologue
    .line 6743
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

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
    .line 6682
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6765
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 6766
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 6777
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 6766
    goto :goto_0

    .line 6768
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasClientChangeValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6769
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    move v1, v2

    .line 6770
    goto :goto_0

    .line 6772
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasSignature()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6773
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    move v1, v2

    .line 6774
    goto :goto_0

    .line 6776
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6605
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6872
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6881
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 6882
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6876
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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
    .line 6815
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6782
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSerializedSize()I

    .line 6783
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 6784
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 6786
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 6787
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6789
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6790
    return-void
.end method
