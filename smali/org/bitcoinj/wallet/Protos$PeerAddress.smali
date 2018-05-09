.class public final Lorg/bitcoinj/wallet/Protos$PeerAddress;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    }
.end annotation


# static fields
.field public static final IP_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final SERVICES_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ipAddress_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private port_:I

.field private services_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 589
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .line 590
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->initFields()V

    .line 591
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

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 203
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 239
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 76
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->initFields()V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 81
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 82
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 84
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 89
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :sswitch_0
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 96
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 119
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->makeExtensionsImmutable()V

    throw v5

    .line 101
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 114
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 115
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

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 118
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 119
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->makeExtensionsImmutable()V

    .line 121
    return-void

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 52
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 203
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 239
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 53
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 203
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 239
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 55
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lorg/bitcoinj/wallet/Protos$PeerAddress;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$802(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    return p1
.end method

.method static synthetic access$902(Lorg/bitcoinj/wallet/Protos$PeerAddress;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    .line 202
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->access$300()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .prologue
    .line 325
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public getIpAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 241
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 242
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 259
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 244
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 245
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 246
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 250
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 253
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 254
    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 259
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getServices()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

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

.method public hasServices()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

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
    .line 129
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const-class v2, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 206
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 221
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasIpAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasPort()Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasServices()Z

    move-result v3

    if-nez v3, :cond_4

    .line 217
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    goto :goto_1

    .line 220
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    move v2, v1

    .line 221
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 332
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 333
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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
    .line 266
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

    .line 226
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getSerializedSize()I

    .line 227
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 230
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 231
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 233
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 234
    const/4 v0, 0x3

    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 236
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 237
    return-void
.end method
