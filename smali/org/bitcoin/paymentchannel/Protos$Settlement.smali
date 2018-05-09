.class public final Lorg/bitcoin/paymentchannel/Protos$Settlement;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settlement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7266
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    .line 7603
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 7604
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->initFields()V

    .line 7605
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

    .line 7217
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7311
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 7333
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 7218
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->initFields()V

    .line 7219
    const/4 v2, 0x0

    .line 7220
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 7223
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 7224
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7225
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7226
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 7231
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7233
    const/4 v0, 0x1

    goto :goto_0

    .line 7228
    :sswitch_0
    const/4 v0, 0x1

    .line 7229
    goto :goto_0

    .line 7238
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    .line 7239
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7244
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 7245
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7250
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7251
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->makeExtensionsImmutable()V

    throw v5

    .line 7250
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7251
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->makeExtensionsImmutable()V

    .line 7253
    return-void

    .line 7246
    :catch_1
    move-exception v1

    .line 7247
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

    .line 7226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
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
    .line 7189
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7194
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 7311
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 7333
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 7195
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7196
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 7189
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 7197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7311
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 7333
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 7197
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$9500()Z
    .locals 1

    .prologue
    .line 7189
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9702(Lorg/bitcoin/paymentchannel/Protos$Settlement;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 7189
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9802(Lorg/bitcoin/paymentchannel/Protos$Settlement;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .param p1, "x1"    # I

    .prologue
    .line 7189
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .prologue
    .line 7201
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7256
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7309
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    .line 7310
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7408
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->access$9300()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .prologue
    .line 7411
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7388
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7394
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7358
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7364
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7399
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7405
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7378
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7384
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7368
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7374
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .prologue
    .line 7205
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7278
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7335
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 7336
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7345
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 7338
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 7339
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7340
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7343
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 7344
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    move v1, v0

    .line 7345
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7305
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 7212
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasTx()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7294
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

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
    .line 7261
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7313
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 7314
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 7321
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 7314
    goto :goto_0

    .line 7316
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->hasTx()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7317
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    move v1, v2

    .line 7318
    goto :goto_0

    .line 7320
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7189
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7409
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7418
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 7419
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 7413
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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
    .line 7352
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7326
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getSerializedSize()I

    .line 7327
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7328
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7330
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7331
    return-void
.end method
