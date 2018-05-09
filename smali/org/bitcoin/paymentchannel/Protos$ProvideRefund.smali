.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRefund"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    }
.end annotation


# static fields
.field public static final MULTISIG_KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4825
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    .line 5309
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 5310
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->initFields()V

    .line 5311
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

    .line 4771
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4909
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 4938
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 4772
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->initFields()V

    .line 4773
    const/4 v2, 0x0

    .line 4774
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 4777
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4778
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4779
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4780
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4785
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4787
    const/4 v0, 0x1

    goto :goto_0

    .line 4782
    :sswitch_0
    const/4 v0, 0x1

    .line 4783
    goto :goto_0

    .line 4792
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    .line 4793
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4803
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 4804
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4809
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4810
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->makeExtensionsImmutable()V

    throw v5

    .line 4797
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    .line 4798
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4805
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 4806
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

    .line 4809
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4810
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->makeExtensionsImmutable()V

    .line 4812
    return-void

    .line 4780
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
    .line 4743
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4748
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4909
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 4938
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 4749
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4750
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 4743
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 4751
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4909
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 4938
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 4751
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5600()Z
    .locals 1

    .prologue
    .line 4743
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5802(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4743
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5902(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4743
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6002(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .param p1, "x1"    # I

    .prologue
    .line 4743
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .prologue
    .line 4755
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4815
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4906
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4907
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    .line 4908
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->access$5400()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .prologue
    .line 5020
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4997
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5003
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4967
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4973
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5008
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5014
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4987
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4993
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4977
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4983
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .prologue
    .line 4759
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4864
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4837
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4940
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 4941
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4954
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4943
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4944
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4945
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4948
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4949
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4952
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4953
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    move v1, v0

    .line 4954
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4902
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 4766
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMultisigKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4853
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTx()Z
    .locals 2

    .prologue
    .line 4885
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

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
    .line 4820
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4911
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 4912
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 4923
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4912
    goto :goto_0

    .line 4914
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasMultisigKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4915
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    move v1, v2

    .line 4916
    goto :goto_0

    .line 4918
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasTx()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4919
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    move v1, v2

    .line 4920
    goto :goto_0

    .line 4922
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4743
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5018
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5027
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5028
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 5022
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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
    .line 4961
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

    .line 4928
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getSerializedSize()I

    .line 4929
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4930
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4932
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4933
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4935
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4936
    return-void
.end method
