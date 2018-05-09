.class public final Lorg/bitcoinj/wallet/Protos$TransactionOutput;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_BYTES_FIELD_NUMBER:I = 0x2

.field public static final SPENT_BY_TRANSACTION_HASH_FIELD_NUMBER:I = 0x3

.field public static final SPENT_BY_TRANSACTION_INDEX_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionHash_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionIndex_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4048
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 4636
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .line 4637
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->initFields()V

    .line 4638
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

    .line 3984
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4158
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 4193
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 3985
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->initFields()V

    .line 3986
    const/4 v2, 0x0

    .line 3987
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3990
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3991
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3992
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3993
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3998
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4000
    const/4 v0, 0x1

    goto :goto_0

    .line 3995
    :sswitch_0
    const/4 v0, 0x1

    .line 3996
    goto :goto_0

    .line 4005
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 4006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4026
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 4027
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4032
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4033
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->makeExtensionsImmutable()V

    throw v5

    .line 4010
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 4011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4028
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 4029
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

    .line 4015
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 4016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4020
    :sswitch_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 4021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 4032
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4033
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->makeExtensionsImmutable()V

    .line 4035
    return-void

    .line 3993
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 3956
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3961
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4158
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 4193
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 3962
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3963
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 3956
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4158
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 4193
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 3964
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6200()Z
    .locals 1

    .prologue
    .line 3956
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6402(Lorg/bitcoinj/wallet/Protos$TransactionOutput;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .param p1, "x1"    # J

    .prologue
    .line 3956
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    return-wide p1
.end method

.method static synthetic access$6502(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3956
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6602(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3956
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6702(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .param p1, "x1"    # I

    .prologue
    .line 3956
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    return p1
.end method

.method static synthetic access$6802(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .param p1, "x1"    # I

    .prologue
    .line 3956
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .prologue
    .line 3968
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4038
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 4153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    .line 4154
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 4155
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 4156
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    .line 4157
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4280
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->access$6000()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .prologue
    .line 4283
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4260
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4266
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4230
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4236
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4271
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4277
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4250
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4256
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4240
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4246
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .prologue
    .line 3972
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4060
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4101
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4195
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 4196
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4217
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4198
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4199
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 4200
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4203
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 4204
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4207
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 4208
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4211
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4212
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4215
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4216
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    move v1, v0

    .line 4217
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSpentByTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4125
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionIndex()I
    .locals 1

    .prologue
    .line 4149
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3979
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 4077
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .prologue
    .line 4091
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasSpentByTransactionHash()Z
    .locals 2

    .prologue
    .line 4115
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasSpentByTransactionIndex()Z
    .locals 2

    .prologue
    .line 4139
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4071
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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
    .line 4043
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4160
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 4161
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 4172
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4161
    goto :goto_0

    .line 4163
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4164
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    move v1, v2

    .line 4165
    goto :goto_0

    .line 4167
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasScriptBytes()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4168
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    move v1, v2

    .line 4169
    goto :goto_0

    .line 4171
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3956
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4281
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4290
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 4291
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3956
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .prologue
    .line 4285
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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
    .line 4224
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

    .line 4177
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSerializedSize()I

    .line 4178
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 4179
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4181
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 4182
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4184
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 4185
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4187
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4188
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4190
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4191
    return-void
.end method
