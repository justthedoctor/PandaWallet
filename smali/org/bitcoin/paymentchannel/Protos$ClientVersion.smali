.class public final Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    }
.end annotation


# static fields
.field public static final MAJOR_FIELD_NUMBER:I = 0x1

.field public static final MINOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_CHANNEL_CONTRACT_HASH_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private major_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minor_:I

.field private previousChannelContractHash_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2745
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    .line 3231
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 3232
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->initFields()V

    .line 3233
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

    .line 2686
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2828
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 2856
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2687
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->initFields()V

    .line 2688
    const/4 v2, 0x0

    .line 2689
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 2692
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 2693
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2694
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2695
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2700
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2702
    const/4 v0, 0x1

    goto :goto_0

    .line 2697
    :sswitch_0
    const/4 v0, 0x1

    .line 2698
    goto :goto_0

    .line 2707
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2708
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2723
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 2724
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2729
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2730
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->makeExtensionsImmutable()V

    throw v5

    .line 2712
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2713
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2725
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 2726
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

    .line 2717
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2718
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2729
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2730
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->makeExtensionsImmutable()V

    .line 2732
    return-void

    .line 2695
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2658
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2663
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2828
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 2856
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2664
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2665
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 2658
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2666
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2828
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 2856
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2666
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 2658
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .param p1, "x1"    # I

    .prologue
    .line 2658
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    return p1
.end method

.method static synthetic access$2602(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .param p1, "x1"    # I

    .prologue
    .line 2658
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    return p1
.end method

.method static synthetic access$2702(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2658
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2802(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .param p1, "x1"    # I

    .prologue
    .line 2658
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .prologue
    .line 2670
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2735
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2824
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    .line 2825
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    .line 2826
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 2827
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 2939
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->access$2100()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .prologue
    .line 2942
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2919
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2925
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2889
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2895
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2930
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2936
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2909
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2915
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2899
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2905
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .prologue
    .line 2674
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 2774
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 2790
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2757
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2820
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2858
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2859
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2876
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2861
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2862
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2863
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2866
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2867
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2870
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2871
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2874
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2875
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    move v1, v0

    .line 2876
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMajor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2768
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

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
    .line 2784
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

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

.method public hasPreviousChannelContractHash()Z
    .locals 2

    .prologue
    .line 2807
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

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
    .line 2740
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2830
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 2831
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2838
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2831
    goto :goto_0

    .line 2833
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMajor()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2834
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    move v1, v2

    .line 2835
    goto :goto_0

    .line 2837
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2658
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2949
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 2950
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 2944
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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
    .line 2883
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

    .line 2843
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getSerializedSize()I

    .line 2844
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2845
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2847
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2848
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2850
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2851
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2853
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2854
    return-void
.end method
