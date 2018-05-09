.class public final Lorg/bitcoin/paymentchannel/Protos$Initiate;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initiate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    }
.end annotation


# static fields
.field public static final EXPIRE_TIME_SECS_FIELD_NUMBER:I = 0x3

.field public static final MIN_ACCEPTED_CHANNEL_SIZE_FIELD_NUMBER:I = 0x2

.field public static final MIN_PAYMENT_FIELD_NUMBER:I = 0x4

.field public static final MULTISIG_KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expireTimeSecs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minAcceptedChannelSize_:J

.field private minPayment_:J

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3949
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    .line 4674
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 4675
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->initFields()V

    .line 4676
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

    .line 3885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4099
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4142
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 3886
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->initFields()V

    .line 3887
    const/4 v2, 0x0

    .line 3888
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3891
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3892
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3893
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3894
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3899
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3901
    const/4 v0, 0x1

    goto :goto_0

    .line 3896
    :sswitch_0
    const/4 v0, 0x1

    .line 3897
    goto :goto_0

    .line 3906
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 3907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3927
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3928
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3933
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3934
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->makeExtensionsImmutable()V

    throw v5

    .line 3911
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 3912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3929
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 3930
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

    .line 3916
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 3917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    goto :goto_0

    .line 3921
    :sswitch_4
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 3922
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3933
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3934
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->makeExtensionsImmutable()V

    .line 3936
    return-void

    .line 3894
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 3857
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3862
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4099
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4142
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 3863
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3864
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 3857
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3865
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4099
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4142
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 3865
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 3857
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4602(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3857
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4702(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p1, "x1"    # J

    .prologue
    .line 3857
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    return-wide p1
.end method

.method static synthetic access$4802(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p1, "x1"    # J

    .prologue
    .line 3857
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$4902(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p1, "x1"    # J

    .prologue
    .line 3857
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lorg/bitcoin/paymentchannel/Protos$Initiate;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .param p1, "x1"    # I

    .prologue
    .line 3857
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .prologue
    .line 3869
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3939
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4094
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4095
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    .line 4096
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    .line 4097
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    .line 4098
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4229
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->access$4200()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .prologue
    .line 4232
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4209
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4215
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4179
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4185
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4220
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4226
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4199
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4205
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4189
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4195
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .prologue
    .line 3873
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getExpireTimeSecs()J
    .locals 2

    .prologue
    .line 4056
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    return-wide v0
.end method

.method public getMinAcceptedChannelSize()J
    .locals 2

    .prologue
    .line 4020
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    return-wide v0
.end method

.method public getMinPayment()J
    .locals 2

    .prologue
    .line 4090
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    return-wide v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3990
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3961
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4144
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 4145
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4166
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4147
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4148
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4149
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4152
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4153
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4156
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4157
    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4160
    :cond_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4161
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4164
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4165
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    move v1, v0

    .line 4166
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3880
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExpireTimeSecs()Z
    .locals 2

    .prologue
    .line 4040
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMinAcceptedChannelSize()Z
    .locals 2

    .prologue
    .line 4007
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMinPayment()Z
    .locals 2

    .prologue
    .line 4075
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMultisigKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3978
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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
    .line 3944
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4101
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4102
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 4121
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 4102
    goto :goto_0

    .line 4104
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMultisigKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4105
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    goto :goto_1

    .line 4108
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinAcceptedChannelSize()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4109
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    goto :goto_1

    .line 4112
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasExpireTimeSecs()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4113
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    goto :goto_1

    .line 4116
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinPayment()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4117
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    goto :goto_1

    .line 4120
    :cond_5
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    move v2, v1

    .line 4121
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3857
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4230
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4239
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 4240
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 4234
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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
    .line 4173
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

    .line 4126
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getSerializedSize()I

    .line 4127
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4128
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4130
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4131
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4133
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4134
    const/4 v0, 0x3

    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4136
    :cond_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4137
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4139
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4140
    return-void
.end method
