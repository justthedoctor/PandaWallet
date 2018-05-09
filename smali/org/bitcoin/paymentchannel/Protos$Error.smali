.class public final Lorg/bitcoin/paymentchannel/Protos$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Error$Builder;,
        Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field public static final EXPECTED_VALUE_FIELD_NUMBER:I = 0x3

.field public static final EXPLANATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private expectedValue_:J

.field private explanation_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7770
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 8531
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 8532
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->initFields()V

    .line 8533
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 7705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8080
    iput-byte v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 8104
    iput v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 7706
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->initFields()V

    .line 7707
    const/4 v2, 0x0

    .line 7708
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 7711
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 7712
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 7713
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 7714
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 7719
    invoke-virtual {p0, p1, v5, p2, v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7721
    const/4 v0, 0x1

    goto :goto_0

    .line 7716
    :sswitch_0
    const/4 v0, 0x1

    .line 7717
    goto :goto_0

    .line 7726
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 7727
    .local v3, "rawValue":I
    invoke-static {v3}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->valueOf(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v6

    .line 7728
    .local v6, "value":Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    if-nez v6, :cond_1

    .line 7729
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7748
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v6    # "value":Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    :catch_0
    move-exception v1

    .line 7749
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7754
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7755
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->makeExtensionsImmutable()V

    throw v7

    .line 7731
    .restart local v3    # "rawValue":I
    .restart local v4    # "tag":I
    .restart local v6    # "value":Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    :cond_1
    :try_start_2
    iget v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 7732
    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7750
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v6    # "value":Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    :catch_1
    move-exception v1

    .line 7751
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7737
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_4
    iget v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 7738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    goto :goto_0

    .line 7742
    :sswitch_3
    iget v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 7743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 7754
    .end local v4    # "tag":I
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7755
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->makeExtensionsImmutable()V

    .line 7757
    return-void

    .line 7714
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 7677
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7682
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 8080
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 8104
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 7683
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7684
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 7677
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 7685
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8080
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 8104
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 7685
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10400()Z
    .locals 1

    .prologue
    .line 7677
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Error;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10602(Lorg/bitcoin/paymentchannel/Protos$Error;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Error;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .prologue
    .line 7677
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p1
.end method

.method static synthetic access$10700(Lorg/bitcoin/paymentchannel/Protos$Error;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 7677
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10702(Lorg/bitcoin/paymentchannel/Protos$Error;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Error;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7677
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10802(Lorg/bitcoin/paymentchannel/Protos$Error;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Error;
    .param p1, "x1"    # J

    .prologue
    .line 7677
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    return-wide p1
.end method

.method static synthetic access$10902(Lorg/bitcoin/paymentchannel/Protos$Error;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Error;
    .param p1, "x1"    # I

    .prologue
    .line 7677
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .prologue
    .line 7689
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7760
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 8076
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8077
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 8078
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    .line 8079
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8187
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->access$10200()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 8190
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8167
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8173
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8137
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8143
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8178
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8184
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8157
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8163
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8147
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8153
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method


# virtual methods
.method public getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .prologue
    .line 7993
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .prologue
    .line 7693
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getExpectedValue()J
    .locals 2

    .prologue
    .line 8072
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    return-wide v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8017
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 8018
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8019
    check-cast v1, Ljava/lang/String;

    .line 8027
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 8021
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8023
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8024
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8025
    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8027
    goto :goto_0
.end method

.method public getExplanationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8039
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 8040
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8041
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8044
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 8047
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7782
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8106
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 8107
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8124
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 8109
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 8110
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8111
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8114
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8115
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8118
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 8119
    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8122
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 8123
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    move v1, v0

    .line 8124
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 7700
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7987
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpectedValue()Z
    .locals 2

    .prologue
    .line 8062
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

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

.method public hasExplanation()Z
    .locals 2

    .prologue
    .line 8007
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

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
    .line 7765
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$10000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 8082
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 8083
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 8086
    :goto_0
    return v1

    .line 8083
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 8085
    :cond_1
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7677
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8188
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 8197
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 8198
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 8192
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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
    .line 8131
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

    .line 8091
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getSerializedSize()I

    .line 8092
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8093
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8095
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8096
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8098
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8099
    const/4 v0, 0x3

    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 8101
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 8102
    return-void
.end method
