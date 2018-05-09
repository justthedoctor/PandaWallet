.class public final Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredClientPaymentChannels"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    }
.end annotation


# static fields
.field public static final CHANNELS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

.field private static final serialVersionUID:J


# instance fields
.field private channels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$1;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$1;-><init>()V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    .line 698
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Z)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    .line 699
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->initFields()V

    .line 700
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
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 74
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 183
    iput-byte v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 207
    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 75
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->initFields()V

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 80
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 81
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 83
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 88
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :sswitch_0
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 95
    :sswitch_1
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v7, :cond_1

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 97
    or-int/lit8 v2, v2, 0x1

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    sget-object v6, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 111
    iget-object v6, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 113
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 114
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->makeExtensionsImmutable()V

    throw v5

    .line 110
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v7, :cond_4

    .line 111
    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 113
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 114
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->makeExtensionsImmutable()V

    .line 116
    return-void

    .line 106
    :catch_1
    move-exception v1

    .line 107
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

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/bitcoin/protocols/channels/ClientState$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 51
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 183
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 207
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ClientState$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 183
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 207
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 54
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 182
    return-void
.end method

.method public static newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->access$300()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    .prologue
    .line 285
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method


# virtual methods
.method public getChannels(I)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public getChannelsCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelsOrBuilder(I)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;

    return-object v0
.end method

.method public getChannelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 209
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 210
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 219
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 212
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 214
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 218
    iput v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    move v2, v1

    .line 219
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    iget-byte v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 186
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 195
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 186
    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannelsCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannels(I)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    iput-byte v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    move v2, v3

    .line 191
    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_3
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 292
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V

    .line 293
    .local v0, "builder":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-static {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

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
    .line 226
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
    .line 200
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getSerializedSize()I

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 205
    return-void
.end method
