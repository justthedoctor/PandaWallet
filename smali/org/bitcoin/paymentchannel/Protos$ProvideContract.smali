.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    }
.end annotation


# static fields
.field public static final INITIAL_PAYMENT_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5902
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 6532
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 6533
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initFields()V

    .line 6534
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
    const/4 v6, -0x1

    .line 5840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5999
    iput-byte v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6032
    iput v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 5841
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initFields()V

    .line 5842
    const/4 v2, 0x0

    .line 5843
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 5846
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5847
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 5848
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 5849
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5854
    invoke-virtual {p0, p1, v5, p2, v4}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5856
    const/4 v0, 0x1

    goto :goto_0

    .line 5851
    :sswitch_0
    const/4 v0, 0x1

    .line 5852
    goto :goto_0

    .line 5861
    :sswitch_1
    iget v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    .line 5862
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5880
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 5881
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5886
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5887
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->makeExtensionsImmutable()V

    throw v6

    .line 5866
    .restart local v4    # "tag":I
    :sswitch_2
    const/4 v3, 0x0

    .line 5867
    .local v3, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :try_start_2
    iget v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 5868
    iget-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v6}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v3

    .line 5870
    :cond_1
    sget-object v6, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 5871
    if-eqz v3, :cond_2

    .line 5872
    iget-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v3, v6}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 5873
    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 5875
    :cond_2
    iget v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5882
    .end local v3    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 5883
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5886
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5887
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->makeExtensionsImmutable()V

    .line 5889
    return-void

    .line 5849
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 5812
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5817
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5999
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6032
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 5818
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5819
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 5812
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5820
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5999
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6032
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 5820
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7500()Z
    .locals 1

    .prologue
    .line 5812
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7702(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5812
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$7802(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 5812
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p1
.end method

.method static synthetic access$7902(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .param p1, "x1"    # I

    .prologue
    .line 5812
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .prologue
    .line 5824
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5892
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5996
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    .line 5997
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 5998
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6111
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->access$7300()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .prologue
    .line 6114
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6091
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6097
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6061
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6067
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6102
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6108
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6081
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6087
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6071
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6077
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .prologue
    .line 5828
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 5979
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getInitialPaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .prologue
    .line 5992
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5914
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6034
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 6035
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6048
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 6037
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 6038
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 6039
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6042
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 6043
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6046
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 6047
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    move v1, v0

    .line 6048
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5949
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 5835
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasInitialPayment()Z
    .locals 2

    .prologue
    .line 5966
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

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

.method public hasTx()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5934
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

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
    .line 5897
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6001
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6002
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 6017
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 6002
    goto :goto_0

    .line 6004
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasTx()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6005
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    goto :goto_1

    .line 6008
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasInitialPayment()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6009
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    goto :goto_1

    .line 6012
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6013
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    goto :goto_1

    .line 6016
    :cond_4
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    move v2, v1

    .line 6017
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5812
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6112
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6121
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 6122
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5812
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6116
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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
    .line 6055
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6022
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getSerializedSize()I

    .line 6023
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6024
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6026
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6027
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6029
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6030
    return-void
.end method
