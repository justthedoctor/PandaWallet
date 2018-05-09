.class public final Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionConfidence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    }
.end annotation


# static fields
.field public static final APPEARED_AT_HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final BROADCAST_BY_FIELD_NUMBER:I = 0x6

.field public static final DEPTH_FIELD_NUMBER:I = 0x4

.field public static final OVERRIDING_TRANSACTION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final WORK_DONE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private static final serialVersionUID:J


# instance fields
.field private appearedAtHeight_:I

.field private bitField0_:I

.field private broadcastBy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private depth_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private overridingTransaction_:Lcom/google/protobuf/ByteString;

.field private source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private workDone_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4915
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    .line 6300
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 6301
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->initFields()V

    .line 6302
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v9, 0x20

    .line 4818
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5380
    iput-byte v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 5422
    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 4819
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->initFields()V

    .line 4820
    const/4 v2, 0x0

    .line 4821
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 4824
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4825
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 4826
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4827
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 4832
    invoke-virtual {p0, p1, v5, p2, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4834
    const/4 v0, 0x1

    goto :goto_0

    .line 4829
    :sswitch_0
    const/4 v0, 0x1

    .line 4830
    goto :goto_0

    .line 4839
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4840
    .local v3, "rawValue":I
    invoke-static {v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v6

    .line 4841
    .local v6, "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    if-nez v6, :cond_2

    .line 4842
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4890
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v6    # "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    :catch_0
    move-exception v1

    .line 4891
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4896
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x20

    if-ne v8, v9, :cond_1

    .line 4897
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 4899
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4900
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->makeExtensionsImmutable()V

    throw v7

    .line 4844
    .restart local v3    # "rawValue":I
    .restart local v4    # "tag":I
    .restart local v6    # "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    :cond_2
    :try_start_2
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4845
    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4892
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v6    # "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    :catch_1
    move-exception v1

    .line 4893
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

    .line 4850
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_4
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    goto :goto_0

    .line 4855
    :sswitch_3
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4860
    :sswitch_4
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    goto :goto_0

    .line 4865
    :sswitch_5
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4866
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    goto/16 :goto_0

    .line 4870
    :sswitch_6
    and-int/lit8 v7, v2, 0x20

    if-eq v7, v9, :cond_3

    .line 4871
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 4872
    or-int/lit8 v2, v2, 0x20

    .line 4874
    :cond_3
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    sget-object v8, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4878
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4879
    .restart local v3    # "rawValue":I
    invoke-static {v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v6

    .line 4880
    .local v6, "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    if-nez v6, :cond_4

    .line 4881
    const/4 v7, 0x7

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 4883
    :cond_4
    iget v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    .line 4884
    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4896
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v6    # "value":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    :cond_5
    and-int/lit8 v7, v2, 0x20

    if-ne v7, v9, :cond_6

    .line 4897
    iget-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 4899
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4900
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->makeExtensionsImmutable()V

    .line 4902
    return-void

    .line 4827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoinj/wallet/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4790
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4795
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5380
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 5422
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 4796
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4797
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 4790
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 4798
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5380
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 5422
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 4798
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    .prologue
    .line 4790
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7602(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .prologue
    .line 4790
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p1
.end method

.method static synthetic access$7702(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # I

    .prologue
    .line 4790
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    return p1
.end method

.method static synthetic access$7802(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4790
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$7902(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # I

    .prologue
    .line 4790
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    return p1
.end method

.method static synthetic access$8002(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # J

    .prologue
    .line 4790
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    return-wide p1
.end method

.method static synthetic access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    .line 4790
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 4790
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8202(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .prologue
    .line 4790
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p1
.end method

.method static synthetic access$8302(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p1, "x1"    # I

    .prologue
    .line 4790
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    return p1
.end method

.method static synthetic access$8400()Z
    .locals 1

    .prologue
    .line 4790
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .prologue
    .line 4802
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4905
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5372
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5373
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    .line 5374
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 5375
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    .line 5376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    .line 5377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    .line 5378
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5379
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5521
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->access$7200()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    .line 5524
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5501
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5507
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5471
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5477
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5512
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5518
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5491
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5497
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5481
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5487
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method


# virtual methods
.method public getAppearedAtHeight()I
    .locals 1

    .prologue
    .line 5236
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    return v0
.end method

.method public getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5345
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public getBroadcastByCount()I
    .locals 1

    .prologue
    .line 5339
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBroadcastByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5326
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastByOrBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5352
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    return-object v0
.end method

.method public getBroadcastByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5333
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .prologue
    .line 4806
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 5290
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    return v0
.end method

.method public getOverridingTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5264
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4927
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5424
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    .line 5425
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 5458
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 5427
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 5428
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 5429
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5432
    :cond_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 5433
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5436
    :cond_2
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 5437
    const/4 v3, 0x3

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5440
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 5441
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5444
    :cond_4
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 5445
    const/4 v3, 0x5

    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5448
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 5449
    const/4 v4, 0x6

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5452
    :cond_6
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 5453
    const/4 v3, 0x7

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5456
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 5457
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedSerializedSize:I

    move v2, v1

    .line 5458
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .prologue
    .line 5368
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .prologue
    .line 5212
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 4813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWorkDone()J
    .locals 2

    .prologue
    .line 5316
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    return-wide v0
.end method

.method public hasAppearedAtHeight()Z
    .locals 2

    .prologue
    .line 5226
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasDepth()Z
    .locals 2

    .prologue
    .line 5279
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasOverridingTransaction()Z
    .locals 2

    .prologue
    .line 5252
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 5362
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5202
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWorkDone()Z
    .locals 2

    .prologue
    .line 5305
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

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
    .line 4910
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5382
    iget-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    .line 5383
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 5392
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 5383
    goto :goto_0

    .line 5385
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastByCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5386
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5387
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    move v2, v3

    .line 5388
    goto :goto_0

    .line 5385
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5391
    :cond_3
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4790
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5522
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5531
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 5532
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4790
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5526
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

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
    .line 5465
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5397
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSerializedSize()I

    .line 5398
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 5399
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5401
    :cond_0
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 5402
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->appearedAtHeight_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5404
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 5405
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5407
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 5408
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->depth_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5410
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 5411
    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->workDone_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5413
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5414
    const/4 v2, 0x6

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->broadcastBy_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5416
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 5417
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5419
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5420
    return-void
.end method
